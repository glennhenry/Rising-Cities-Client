package net.bigpoint.cityrama.controller.server.messages
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingConstructionFinishedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingConstructionFinishedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:ResidentialFieldObject = null;
         var _loc6_:ResidentialFieldObjectVo = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         if(_loc4_ != null)
         {
            if(_loc4_ is ResidentialFieldObject)
            {
               _loc5_ = _loc4_ as ResidentialFieldObject;
               _loc6_ = ConfigFactory.buildResidentialFieldObjectVo(_loc5_.residentialFieldObjectVo);
               _loc5_.residentialFieldObjectVo.residentialNeeds = _loc6_.residentialNeeds;
            }
            _loc4_.billboardObjectVo.informationFloaterPhase = _loc4_.billboardObjectVo.activePhases[0].config;
            if(_loc4_ is ShopFieldObject)
            {
               _loc4_.billboardObjectVo.informationFloaterPhase = null;
               _loc4_.billboardObjectVo.informationFloaterCustomText = ResourceManager.getInstance().getString("rcl.misc.infieldfloaterCustomText" + "","rcl.misc.infieldfloaterCustomText.needBuildingOperation" + "");
            }
            _loc4_.billboardObjectVo.activePhases = new Vector.<PhaseDTO>();
            _loc4_.invalidateEstablishedManager();
            if(_loc4_ is IBuildUpManagerImplementation)
            {
               (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
            }
            _loc4_.billboardObjectVo.userInteractionLocked = false;
            _loc4_.invalidateIconStateManager();
            if(_loc4_ is IEmergencyInfrastructure)
            {
               var _loc7_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
               _loc7_.addObject((_loc4_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
            }
         }
         sendNotification(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
      }
   }
}

