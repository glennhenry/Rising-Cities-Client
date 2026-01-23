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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = super.facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ResidentialFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as ResidentialFieldObject;
         if(_loc4_ != null)
         {
            if(!_loc5_)
            {
               §§push(_loc4_.residentialFieldObjectVo);
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§pop().buildingDTO.currentMasteryBonus = ConfigFactory.getMasterBonusDTO(_loc2_.json.mb);
                  if(_loc6_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.MASTERY_BONUS_UPDATE);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(_loc4_.residentialFieldObjectVo);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr00c6:
                           if(§§pop().buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup == 5)
                           {
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 addr00e8:
                                 _loc4_.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge = null;
                                 addr00e3:
                                 if(!_loc5_)
                                 {
                                    addr00f5:
                                    facade.sendNotification(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
                                 }
                                 §§goto(addr00ff);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr00c6);
            }
            §§goto(addr00f5);
         }
         addr00ff:
      }
   }
}

