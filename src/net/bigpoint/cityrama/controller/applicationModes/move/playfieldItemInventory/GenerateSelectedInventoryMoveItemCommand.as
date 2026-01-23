package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToPlaceInventoryMoveItemCommand;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GenerateSelectedInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      private var _gridProxy:GridProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _preLoadServiceProxy:FilePreloadServiceProxy;
      
      private var _runtimeLoadServiceProxy:FileRuntimeLoadServiceProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _restrictionProxy:RestrictionProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _moveProxy:FieldMoveProxy;
      
      public function GenerateSelectedInventoryMoveItemCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:BillboardObject = null;
         var _loc4_:ClientFieldObject = null;
         var _loc5_:BillboardObject = null;
         var _loc2_:InventoryPlayfieldItemVo = param1.getBody() as InventoryPlayfieldItemVo;
         if(_loc2_)
         {
            this.retrieveProxies();
            facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
            facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
            for each(_loc3_ in this._playfieldObjectsProxy.billboardList)
            {
               _loc3_.changeInteractionstate(false);
            }
            for each(_loc4_ in this._playfieldObjectsProxy.clientFieldObjectsList)
            {
               _loc4_.changeInteractionstate(true);
            }
            _loc5_ = this.createFakeGameObject(_loc2_);
            _loc5_.expandHitzone();
            PlayfieldObjectsProxy.addIconOffsets(_loc5_.billboardObjectVo,this._preLoadServiceProxy);
            if(this._restrictionProxy.getAllRestrictionsForItem(_loc5_.billboardObjectVo.configPlayfieldItemVo).length > 0)
            {
               this._restrictionProxy.restrictionGridSource = this._restrictionProxy.getAllRestrictionsForItem(_loc5_.billboardObjectVo.configPlayfieldItemVo);
               this._restrictionProxy.restrictionGridVisibility = true;
            }
            _loc5_.presentation.visible = true;
            this._gridProxy.snapping = false;
            this._gridProxy.setItemSize(_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels));
            this._gridProxy.tileGridVisiblity = true;
            _loc5_.updateIndex(_loc5_.billboardObjectVo.matrix3dCoordinates.x,_loc5_.billboardObjectVo.matrix3dCoordinates.y);
            _loc5_.moveTo(_loc5_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc5_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
            this._moveProxy.objectToMove = _loc5_;
            this._moveProxy.originalPosition = new Cuboid();
            sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc5_);
            _loc5_.billboardObjectVo.hideIconsForMoveMode = true;
            this.addNeedIcons(_loc5_);
            _loc5_.changeInteractionstate(true);
            _loc5_.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this._playfieldObjectsProxy.onInteractiveClick);
            facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToPlaceInventoryMoveItemCommand);
         }
      }
      
      private function createFakeGameObject(param1:InventoryPlayfieldItemVo) : BillboardObject
      {
         var _loc2_:Number = Math.round(this._playfieldProxy.mouseMatrixPoint.x - param1.configItem.sizeX / 2);
         var _loc3_:Number = Math.round(this._playfieldProxy.mouseMatrixPoint.y - param1.configItem.sizeY / 2);
         var _loc4_:Number = VectorUtilities.getMinValue(param1.configItem.zLevels);
         var _loc5_:Cuboid = new Cuboid(_loc2_,_loc3_,_loc4_,param1.configItem.sizeX,param1.configItem.sizeY,param1.configItem.zLevels.length);
         var _loc6_:IGameObjectVo = ServerTagToClassSelector.getFieldObjectVoClassByTags(param1.configItem,_loc5_,this._timerProxy,this._configProxy,this._playfieldProxy);
         if(_loc6_ is BillboardObjectVo && Boolean(param1.buildingDTO))
         {
            BillboardObjectVo(_loc6_).buildingDTO = param1.buildingDTO;
         }
         else if(_loc6_ is DecorationFieldObjectVo && Boolean(param1.decorationVo))
         {
            DecorationFieldObjectVo(_loc6_).decorationVo = param1.decorationVo;
         }
         var _loc7_:GameObjectFactory = new GameObjectFactory(this._preLoadServiceProxy.service,this._runtimeLoadServiceProxy.service,this._configProxy.config.tags);
         return _loc7_.getBillboardObject(_loc6_ as BillboardObjectVo);
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         if(param1 is ShopFieldObject || param1 is ResidentialFieldObject)
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,{
               "vo":param1.billboardObjectVo,
               "rollOver":false
            });
         }
      }
      
      private function retrieveProxies() : void
      {
         this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._preLoadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         this._runtimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._moveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
      }
   }
}

