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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc6_:LocalStorageNewsscreenVO = null;
         var _loc7_:Date = null;
         var _loc8_:Date = null;
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         §§push(_loc5_.userLevel);
         if(!(_loc11_ && Boolean(param1)))
         {
            if(§§pop() >= 3)
            {
               §§goto(addr008c);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
            }
            §§goto(addr0222);
         }
         addr008c:
         var _loc9_:int = 0;
         var _loc10_:* = _loc3_.userdata.viewedNewsscreens;
         while(true)
         {
            for each(_loc6_ in _loc10_)
            {
               _loc7_ = new Date(_loc4_.userTimeStamp);
               _loc8_ = new Date(_loc6_.timestamp);
               §§push(_loc8_.date == _loc7_.date);
               if(_loc12_ || Boolean(param1))
               {
                  var _temp_7:* = §§pop();
                  §§push(_temp_7);
                  §§push(_temp_7);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§pop();
                           if(!_loc11_)
                           {
                              §§push(_loc8_.getMonth() == _loc7_.getMonth());
                              if(_loc12_)
                              {
                                 addr0126:
                                 var _temp_9:* = §§pop();
                                 §§push(_temp_9);
                                 §§push(_temp_9);
                                 if(_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc12_ || Boolean(_loc2_))
                                       {
                                          addr013f:
                                          §§pop();
                                          if(_loc11_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          addr014e:
                                          §§push(_loc8_.getFullYear() == _loc7_.getFullYear());
                                          if(_loc12_ || Boolean(param1))
                                          {
                                             addr016b:
                                             var _temp_13:* = §§pop();
                                             addr016c:
                                             §§push(_temp_13);
                                             if(_temp_13)
                                             {
                                                if(!(_loc11_ && Boolean(param1)))
                                                {
                                                   §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr019a:
                                                      §§push(this.isEkomiUser());
                                                      if(!(_loc11_ && Boolean(_loc3_)))
                                                      {
                                                         addr0199:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
                                                         if(!_loc11_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr0199);
                                             }
                                          }
                                          §§goto(addr019a);
                                       }
                                    }
                                    §§goto(addr016b);
                                 }
                                 §§goto(addr016c);
                              }
                              §§goto(addr016b);
                           }
                           §§goto(addr014e);
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr0126);
                  }
                  §§goto(addr016c);
               }
               §§goto(addr0199);
            }
            if(!_loc11_)
            {
               _loc3_.userdata.viewedNewsscreens.push(new LocalStorageNewsscreenVO({"timestamp":_loc4_.userTimeStamp}));
               if(_loc12_)
               {
                  addr01f5:
                  _loc3_.flush();
                  if(_loc12_ || Boolean(this))
                  {
                     this.openNewsscreen();
                     if(_loc11_)
                     {
                     }
                  }
               }
               addr0222:
               return;
            }
            §§goto(addr01f5);
         }
      }
      
      private function openNewsscreen() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:NewsScreenSlideVo = null;
         var _loc5_:FileRuntimeLoadServiceDynamic = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc1_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         var _loc2_:NewsscreenPopupVo = _loc1_.getNewsscreenLayerVo();
         var _loc3_:Vector.<String> = new <String>["gui_popups_newsScreenPopup","gui_popups_paperPopup","gui_infield_gui_mainmenue"];
         for each(_loc4_ in _loc2_.slides)
         {
            if(_loc11_ || Boolean(_loc1_))
            {
               _loc3_.push(_loc4_.gfxId.toString());
            }
         }
         _loc5_ = FileRuntimeLoadServiceDynamic.getInstance();
         if(_loc11_ || Boolean(_loc1_))
         {
            var _loc8_:int = 0;
            if(!_loc10_)
            {
               var _loc9_:* = _loc3_;
               if(!_loc10_)
               {
                  while(true)
                  {
                     if(!(§§hasnext(_loc9_,_loc8_)))
                     {
                        §§goto(addr0177);
                     }
                  }
                  return;
               }
               §§goto(addr0124);
            }
            addr0177:
            if(_loc11_ || Boolean(_loc2_))
            {
               sendNotification(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP,true);
            }
            §§goto(addr0192);
         }
         addr0192:
      }
      
      private function isEkomiUser() : Boolean
      {
         var _loc1_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         return _loc1_.isEkomiUser;
      }
   }
}

