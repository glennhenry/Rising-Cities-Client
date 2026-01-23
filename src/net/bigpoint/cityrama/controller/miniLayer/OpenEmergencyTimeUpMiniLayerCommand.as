package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyTimeUpMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyTimeUpMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyTimeUpMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyTimeUpMiniLayerCommand()
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:EmergencyTimeUpMiniLayerVo = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:EmergencyDTO = param1.getBody() as EmergencyDTO;
         if(_loc7_)
         {
            if(_loc3_)
            {
               addr004c:
               _loc4_ = _loc2_.getEmergencyTimeUpVo(_loc3_);
               if(_loc4_)
               {
                  _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                  _loc5_.modal = true;
                  if(_loc7_)
                  {
                     _loc5_.viewClass = EmergencyTimeUpMiniLayer;
                     if(!_loc6_)
                     {
                        _loc5_.mediatorClass = EmergencyTimeUpMiniLayerMediator;
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           _loc5_.mediatorName = EmergencyTimeUpMiniLayerMediator.NAME;
                           if(_loc7_)
                           {
                              _loc5_.data = _loc4_;
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00e2);
                           }
                           §§goto(addr00d6);
                        }
                     }
                     §§goto(addr00e2);
                  }
                  addr00d6:
                  _loc5_.modal = true;
                  if(!_loc6_)
                  {
                     addr00e2:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                  }
                  §§goto(addr00ee);
               }
            }
            addr00ee:
            return;
         }
         §§goto(addr004c);
      }
   }
}

