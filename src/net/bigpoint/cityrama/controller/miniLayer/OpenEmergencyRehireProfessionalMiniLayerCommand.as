package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyRehireProfessionalMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyRehireProfessionalMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyRehireProfessionalMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyRehireProfessionalMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:EmergencyRehireProfessionalMiniLayerVo = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(_loc6_)
         {
            if(!isNaN(_loc3_))
            {
               addr004d:
               _loc4_ = _loc2_.getEmergencyRehireProfessionalVo(_loc3_);
               if(_loc4_)
               {
                  _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                  _loc5_.modal = true;
                  if(!_loc7_)
                  {
                     _loc5_.viewClass = EmergencyRehireProfessionalMiniLayer;
                     if(_loc6_)
                     {
                        _loc5_.mediatorClass = EmergencyRehireProfessionalMiniLayerMediator;
                        if(!_loc7_)
                        {
                           _loc5_.mediatorName = EmergencyRehireProfessionalMiniLayerMediator.NAME;
                           addr009f:
                           if(!_loc7_)
                           {
                              addr00bc:
                              _loc5_.data = _loc4_;
                              if(_loc6_)
                              {
                                 §§goto(addr00c8);
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00bc);
                     }
                     addr00c8:
                     _loc5_.modal = true;
                     if(_loc6_ || Boolean(param1))
                     {
                        addr00dc:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr009f);
               }
            }
            addr00e8:
            return;
         }
         §§goto(addr004d);
      }
   }
}

