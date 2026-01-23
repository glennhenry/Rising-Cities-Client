package net.bigpoint.cityrama.controller.server.messages.mastery.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageMasteryBonusUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageMasteryBonusUpdateCommand()
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
            _loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryBonus = ConfigFactory.getMasterBonusDTO(_loc2_.json.mb);
            facade.sendNotification(ApplicationNotificationConstants.MASTERY_BONUS_UPDATE);
            if(_loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup == 5)
            {
               _loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge = null;
               facade.sendNotification(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
            }
         }
      }
   }
}

