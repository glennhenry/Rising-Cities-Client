package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MoveBlockedByEmergencyMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMoveBlockedByEmergencyMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMoveBlockedByEmergencyMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
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
         if(!_loc3_)
         {
            _loc2_.noModeReset = true;
            if(!_loc3_)
            {
               _loc2_.modal = true;
               if(_loc4_)
               {
                  _loc2_.viewClass = QueryMiniLayer;
                  if(!_loc3_)
                  {
                     addr0053:
                     _loc2_.mediatorClass = MoveBlockedByEmergencyMiniLayerMediator;
                     if(_loc4_ || Boolean(this))
                     {
                        addr0075:
                        _loc2_.mediatorName = MoveBlockedByEmergencyMiniLayerMediator.NAME;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           _loc2_.modal = true;
                           if(_loc4_)
                           {
                              addr0096:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr0096);
                  }
               }
               addr00a1:
               return;
            }
            §§goto(addr0075);
         }
         §§goto(addr0053);
      }
   }
}

