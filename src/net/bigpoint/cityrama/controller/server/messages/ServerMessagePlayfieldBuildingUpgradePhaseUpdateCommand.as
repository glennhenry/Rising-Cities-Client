package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc6_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(_loc2_.json.b != null)
         {
            var _loc8_:BuildingDTO = new BuildingDTO(_loc2_.json.b,_loc5_.getConfigPlayfieldItemById(_loc2_.json.b.c));
            var _loc9_:MasteryBonusDTO = _loc4_.billboardObjectVo.buildingDTO.currentMasteryBonus;
            _loc4_.billboardObjectVo.buildingDTO = null;
            _loc4_.billboardObjectVo.configPlayfieldItemVo = _loc5_.getConfigPlayfieldItemById(_loc2_.json.b.c);
            PlayfieldObjectsProxy.addIconOffsets(_loc4_.billboardObjectVo,_loc6_);
         }
         if(_loc4_ is IEstablishedManagerImplementation)
         {
            (_loc4_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
         }
         if(_loc4_ is IBuildUpManagerImplementation)
         {
            (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
         }
         if(_loc4_ is ShopFieldObject)
         {
            _loc7_.removeShop(_loc4_ as ShopFieldObject);
            _loc7_.addShop(_loc4_ as ShopFieldObject);
         }
         _loc4_.billboardObjectVo.invalidate();
         _loc4_.invalidateIconStateManager(false);
         sendNotification(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
      }
   }
}

