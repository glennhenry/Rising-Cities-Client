package net.bigpoint.cityrama.view.application
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.preloader.ApplicationSettingsProxy;
   import net.bigpoint.cityrama.view.preloader.PreloaderMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ApplicationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ApplicationMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "ApplicationMediator";
      }
      
      private var _configProxy:ApplicationSettingsProxy;
      
      private var _layoutProxy:LayoutProxy;
      
      public function ApplicationMediator(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               this.component.addEventListener(FlexEvent.CREATION_COMPLETE,this.mainApplication_creationCompleteHandler);
            }
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ENERGY_PUSH_FIELD_EFFECT,ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.getName());
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE);
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           addr014c:
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr01a4:
                           §§push(2);
                           if(_loc3_ && _loc2_)
                           {
                           }
                        }
                        addr01c3:
                        switch(§§pop())
                        {
                           case 0:
                              facade.removeMediator(PreloaderMediator.NAME);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§push(this.component);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().finishInitializing();
                                    if(_loc4_)
                                    {
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              break loop0;
                           case 1:
                              §§push(this._layoutProxy.displayState);
                              if(_loc4_ || Boolean(param1))
                              {
                                 if(§§pop() != this.component.stage.displayState)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                 }
                                 break loop0;
                              }
                              continue;
                           case 2:
                              §§push(this.component);
                              if(_loc3_ && Boolean(param1))
                              {
                                 break;
                              }
                              §§push(§§pop().mainView);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(this._layoutProxy);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().width);
                                    if(!_loc3_)
                                    {
                                       §§pop().width = §§pop();
                                       if(!_loc3_)
                                       {
                                          §§push(this.component);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§push(§§pop().mainView);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00f1:
                                                §§pop().height = this._layoutProxy.height;
                                                addr00ef:
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   addr0101:
                                                   §§push(this.component);
                                                   break;
                                                }
                                                break loop0;
                                             }
                                             addr0107:
                                             §§pop().confirmationGroup.removeAllElements();
                                             if(_loc4_)
                                             {
                                             }
                                             break loop0;
                                          }
                                          break;
                                       }
                                       §§goto(addr0101);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr0107);
                              break;
                           default:
                              break loop0;
                        }
                        §§goto(addr0107);
                        §§push(§§pop().mainView);
                     }
                     else
                     {
                        §§push(ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc3_ && Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr01a4);
                                 }
                              }
                              else
                              {
                                 addr01a0:
                                 addr019f:
                                 if(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS === _loc2_)
                                 {
                                    §§goto(addr01a4);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr01c3);
                           }
                           §§goto(addr01a0);
                        }
                        §§goto(addr019f);
                     }
                     §§goto(addr01a4);
                  }
                  §§goto(addr01a0);
               }
               §§goto(addr019f);
            }
            §§goto(addr014c);
         }
      }
      
      private function mainApplication_creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.component);
            if(_loc3_ || _loc2_)
            {
               §§pop().createDeferredContent();
               if(!_loc2_)
               {
                  sendNotification(ApplicationNotificationConstants.APPLICATION_INITIALIZED,this.component);
                  if(!_loc2_)
                  {
                     this._configProxy = ApplicationSettingsProxy(facade.retrieveProxy(ApplicationSettingsProxy.NAME));
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr00ba);
                  }
               }
               addr0074:
               this._layoutProxy = LayoutProxy(facade.retrieveProxy(LayoutProxy.NAME));
               if(!_loc2_)
               {
                  addr00a0:
                  this.component.addEventListener(Event.RESIZE,this.onResize);
                  addr009d:
                  if(_loc3_ || _loc3_)
                  {
                     addr00ba:
                     this._layoutProxy.setDimensions(this.component.width,this.component.height);
                  }
               }
               return;
            }
            §§goto(addr00a0);
         }
         §§goto(addr009d);
      }
      
      private function onResize(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._layoutProxy.setDimensions(this.component.width,this.component.height);
         }
      }
      
      public function get component() : MainApplication
      {
         return super.viewComponent as MainApplication;
      }
   }
}

