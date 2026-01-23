package net.bigpoint.cityrama.controller.departmentBook
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DeactivateEmergencyFeatureCommand extends SimpleCommand implements ICommand
   {
      
      public function DeactivateEmergencyFeatureCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc6_:MessageVo = null;
         var _loc7_:InfrastructureBuildingFieldObject = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         var _loc4_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         for each(_loc7_ in _loc2_.infrastructureBuildingList)
         {
            _loc4_.removeObject(_loc7_.emergencyFieldObjectVo);
            _loc5_ = new Object();
            _loc5_.pid = _loc7_.billboardObjectVo.buildingDTO.id;
            _loc6_ = _loc3_.createMessage(_loc5_,ServerMessageConstants.MOVE_PLAYFIELDITEM_TO_INVENTORY);
            _loc3_.sendMessage(_loc6_);
         }
      }
   }
}

