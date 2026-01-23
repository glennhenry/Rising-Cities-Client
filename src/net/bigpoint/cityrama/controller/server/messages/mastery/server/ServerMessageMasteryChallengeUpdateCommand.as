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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = super.facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ResidentialFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as ResidentialFieldObject;
         if(_loc4_ != null)
         {
            if(_loc5_ || Boolean(param1))
            {
               _loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge = new MasteryChallengeDTO(_loc2_.json.m);
               if(!(_loc6_ && Boolean(this)))
               {
                  facade.sendNotification(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
                  if(_loc5_)
                  {
                     addr00aa:
                     _loc4_.invalidateIconStateManager();
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr00aa);
         }
         addr00b0:
      }
   }
}

