package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.NoPermissionsLeftMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.NoPermissionsLeftMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenNoPermissionsLeftMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenNoPermissionsLeftMiniLayerCommand()
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.modal = true;
            if(!_loc3_)
            {
               _loc2_.viewClass = NoPermissionsLeftMiniLayer;
               if(!(_loc3_ && Boolean(param1)))
               {
                  _loc2_.mediatorClass = NoPermissionsLeftMiniLayerMediator;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr0086);
               }
               addr0078:
               _loc2_.mediatorName = NoPermissionsLeftMiniLayerMediator.NAME;
               if(!_loc3_)
               {
                  addr0086:
                  _loc2_.noModeReset = true;
                  if(!_loc3_)
                  {
                     _loc2_.data = param1.getBody();
                     if(!_loc3_)
                     {
                        addr009c:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr009c);
      }
   }
}

