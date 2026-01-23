package net.bigpoint.cityrama.controller.server.messages.education
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerMediator;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.ProfessionalTraitUnlockMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalTraitSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageProfessionalTraitSuccessCommand()
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:PopupSettingsVo = null;
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc4_:ProfessionalTraitDTO = new ProfessionalTraitDTO(_loc3_.json.t);
         var _loc5_:ProfessionalTraitUnlockMiniLayerVo = _loc2_.professionalTraitMiniLayerVo(_loc4_.professionalId,_loc4_.configId);
         if(_loc5_)
         {
            _loc6_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
            _loc6_.modal = true;
            if(_loc8_)
            {
               _loc6_.viewClass = ProfessionalTraitUnlockMiniLayer;
               if(_loc8_)
               {
                  _loc6_.mediatorClass = ProfessionalTraitUnlockMiniLayerMediator;
                  if(!_loc7_)
                  {
                     addr00b0:
                     _loc6_.mediatorName = ProfessionalTraitUnlockMiniLayerMediator.NAME + getTimer();
                     if(!_loc7_)
                     {
                        addr00c8:
                        _loc6_.data = _loc5_;
                        if(_loc8_)
                        {
                           addr00d4:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr00b0);
            }
            §§goto(addr00c8);
         }
         addr00e0:
      }
   }
}

