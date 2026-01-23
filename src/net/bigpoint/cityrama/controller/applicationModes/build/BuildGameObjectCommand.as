package net.bigpoint.cityrama.controller.applicationModes.build
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BuildGameObjectCommand extends SimpleCommand
   {
      
      public function BuildGameObjectCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:BillboardObjectVo = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:Number = NaN;
         var _loc2_:IGameObjectVo = param1.getBody().obj as IGameObjectVo;
         var _loc3_:Number = Number(param1.getBody().priceRC);
         var _loc4_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
         var _loc5_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc2_ is BillboardObjectVo)
         {
            _loc7_ = _loc2_ as BillboardObjectVo;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_ITEM_CREATE,new PlayfieldItemCreateVo(_loc7_,_loc4_.buildAndBuyPermission));
            _loc6_.addGameObjectByData(_loc7_);
            _loc8_ = BillboardObject(_loc6_.getObjectByVo(_loc7_));
            TweenMax.to(_loc4_.billboardObjectToAdd.presentation,0,{"colorTransform":{
               "tint":0,
               "tintAmount":0
            }});
            _loc8_.shrinkHitzone();
            if(_loc8_ is ShopFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
            }
            else if(_loc8_ is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
            }
            if(_loc8_ is IBuildUpManagerImplementation)
            {
               IBuildUpManagerImplementation(_loc8_).invalidateBuildUpManager();
            }
            if(_loc5_.isBaseViewEnabled)
            {
               _loc5_.changeBaseViewForSingleBillboard(_loc8_);
            }
            _loc9_ = _loc8_.billboardObjectVo.informationFloaterPhase;
            if(_loc4_.buildAndBuyPermission)
            {
               _loc10_ = _loc3_;
               _loc8_.billboardObjectVo.informationFloaterPhase = _loc9_ = this.removeCCAndAddRCCostsToPhase(_loc9_,_loc10_);
            }
            _loc8_.invalidateInformationFloaterManager();
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               if(_loc9_ != null)
               {
                  facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                     "tO":_loc8_,
                     "cP":_loc9_
                  });
               }
            }
            sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc4_.billboardObjectToAdd);
         }
      }
      
      private function removeCCAndAddRCCostsToPhase(param1:ConfigPhaseDTO, param2:Number) : ConfigPhaseDTO
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:GameConfigProxy = null;
         var _loc6_:Object = null;
         var _loc3_:ConfigPhaseDTO = param1.clone();
         for each(_loc4_ in _loc3_.listEntryOutputs)
         {
            if(_loc4_.resourceConfig != null && _loc4_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
            {
               _loc3_.listEntryOutputs.splice(_loc3_.listEntryOutputs.indexOf(_loc4_),1);
            }
         }
         _loc5_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         _loc6_ = new Object();
         _loc6_.t = ServerOutputConstants.RESOURCE;
         _loc6_.cid = _loc5_.config.resourceIds[ServerResConst.RESOURCE_REALCURRENCY];
         _loc6_.o = -param2;
         _loc4_ = new ConfigOutputDTO(_loc6_);
         _loc4_.resourceConfig = _loc5_.config.resources[_loc6_.cid];
         _loc3_.listEntryOutputs.push(_loc4_);
         return _loc3_;
      }
   }
}

