package net.bigpoint.cityrama.controller.server.messages.mastery.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageMasteryChallengeUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageMasteryChallengeUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = super.facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ResidentialFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as ResidentialFieldObject;
         if(_loc4_ != null)
         {
            _loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge = new MasteryChallengeDTO(_loc2_.json.m);
            facade.sendNotification(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
            _loc4_.invalidateIconStateManager();
         }
      }
   }
}

