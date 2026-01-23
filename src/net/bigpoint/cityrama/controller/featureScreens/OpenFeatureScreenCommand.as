package net.bigpoint.cityrama.controller.featureScreens
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featureScreens.FeatureScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureScreenPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFeatureScreenCommand extends SimpleCommand
   {
      
      public function OpenFeatureScreenCommand()
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
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Object = param1.getBody();
         var _loc3_:String = _loc2_.feature;
         var _loc4_:Boolean = Boolean(_loc2_.quest);
         var _loc5_:FeatureScreenProxy = facade.retrieveProxy(FeatureScreenProxy.NAME) as FeatureScreenProxy;
         var _loc6_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         _loc6_.modal = true;
         if(!_loc9_)
         {
            _loc6_.viewClass = FeatureScreenPopup;
            if(_loc8_ || Boolean(param1))
            {
               _loc6_.mediatorClass = FeatureScreenMediator;
               if(_loc8_ || Boolean(param1))
               {
                  _loc6_.mediatorName = FeatureScreenMediator.NAME + getTimer();
                  if(_loc8_)
                  {
                     addr00a6:
                     §§push(_loc6_);
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().openedByUserAxn = §§pop();
                  }
               }
            }
            var _loc7_:Object = new Object();
            _loc7_.feature = _loc5_.getFeatureScreenVo(_loc3_);
            if(_loc8_ || Boolean(_loc2_))
            {
               _loc7_.quest = _loc4_;
               if(_loc8_ || Boolean(_loc2_))
               {
                  _loc6_.data = _loc7_;
                  if(!_loc9_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                  }
               }
            }
            return;
         }
         §§goto(addr00a6);
      }
   }
}

