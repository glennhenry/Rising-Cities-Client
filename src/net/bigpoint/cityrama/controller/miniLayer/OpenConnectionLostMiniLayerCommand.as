package net.bigpoint.cityrama.controller.miniLayer
{
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ConnectionLostMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConnectionLostMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenConnectionLostMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:KeyboardInputActionProxy = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ != null)
            {
               if(_loc5_ || Boolean(_loc2_))
               {
                  _loc2_.resetView();
               }
            }
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!_loc4_)
         {
            _loc3_.modal = true;
            if(!_loc4_)
            {
               _loc3_.viewClass = ConnectionLostMiniLayer;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc3_.mediatorClass = ConnectionLostMiniLayerMediator;
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§goto(addr00a2);
                  }
                  §§goto(addr00c7);
               }
               addr00a2:
               _loc3_.mediatorName = ConnectionLostMiniLayerMediator.NAME;
               if(_loc5_ || Boolean(_loc2_))
               {
                  addr00c7:
                  _loc3_.data = null;
                  if(!_loc4_)
                  {
                     addr00d1:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                     if(!_loc4_)
                     {
                        FlexGlobals.topLevelApplication.mainView.enabled = false;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr00d1);
      }
   }
}

