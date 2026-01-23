package net.bigpoint.cityrama.controller.quest
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.quest.WelcomeScreenMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.WelcomeScreen;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenIntroductionLayerCommand extends SimpleCommand
   {
      
      public function OpenIntroductionLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:String = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:Array = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         var _loc3_:Vector.<String> = new <String>["gui_popups_paperPopup","gui_popups_questPopup"];
         for each(_loc4_ in _loc3_)
         {
            if(!_loc2_.libAllReadyLoaded(_loc4_))
            {
               _loc6_ = [_loc4_];
               _loc2_.checkSWFArrayLoaded(_loc6_,"dfsacfasd");
               TweenMax.delayedCall(0.5,sendNotification,[param1.getName(),param1.getBody()]);
               return;
            }
         }
         _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc5_.modal = true;
         _loc5_.viewClass = WelcomeScreen;
         _loc5_.mediatorClass = WelcomeScreenMediator;
         _loc5_.mediatorName = WelcomeScreenMediator.NAME;
         _loc5_.data = param1.getBody();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
      }
   }
}

