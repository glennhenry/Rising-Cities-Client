package net.bigpoint.cityrama.controller.newsscreen
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.LocalStorage.vo.LocalStorageNewsscreenVO;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.newsscreen.NewsscreenLayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class NewsscreenCheckStartupCommand extends SimpleCommand implements ICommand
   {
      
      public function NewsscreenCheckStartupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:LocalStorageNewsscreenVO = null;
         var _loc7_:Date = null;
         var _loc8_:Date = null;
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc5_.userLevel >= 3)
         {
            for each(_loc6_ in _loc3_.userdata.viewedNewsscreens)
            {
               _loc7_ = new Date(_loc4_.userTimeStamp);
               _loc8_ = new Date(_loc6_.timestamp);
               if(_loc8_.date == _loc7_.date && _loc8_.getMonth() == _loc7_.getMonth() && _loc8_.getFullYear() == _loc7_.getFullYear() && !this.isEkomiUser())
               {
                  sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
                  return;
               }
            }
            _loc3_.userdata.viewedNewsscreens.push(new LocalStorageNewsscreenVO({"timestamp":_loc4_.userTimeStamp}));
            _loc3_.flush();
            this.openNewsscreen();
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
         }
      }
      
      private function openNewsscreen() : void
      {
         var _loc4_:NewsScreenSlideVo = null;
         var _loc5_:FileRuntimeLoadServiceDynamic = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc1_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         var _loc2_:NewsscreenPopupVo = _loc1_.getNewsscreenLayerVo();
         var _loc3_:Vector.<String> = new <String>["gui_popups_newsScreenPopup","gui_popups_paperPopup","gui_infield_gui_mainmenue"];
         for each(_loc4_ in _loc2_.slides)
         {
            _loc3_.push(_loc4_.gfxId.toString());
         }
         _loc5_ = FileRuntimeLoadServiceDynamic.getInstance();
         for each(_loc6_ in _loc3_)
         {
            if(!_loc5_.libAllReadyLoaded(_loc6_))
            {
               _loc7_ = [_loc6_];
               _loc5_.checkSWFArrayLoaded(_loc7_,"dfsacfasd");
               TweenMax.delayedCall(0.5,this.openNewsscreen);
               return;
            }
         }
         sendNotification(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP,true);
      }
      
      private function isEkomiUser() : Boolean
      {
         var _loc1_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         return _loc1_.isEkomiUser;
      }
   }
}

