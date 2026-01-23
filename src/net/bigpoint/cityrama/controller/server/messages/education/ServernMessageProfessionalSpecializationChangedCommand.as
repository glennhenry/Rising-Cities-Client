package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServernMessageProfessionalSpecializationChangedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServernMessageProfessionalSpecializationChangedCommand()
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
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:Number = Number(_loc2_.json.pid);
         var _loc6_:Number = Number(_loc2_.json.csi);
         var _loc7_:ProfessionalDTO = _loc3_.getProfessionalById(_loc5_);
         var _loc8_:ConfigProfessionalSpecializationDTO = _loc4_.config.professionalSpecializations[_loc6_];
         if(_loc9_ || Boolean(param1))
         {
            _loc7_.updateSpecialisation(_loc8_);
            if(!(_loc10_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.PROFESSIONALS_CHANGED);
            }
         }
      }
   }
}

