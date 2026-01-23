package net.bigpoint.cityrama.view.bonusDay
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.bonusDay.vo.BonusDaySideMenuVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayInfoComponent;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDaySideMenu;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BonusDaySideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BonusDaySideMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "BonusDaySideMenuMediator";
      }
      
      private var _data:BonusDaySideMenuVo;
      
      private var _tiP:TimerProxy;
      
      public function BonusDaySideMenuMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRegister();
            if(_loc1_)
            {
               this.setupListener();
               if(!(_loc2_ && _loc1_))
               {
                  addr0044:
                  this.updateComponent();
               }
            }
            return;
         }
         §§goto(addr0044);
      }
      
      private function updateComponent() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.getData();
            if(!(_loc1_ && _loc2_))
            {
               addr0029:
               this.setVisibility();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function getData() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:ImprovementVo = null;
         var _loc4_:ConfigEventDTO = null;
         var _loc1_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc2_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         if(_loc8_)
         {
            this._data = null;
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     addr007a:
                     this._data = new BonusDaySideMenuVo();
                  }
                  addr0085:
                  _loc3_ = _loc2_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
                  if(!_loc7_)
                  {
                     §§push(this._data);
                     if(_loc8_)
                     {
                        §§push(_loc3_.startTime);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§pop().startTime = §§pop();
                           if(_loc8_)
                           {
                              §§push(this._data);
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 addr00ed:
                                 addr00de:
                                 §§push(_loc3_.expirationTime);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() - _loc3_.startTime);
                                 }
                                 §§pop().duration = §§pop();
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    addr0102:
                                    this._data.bonusDayActivated = true;
                                 }
                                 §§goto(addr01ba);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr01ba);
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00de);
                  }
               }
               else
               {
                  for each(_loc4_ in _loc1_.listOfRunningGlobalEvents)
                  {
                     if(_loc4_.eventType != ServerEventTypeConst.BONUSDAY)
                     {
                        continue;
                     }
                     if(_loc8_ || Boolean(_loc1_))
                     {
                        this._data = new BonusDaySideMenuVo();
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(this._data);
                        if(_loc8_)
                        {
                           §§push(_loc4_.availabilityTimeStart);
                           if(!_loc7_)
                           {
                              §§pop().startTime = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(this._data);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    addr0192:
                                    §§pop().duration = _loc4_.totalAvailabilityTime;
                                    if(_loc7_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    addr01a3:
                                    §§push(this._data);
                                 }
                                 addr01a7:
                                 §§pop().bonusDayActivated = false;
                              }
                              break;
                           }
                           §§goto(addr0192);
                        }
                        §§goto(addr01a7);
                     }
                     §§goto(addr01a3);
                  }
               }
               addr01ba:
               return;
            }
            §§goto(addr007a);
         }
         §§goto(addr0085);
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push(BonusDaySideMenu.CLICK_INFO);
               if(!_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.handleClick);
                  if(!_loc2_)
                  {
                     addr003e:
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§push(BonusDaySideMenu.SHOW_INFO);
                        if(_loc1_ || Boolean(this))
                        {
                           §§pop().addEventListener(§§pop(),this.handleShow);
                           if(_loc1_ || _loc1_)
                           {
                              addr0081:
                              this.component.addEventListener(BonusDaySideMenu.HIDE_INFO,this.handleHide);
                              addr007b:
                           }
                           §§goto(addr0088);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007b);
                  }
                  addr0088:
                  return;
               }
               §§goto(addr0081);
            }
            §§goto(addr007b);
         }
         §§goto(addr003e);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.TIMESTAMP_SET);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr014f:
                        §§push(3);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr0167);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
                     if(_loc3_)
                     {
                        addr00c9:
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr00d7);
                        }
                        §§goto(addr011d);
                     }
                     §§goto(addr014a);
                  }
               }
               addr00d7:
               if(§§pop() === §§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(1);
                     if(_loc4_ && Boolean(param1))
                     {
                     }
                  }
                  else
                  {
                     addr013a:
                     §§push(2);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        addr011d:
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr013a);
                           }
                           else
                           {
                              §§goto(addr014f);
                           }
                        }
                        else
                        {
                           §§goto(addr014b);
                        }
                        §§goto(addr014f);
                     }
                     addr014b:
                     §§goto(addr014a);
                  }
                  addr014a:
                  if(ApplicationNotificationConstants.SHOW_GUI === _loc2_)
                  {
                     §§goto(addr014f);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr0167);
               }
               addr0167:
               switch(§§pop())
               {
                  case 0:
                  case 1:
                  case 2:
                     this.updateComponent();
                     if(_loc3_)
                     {
                     }
                     break;
                  case 3:
                     if(param1.getBody() == true)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.setVisibility();
                           if(_loc4_)
                           {
                           }
                        }
                        break;
                     }
                     this.component.visible = this.component.includeInLayout = false;
                     if(_loc4_)
                     {
                     }
               }
               return;
            }
            §§goto(addr00c9);
         }
         §§goto(addr014f);
      }
      
      private function setVisibility() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this._data)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(this.component);
                     if(_loc3_)
                     {
                        §§push(true);
                        if(!(_loc2_ && _loc2_))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           §§push(_temp_5);
                           if(_loc3_)
                           {
                              var _loc1_:* = §§pop();
                              if(!_loc2_)
                              {
                                 §§pop().visible = §§pop();
                                 if(!_loc2_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop().includeInLayout = §§pop();
                                          if(!_loc2_)
                                          {
                                             addr0086:
                                             §§push(this.component);
                                             if(!_loc2_)
                                             {
                                                §§push(this._data.bonusDayActivated);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§pop().setData(§§pop());
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr00d2:
                                                   §§pop().includeInLayout = §§pop();
                                                }
                                                §§goto(addr00d4);
                                             }
                                             else
                                             {
                                                addr00cd:
                                                this.component.visible = _loc1_ = false;
                                                addr00d0:
                                                addr00cf:
                                                §§push(_loc1_);
                                                addr00cc:
                                                addr00cb:
                                                addr00ca:
                                                addr00c7:
                                             }
                                             §§goto(addr00d2);
                                          }
                                          §§goto(addr00d4);
                                       }
                                       §§goto(addr00d2);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00c7);
               }
               addr00d4:
               return;
            }
            §§push(this.component);
            §§goto(addr00c7);
         }
         §§goto(addr0086);
      }
      
      private function handleHide(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  param1.stopPropagation();
                  if(_loc3_)
                  {
                     addr002c:
                     this.component.menuContainer.removeAllElements();
                  }
                  return;
               }
            }
         }
         §§goto(addr002c);
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
         var _loc2_:BonusDayInfoComponent = new BonusDayInfoComponent();
         if(_loc3_ || Boolean(_loc2_))
         {
            this._data.currentTimeStamp = this.timerProxy.currentTimeStamp;
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.data = this._data;
               if(_loc3_ || _loc3_)
               {
                  this.component.menuContainer.addElement(_loc2_);
               }
            }
         }
      }
      
      private function handleClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleHide();
            if(!_loc2_)
            {
               addr0021:
               §§push(this._data);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0057:
                        if(this._data.bonusDayActivated)
                        {
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              sendNotification(ApplicationNotificationConstants.OPEN_BONUS_DAY_ACTIVATED_LAYER,true);
                              if(_loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0057);
            }
            addr0089:
            return;
         }
         §§goto(addr0021);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.removeListener();
            if(_loc2_)
            {
               addr0029:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§push(BonusDaySideMenu.CLICK_INFO);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleClick);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0068:
                        §§push(BonusDaySideMenu.HIDE_INFO);
                        if(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.handleHide);
                           if(_loc1_)
                           {
                              addr0088:
                              this.component.removeEventListener(BonusDaySideMenu.SHOW_INFO,this.handleShow);
                              addr0082:
                              addr007f:
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0088);
            }
            §§goto(addr0068);
         }
         addr0090:
      }
      
      public function get component() : BonusDaySideMenu
      {
         return super.viewComponent as BonusDaySideMenu;
      }
      
      private function get timerProxy() : TimerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._tiP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               addr0044:
               return this._tiP;
            }
         }
         §§goto(addr0044);
      }
   }
}

