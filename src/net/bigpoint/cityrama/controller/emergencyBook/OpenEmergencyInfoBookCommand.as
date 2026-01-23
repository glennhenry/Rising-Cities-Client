package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencyBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyInfoBookCommand extends SimpleCommand
   {
      
      public function OpenEmergencyInfoBookCommand()
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
         var _loc2_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc6_ || Boolean(this))
         {
            _loc3_.modal = true;
            if(!_loc5_)
            {
               _loc3_.mediatorName = EmergencyBookMediator.NAME;
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  addr006b:
                  _loc3_.mediatorClass = EmergencyBookMediator;
                  if(!_loc5_)
                  {
                     addr0078:
                     _loc3_.viewClass = EmergencyBook;
                  }
               }
               var _loc4_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
               if(!_loc5_)
               {
                  _loc3_.data = _loc2_;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                  }
               }
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0078);
      }
   }
}

