package net.bigpoint.cityrama.view.assistants
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorSideMenu;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.quest.WelcomeScreenMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RentCollectorSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "RentCollectorSideMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || RentCollectorSideMenuMediator)
      {
         NAME = "RentCollectorSideMenuMediator";
      }
      
      private var _assiViewProxy:AssistViewProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _rentCollectorInfo:RentCollectorInfoComponent;
      
      private var _showTimer:Timer;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _soundProxy:SoundProxy;
      
      public function RentCollectorSideMenuMediator(param1:Object)
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
         if(_loc1_)
         {
            super.onRegister();
            if(_loc1_ || Boolean(this))
            {
               this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
               if(!_loc2_)
               {
                  this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(_loc1_)
                  {
                     addr005e:
                     this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                     if(!_loc2_)
                     {
                        this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                        if(!_loc2_)
                        {
                           addr0098:
                           this._data = this._assiViewProxy.rentCollectorSideMenuVo;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b0:
                              this.component.data = this._data;
                              if(!_loc2_)
                              {
                                 addr00be:
                                 this.setupListener();
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr00be);
            }
            §§goto(addr0098);
         }
         §§goto(addr005e);
      }
      
      private function setupListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§push(RentCollectorSideMenu.USE_COLLECTOR);
               if(!_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.onUseCollector);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(this.component);
                     if(_loc2_)
                     {
                        §§push(RentCollectorSideMenu.HIDE_INFO);
                        if(_loc2_)
                        {
                           §§pop().addEventListener(§§pop(),this.onMouseOut);
                           if(_loc2_ || _loc2_)
                           {
                              addr0077:
                              §§push(this.component);
                              if(_loc2_)
                              {
                                 addr007f:
                                 §§push(RentCollectorSideMenu.SHOW_INFO);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§pop().addEventListener(§§pop(),this.onMouseOver);
                                    if(_loc2_)
                                    {
                                       addr009e:
                                       §§push(this.component);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00b8:
                                          §§push(RentCollectorSideMenu.SHOW_HIRE_INFO);
                                          if(_loc2_)
                                          {
                                             addr00c3:
                                             §§pop().addEventListener(§§pop(),this.onMouseOver);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00e0:
                                                this.component.addEventListener(RentCollectorSideMenu.PLUS_CLICKED,this.onPlusClick);
                                                addr00da:
                                             }
                                             §§goto(addr00e7);
                                          }
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr00da);
                                    }
                                    §§goto(addr00e7);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00b8);
                           }
                           addr00e7:
                           return;
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr00e0);
            }
            §§goto(addr007f);
         }
         §§goto(addr0077);
      }
      
      private function onUseCollector(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(_loc2_ || _loc2_)
            {
               §§push(this.component);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().menuContainer.removeAllElements();
                  if(_loc2_)
                  {
                     addr0046:
                     §§push(this._data);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(this._data);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().rentCollectorRunning);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr0093:
                                          addr008e:
                                          if(this.residentialHarvestable)
                                          {
                                             if(!_loc3_)
                                             {
                                                sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   this._soundProxy.playRentCollectorActivate();
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr011f:
                                                   this.component.menuContainer.addElement(this._rentCollectorInfo);
                                                   addr011c:
                                                }
                                                §§goto(addr012a);
                                             }
                                             else
                                             {
                                                addr00e3:
                                                this._data.currentState = RentCollectorInfoComponent.IDLE_INFO;
                                                addr00df:
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr0105:
                                                   this._rentCollectorInfo.data = this._data;
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§goto(addr011c);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                             }
                                             §§goto(addr011c);
                                          }
                                          else
                                          {
                                             this._rentCollectorInfo = new RentCollectorInfoComponent();
                                             if(!_loc3_)
                                             {
                                                §§goto(addr00df);
                                             }
                                          }
                                          §§goto(addr012a);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr012a);
                                 }
                                 §§goto(addr0093);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr011c);
                        }
                        addr012a:
                        return;
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr011f);
            }
            §§goto(addr0046);
         }
         §§goto(addr011c);
      }
      
      private function onPlusClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            param1.stopPropagation();
            if(_loc2_ || _loc2_)
            {
               this.component.menuContainer.removeAllElements();
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_LAYER);
               }
               return;
            }
         }
         §§goto(addr0055);
      }
      
      private function onMouseOut(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               addr0036:
               if(this._data.currentState != RentCollectorInfoComponent.SUCCESS)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.component.menuContainer.removeAllElements();
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      private function onMouseOver(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               §§push(this.component);
               if(_loc2_)
               {
                  §§pop().menuContainer.removeAllElements();
                  if(!_loc3_)
                  {
                     if(param1.type == RentCollectorSideMenu.SHOW_INFO)
                     {
                        if(_loc2_)
                        {
                           §§push(this._data);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(RentCollectorInfoComponent.RUNNING_INFO);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§pop().currentState = §§pop();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c7:
                                    this._rentCollectorInfo = new RentCollectorInfoComponent();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00df:
                                       §§push(this._data);
                                       if(!_loc3_)
                                       {
                                          addr00e8:
                                          §§push(§§pop().timerVo);
                                          if(_loc2_ || Boolean(param1))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   this._data.timerVo.currentTime = this._timerProxy.currentTimeStamp;
                                                   addr0108:
                                                   addr0105:
                                                   addr0101:
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr0126);
                                                   }
                                                }
                                                §§goto(addr013d);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0108);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr0101);
                                 }
                                 addr0126:
                                 this._rentCollectorInfo.data = this._data;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr0140:
                                    this.component.menuContainer.addElement(this._rentCollectorInfo);
                                    addr013d:
                                 }
                                 §§goto(addr014b);
                              }
                              else
                              {
                                 addr00bf:
                                 §§pop().currentState = §§pop();
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00c7);
                                 }
                              }
                              §§goto(addr013d);
                           }
                        }
                        else
                        {
                           addr00b0:
                           §§push(this._data);
                           if(_loc2_)
                           {
                              §§goto(addr00bf);
                              §§push(RentCollectorInfoComponent.HIRE_INFO);
                           }
                        }
                        §§goto(addr00e8);
                     }
                     else if(param1.type == RentCollectorSideMenu.SHOW_HIRE_INFO)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr013d);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr013d);
               }
               §§goto(addr0140);
            }
            §§goto(addr00df);
         }
         addr014b:
      }
      
      private function get residentialHarvestable() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ResidentialFieldObject = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._playfieldObjProxy.residentialList;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§push(_loc1_.residentialFieldObjectVo);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  if(!§§pop().isHarvestReady)
                  {
                     continue;
                  }
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(_loc1_.residentialFieldObjectVo);
                     if(_loc4_)
                     {
                        addr007f:
                        if(!§§pop().isConnectedToStreet)
                        {
                           continue;
                        }
                        if(!(_loc4_ || Boolean(_loc1_)))
                        {
                           continue;
                        }
                        addr0094:
                        §§push(_loc1_.residentialFieldObjectVo);
                     }
                     if(!§§pop().interactionBlockedByEmergency())
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr0094);
               }
               §§goto(addr007f);
            }
            return false;
         }
         return true;
      }
      
      override public function getMediatorName() : String
      {
         return NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ASSIST_DATA_CHANGE,ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS,ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:* = param1.getName();
         if(!_loc5_)
         {
            §§push(ApplicationNotificationConstants.SHOW_GUI);
            if(_loc4_ || Boolean(param1))
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr02a2:
                        §§push(2);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.TIMESTAMP_SET);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc5_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr02a2);
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.ASSIST_DATA_CHANGE);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 addr027d:
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    addr0284:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          §§goto(addr02a2);
                                       }
                                       else
                                       {
                                          addr02b8:
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       §§goto(addr02d0);
                                    }
                                    else
                                    {
                                       §§goto(addr02b4);
                                    }
                                 }
                                 addr02b4:
                                 §§goto(addr02b3);
                              }
                              addr02b3:
                              if(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS === _loc3_)
                              {
                                 §§goto(addr02b8);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr02d0);
                           }
                           §§goto(addr02d0);
                        }
                        §§goto(addr0284);
                     }
                     §§goto(addr027d);
                  }
                  addr02d0:
                  switch(§§pop())
                  {
                     case 0:
                        if(facade.hasMediator(WelcomeScreenMediator.NAME))
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           break;
                        }
                        §§push(this.component);
                        if(_loc4_)
                        {
                           §§pop().visible = this.component.includeInLayout = param1.getBody();
                           if(_loc4_)
                           {
                           }
                           break;
                        }
                        addr0081:
                        §§pop().data = this._data;
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                        break;
                     case 1:
                     case 2:
                        this._data = this._assiViewProxy.rentCollectorSideMenuVo;
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this.component);
                           if(!_loc5_)
                           {
                              §§goto(addr0081);
                           }
                        }
                        else
                        {
                           addr00a8:
                           §§push(this.component);
                        }
                        §§pop().menuContainer.removeAllElements();
                        if(_loc5_ && Boolean(this))
                        {
                           break;
                        }
                        _loc2_ = param1.getBody() as Object;
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(this._data);
                           if(_loc4_)
                           {
                              §§pop().currentState = RentCollectorInfoComponent.SUCCESS;
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(this._data);
                                 if(!_loc5_)
                                 {
                                    addr0103:
                                    §§pop().collectedVC = _loc2_.vc;
                                    if(!_loc5_)
                                    {
                                       §§push(this._data);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§pop().collectedPP = _loc2_.pp;
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             addr013d:
                                             this._data.collectedEP = _loc2_.ep;
                                             if(!_loc5_)
                                             {
                                                addr0158:
                                                this._rentCollectorInfo = new RentCollectorInfoComponent();
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   addr0171:
                                                   this._rentCollectorInfo.data = this._data;
                                                   if(_loc4_ || Boolean(_loc3_))
                                                   {
                                                      this.component.menuContainer.addElement(this._rentCollectorInfo);
                                                      if(_loc4_)
                                                      {
                                                         addr019d:
                                                         this._showTimer = new Timer(4000);
                                                         if(_loc5_ && Boolean(param1))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      addr01b9:
                                                      this._showTimer.addEventListener(TimerEvent.TIMER,this.onTimerFinished);
                                                      if(!(_loc4_ || Boolean(param1)))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   this._showTimer.start();
                                                   break;
                                                }
                                             }
                                             §§goto(addr019d);
                                             addr0139:
                                          }
                                          §§goto(addr01b9);
                                       }
                                       §§goto(addr013d);
                                    }
                                    §§goto(addr0171);
                                 }
                                 §§goto(addr013d);
                              }
                              §§goto(addr0158);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr0139);
                        break;
                     case 3:
                        if(!param1.getBody())
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr00a8);
                  }
                  return;
               }
               §§goto(addr02b4);
            }
            §§goto(addr02b3);
         }
         §§goto(addr02a2);
      }
      
      private function onTimerFinished(param1:TimerEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._showTimer)
            {
               if(_loc3_)
               {
                  this._showTimer.stop();
                  if(!(_loc2_ && _loc3_))
                  {
                     this._showTimer.removeEventListener(TimerEvent.TIMER,this.onTimerFinished);
                     if(!(_loc2_ && _loc2_))
                     {
                        this._showTimer = null;
                        if(_loc3_)
                        {
                           addr0070:
                           §§push(this._data);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop().currentState == RentCollectorInfoComponent.SUCCESS)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00a9:
                                    this._data.currentState = "";
                                    addr00a5:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00bb:
                                       this.component.menuContainer.removeAllElements();
                                    }
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr00bb);
                              }
                              addr00c5:
                              return;
                           }
                           §§goto(addr00a9);
                        }
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00bb);
            }
         }
         §§goto(addr0070);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(_loc1_)
            {
               §§push(this.component);
               if(!_loc2_)
               {
                  §§push(RentCollectorSideMenu.USE_COLLECTOR);
                  if(_loc1_ || Boolean(this))
                  {
                     §§pop().removeEventListener(§§pop(),this.onUseCollector);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.component);
                        if(_loc1_)
                        {
                           §§push(RentCollectorSideMenu.HIDE_INFO);
                           if(_loc1_)
                           {
                              §§pop().removeEventListener(§§pop(),this.onMouseOut);
                              if(!_loc2_)
                              {
                                 §§push(this.component);
                                 if(_loc1_)
                                 {
                                    addr0080:
                                    §§push(RentCollectorSideMenu.SHOW_INFO);
                                    if(_loc1_ || _loc1_)
                                    {
                                       §§pop().removeEventListener(§§pop(),this.onMouseOver);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(this.component);
                                          if(!_loc2_)
                                          {
                                             §§push(RentCollectorSideMenu.SHOW_HIRE_INFO);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§goto(addr00cc);
                                             }
                                             §§goto(addr00e9);
                                          }
                                          §§goto(addr00e3);
                                       }
                                       §§goto(addr00e0);
                                    }
                                    addr00cc:
                                    §§pop().removeEventListener(§§pop(),this.onMouseOver);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr00e9:
                                       this.component.removeEventListener(RentCollectorSideMenu.PLUS_CLICKED,this.onPlusClick);
                                       addr00e3:
                                       addr00e0:
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr0080);
            }
            §§goto(addr00e0);
         }
         addr00f0:
      }
      
      public function get component() : RentCollectorSideMenu
      {
         return super.viewComponent as RentCollectorSideMenu;
      }
      
      public function get rentCollectorSparkleSprite() : Sprite
      {
         return this.component.rentCollectorSparkleSprite;
      }
   }
}

