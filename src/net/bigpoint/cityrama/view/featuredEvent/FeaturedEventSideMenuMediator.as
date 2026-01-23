package net.bigpoint.cityrama.view.featuredEvent
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventSideMenu;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventTooltip;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventSideMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "FeaturedEventSideMenuMediator";
      }
      
      private var _data:FeaturedEventSideMenuVo;
      
      private var _fEP:FeaturedEventProxy;
      
      private var _tiP:TimerProxy;
      
      private var _lSP:LocalStorageProxy;
      
      public function FeaturedEventSideMenuMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRegister();
            if(!(_loc1_ && _loc1_))
            {
               this.setupListener();
               if(_loc2_ || Boolean(this))
               {
                  addr0045:
                  this.updateComponent();
               }
               §§goto(addr004b);
            }
            §§goto(addr0045);
         }
         addr004b:
      }
      
      private function updateComponent() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.getData();
            if(_loc1_)
            {
               addr0020:
               this.setVisibility();
            }
            return;
         }
         §§goto(addr0020);
      }
      
      private function getData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._data = this.featuredEventProxy.featuredEventSideMenuVo;
         }
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(FeaturedEventSideMenu.CLICK_INFO);
               if(_loc1_ || _loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.handleClick);
                  if(!_loc2_)
                  {
                     §§push(this.component);
                     if(_loc1_ || _loc2_)
                     {
                        addr0069:
                        §§push(FeaturedEventSideMenu.SHOW_INFO);
                        if(_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.handleShow);
                           if(_loc1_)
                           {
                              addr008a:
                              this.component.addEventListener(FeaturedEventSideMenu.HIDE_INFO,this.handleHide);
                              addr0084:
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr008a);
            }
            §§goto(addr0069);
         }
         addr0091:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(ApplicationNotificationConstants.TIMESTAMP_SET);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00e9:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
                     if(_loc3_ || Boolean(param1))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr00e9);
                              }
                              else
                              {
                                 addr01ae:
                                 §§push(5);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr01ce);
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.USERLEVEL_CHANGED);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr0117:
                                          §§push(2);
                                          if(_loc4_ && _loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr01ae);
                                       }
                                       §§goto(addr01ce);
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr013d:
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             addr0144:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(3);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr01ae);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr017c:
                                                   §§push(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(4);
                                                            if(_loc3_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01ae);
                                                         }
                                                         §§goto(addr01ce);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01aa);
                                                      }
                                                   }
                                                   addr01aa:
                                                   §§goto(addr01a9);
                                                }
                                                addr01a9:
                                                if(ApplicationNotificationConstants.SHOW_GUI === _loc2_)
                                                {
                                                   §§goto(addr01ae);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                }
                                             }
                                             §§goto(addr01ce);
                                          }
                                          §§goto(addr01aa);
                                       }
                                       §§goto(addr017c);
                                    }
                                 }
                                 §§goto(addr01aa);
                              }
                              §§goto(addr017c);
                           }
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr017c);
                  }
                  addr01ce:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                     case 3:
                     case 4:
                        this.updateComponent();
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr0040:
                        this.setVisibility();
                        if(_loc4_)
                        {
                        }
                        break;
                     case 5:
                        if(param1.getBody() != true)
                        {
                           var _temp_6:* = this.component;
                           this.component.includeInLayout = _loc2_ = false;
                           _temp_6.visible = _loc2_;
                           if(_loc3_ || _loc2_)
                           {
                           }
                           break;
                        }
                        if(_loc4_ && _loc3_)
                        {
                           break;
                        }
                        §§goto(addr0040);
                  }
                  return;
               }
               §§goto(addr0144);
            }
            §§goto(addr013d);
         }
         §§goto(addr0117);
      }
      
      private function setVisibility() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.component.visible = this._data.showSideMenu());
               if(_loc3_)
               {
                  §§pop().includeInLayout = §§pop();
                  if(_loc3_)
                  {
                     addr005b:
                     this.component.showNewIcon = this._data.showNew;
                     addr0054:
                     addr0051:
                  }
                  return;
               }
               §§goto(addr005b);
            }
            §§goto(addr0054);
         }
         §§goto(addr0051);
      }
      
      private function handleHide(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1)
            {
               if(_loc3_ || _loc2_)
               {
                  param1.stopPropagation();
                  if(_loc3_)
                  {
                     addr0041:
                     this.component.menuContainer.removeAllElements();
                  }
               }
               §§goto(addr004b);
            }
            §§goto(addr0041);
         }
         addr004b:
      }
      
      private function handleShow(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            param1.stopPropagation();
         }
         var _loc2_:FeaturedEventTooltip = new FeaturedEventTooltip();
         if(_loc3_)
         {
            this._data.currentTimeStamp = this.timerProxy.currentTimeStamp;
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.data = this._data;
               if(_loc3_)
               {
                  addr0077:
                  this.component.menuContainer.addElement(_loc2_);
               }
               §§goto(addr0082);
            }
            §§goto(addr0077);
         }
         addr0082:
      }
      
      private function handleClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this.handleHide();
            if(!_loc3_)
            {
               §§push(this._data);
               if(!_loc3_)
               {
                  if(§§pop().showNew)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this._data);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§pop().showNew = false;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0065:
                              this.component.showNewIcon = this._data.showNew;
                              if(!_loc3_)
                              {
                                 addr0077:
                                 §§push(this.localStorageProxy);
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    §§pop().userdata.seenFeaturedEvents.push(this._data.currentRunningEventType + this._data.timerVo.startTime);
                                    if(_loc4_)
                                    {
                                       addr00bd:
                                       this.localStorageProxy.flush();
                                       addr00b8:
                                       if(_loc4_)
                                       {
                                          §§goto(addr00cb);
                                       }
                                    }
                                    §§goto(addr010d);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr0077);
                        }
                        addr00cb:
                        §§goto(addr00c7);
                     }
                     §§goto(addr00b8);
                  }
                  addr00c7:
                  if(this._data)
                  {
                     addr010d:
                     var _loc2_:* = this._data.currentRunningEventType;
                     if(!_loc3_)
                     {
                        §§push(FeaturedRunningEventVo.FEATURED_WHEEL);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr013d:
                                    §§push(0);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0169:
                                    §§push(1);
                                    if(_loc4_ || Boolean(this))
                                    {
                                    }
                                 }
                                 §§goto(addr0189);
                              }
                              else
                              {
                                 §§goto(addr0165);
                              }
                           }
                           addr0165:
                           §§goto(addr0164);
                        }
                        addr0164:
                        if(FeaturedRunningEventVo.FEATURED_MYSTERY === _loc2_)
                        {
                           §§goto(addr0169);
                        }
                        else
                        {
                           §§push(2);
                        }
                        addr0189:
                        switch(§§pop())
                        {
                           case 0:
                              sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX);
                              if(_loc4_)
                              {
                              }
                              break;
                           case 1:
                              sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.MYSTERY_TAB_INDEX);
                              if(_loc3_)
                              {
                              }
                        }
                        §§goto(addr0199);
                     }
                     §§goto(addr013d);
                  }
                  addr0199:
                  return;
               }
               §§goto(addr00cb);
            }
            §§goto(addr010d);
         }
         §§goto(addr0065);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.removeListener();
            if(_loc2_ || _loc1_)
            {
               super.onRemove();
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§push(FeaturedEventSideMenu.CLICK_INFO);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleClick);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(this.component);
                     if(_loc2_ || _loc1_)
                     {
                        addr0072:
                        §§push(FeaturedEventSideMenu.HIDE_INFO);
                        if(_loc2_)
                        {
                           §§goto(addr007d);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0091);
               }
               addr007d:
               §§pop().removeEventListener(§§pop(),this.handleHide);
               if(!(_loc1_ && _loc2_))
               {
                  addr009a:
                  this.component.removeEventListener(FeaturedEventSideMenu.SHOW_INFO,this.handleShow);
                  addr0094:
                  addr0091:
               }
               return;
            }
            §§goto(addr0072);
         }
         §§goto(addr0091);
      }
      
      public function get component() : FeaturedEventSideMenu
      {
         return super.viewComponent as FeaturedEventSideMenu;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._fEP);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr003a:
                     this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  }
               }
               return this._fEP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._tiP);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr0039:
                     this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               return this._tiP;
            }
         }
         §§goto(addr0039);
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._lSP);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                  }
               }
               addr0054:
               return this._lSP;
            }
         }
         §§goto(addr0054);
      }
   }
}

