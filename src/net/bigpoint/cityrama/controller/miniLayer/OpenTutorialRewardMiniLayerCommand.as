package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.TutorialRewardMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.TutorialRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.TutorialRewardMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenTutorialRewardMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenTutorialRewardMiniLayerCommand()
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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:TutorialRewardMiniLayerVo = param1.getBody() as TutorialRewardMiniLayerVo;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!_loc4_)
         {
            _loc3_.modal = true;
            if(!_loc4_)
            {
               _loc3_.viewClass = TutorialRewardMiniLayer;
               if(!_loc4_)
               {
                  _loc3_.mediatorClass = TutorialRewardMiniLayerMediator;
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc3_.mediatorName = TutorialRewardMiniLayerMediator.NAME;
                     if(_loc5_)
                     {
                        addr008b:
                        _loc3_.data = _loc2_;
                        if(_loc5_)
                        {
                           addr0095:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr008b);
               }
               addr00a0:
               return;
            }
         }
         §§goto(addr0095);
      }
   }
}

