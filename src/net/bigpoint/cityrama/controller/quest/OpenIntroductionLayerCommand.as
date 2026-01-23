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
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:Array = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         var _loc3_:Vector.<String> = new <String>["gui_popups_paperPopup","gui_popups_questPopup"];
         var _loc7_:int = 0;
         var _loc8_:* = _loc3_;
         while(true)
         {
            if(§§hasnext(_loc8_,_loc7_))
            {
               §§push(§§nextvalue(_loc7_,_loc8_));
               if(!(_loc10_ && Boolean(this)))
               {
                  _loc4_ = §§pop();
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     if(_loc2_.libAllReadyLoaded(_loc4_))
                     {
                        continue;
                     }
                  }
                  §§push(_loc4_);
               }
               _loc6_ = null;
               if(_loc9_)
               {
                  _loc2_.checkSWFArrayLoaded(_loc6_,"dfsacfasd");
                  if(_loc10_)
                  {
                     break;
                  }
                  TweenMax.delayedCall(0.5,sendNotification,[param1.getName(),param1.getBody()]);
                  if(!(_loc10_ && Boolean(this)))
                  {
                     break;
                  }
               }
               continue;
            }
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc5_.modal = true;
            if(!_loc10_)
            {
               _loc5_.viewClass = WelcomeScreen;
               if(_loc9_ || Boolean(_loc3_))
               {
                  _loc5_.mediatorClass = WelcomeScreenMediator;
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     _loc5_.mediatorName = WelcomeScreenMediator.NAME;
                     if(_loc9_)
                     {
                        addr0148:
                        _loc5_.data = param1.getBody();
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           addr015e:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                        }
                        §§goto(addr016a);
                     }
                  }
                  §§goto(addr015e);
               }
               addr016a:
               return;
            }
            §§goto(addr0148);
         }
      }
   }
}

