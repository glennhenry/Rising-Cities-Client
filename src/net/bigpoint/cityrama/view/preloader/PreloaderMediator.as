package net.bigpoint.cityrama.view.preloader
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.init.preloader.PreloaderView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PreloaderMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PreloaderMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "PreloaderMediator";
      }
      
      private var _preloaderPlayed:Boolean;
      
      private var _preloadServiceLoaded:Boolean;
      
      public function PreloaderMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               SystemManager.rawStage.addEventListener(Event.RESIZE,this.resizeEventHandler,false,0,true);
            }
         }
      }
      
      private function resizeEventHandler(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(_loc4_)
         {
            §§push(this.preloader);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(Math.round((SystemManager.rawStage.stageWidth - this.preloader.width) / 2));
                     if(_loc4_ || Boolean(param1))
                     {
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr00a2);
                     }
                     addr0086:
                     _loc3_ = Math.round((SystemManager.rawStage.stageHeight - this.preloader.height) / 2);
                     §§goto(addr006c);
                  }
                  addr006c:
                  if(_loc4_ || Boolean(param1))
                  {
                     addr00a2:
                     §§push(this.preloader);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§pop().x = §§pop();
                           if(_loc4_)
                           {
                              addr00c8:
                              this.preloader.y = _loc3_;
                              addr00c7:
                              addr00c3:
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00ca);
               }
               addr00ca:
               return;
            }
            §§goto(addr00c7);
         }
         §§goto(addr00c3);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(_loc1_)
            {
               this.preloader.addEventListener(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,this.onPreloaderViewed);
            }
         }
      }
      
      private function onPreloaderViewed(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               this.preloader.removeEventListener(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,this.onPreloaderViewed);
               §§goto(addr0036);
            }
            §§goto(addr0060);
         }
         addr0036:
         if(!(_loc2_ && _loc3_))
         {
            addr0060:
            this._preloaderPlayed = true;
            if(_loc3_ || _loc2_)
            {
               this.checkContinuation();
            }
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS,ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED,ServerNotificationConstants.SERVER_MESSAGE_PROGRESS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(_loc4_ || Boolean(param1))
         {
            §§push(ServerNotificationConstants.SERVER_MESSAGE_PROGRESS);
            if(_loc4_ || Boolean(param1))
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS);
                     if(_loc4_ || Boolean(this))
                     {
                        addr0161:
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0170:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr019b);
                              }
                              §§goto(addr01bb);
                           }
                           else
                           {
                              §§goto(addr0197);
                           }
                        }
                        addr0197:
                        §§goto(addr0196);
                     }
                     addr0196:
                     if(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED === _loc2_)
                     {
                        §§goto(addr019b);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr01bb:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this.preloader);
                           if(_loc4_)
                           {
                              §§push(PreloaderView.STATE_LOAD_SERVER_MESSAGE);
                              if(_loc4_)
                              {
                                 §§pop().preloadState = §§pop();
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    §§push(this.preloader);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr0054:
                                       §§pop().setProgress(param1.getBody() as Number);
                                       if(_loc4_)
                                       {
                                       }
                                       break;
                                    }
                                    addr007b:
                                    §§pop().preloadState = PreloaderView.STATE_PRELOAD_ASSETS;
                                    addr0074:
                                    if(!(_loc4_ || Boolean(this)))
                                    {
                                       break;
                                    }
                                    addr0091:
                                    this.preloader.setProgress(param1.getBody() as Number);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       break;
                                    }
                                 }
                                 SystemManager.rawStage.removeEventListener(Event.RESIZE,this.resizeEventHandler);
                                 addr00c2:
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    addr00ef:
                                    this.checkContinuation();
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr007b);
                           }
                           §§goto(addr0054);
                        case 1:
                           §§push(this.preloader);
                           if(_loc4_)
                           {
                              §§goto(addr0074);
                           }
                           §§goto(addr0091);
                        case 2:
                           this._preloadServiceLoaded = true;
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr00c2);
                           }
                           §§goto(addr00ef);
                     }
                     return;
                  }
                  if(!_loc3_)
                  {
                     addr0142:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr019b:
                     §§push(2);
                     if(_loc4_ || Boolean(param1))
                     {
                     }
                  }
                  §§goto(addr01bb);
                  §§goto(addr019b);
               }
               §§goto(addr0170);
            }
            §§goto(addr0161);
         }
         §§goto(addr0142);
      }
      
      private function checkContinuation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._preloaderPlayed);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(_loc1_ || _loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr007b);
            }
            addr007c:
            §§push(this._preloadServiceLoaded);
            if(!_loc2_)
            {
               addr007b:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr008d:
                  sendNotification(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE);
               }
            }
            §§goto(addr0097);
         }
         addr0097:
      }
      
      private function get preloader() : PreloaderView
      {
         return viewComponent as PreloaderView;
      }
   }
}

