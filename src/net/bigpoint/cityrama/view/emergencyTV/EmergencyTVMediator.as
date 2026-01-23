package net.bigpoint.cityrama.view.emergencyTV
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.emergencyTV.components.EmergencyTV;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyTVMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyTVMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "EmergencyTVMediator";
      }
      
      private var _sP:SoundProxy;
      
      private var affectedBid:Number;
      
      private var _soundProxy:SoundProxy;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      public function EmergencyTVMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(_loc4_ || Boolean(this))
         {
            if(ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV === _loc2_)
            {
               addr00d0:
               §§push(0);
               if(_loc3_ && _loc3_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §§push(this.component);
                  if(!_loc3_)
                  {
                     §§pop().dropButton.selected = true;
                     if(_loc3_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     §§push(this.component);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(§§pop().tv);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().includeInLayout = this.component.tv.visible = false;
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           addr0082:
                           §§push(this.component.tv);
                        }
                        §§pop().stopClips();
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                        break;
                     }
                  }
                  §§goto(addr0082);
            }
            return;
         }
         §§goto(addr00d0);
      }
      
      public function get component() : EmergencyTV
      {
         return super.viewComponent as EmergencyTV;
      }
      
      public function setTVData(param1:EmergencyTVVo) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            if(param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push(this.component);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(true);
                     if(_loc4_)
                     {
                        §§pop().visible = §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.component);
                           if(_loc4_)
                           {
                              §§pop().reset();
                              if(_loc4_)
                              {
                                 §§push(this.component);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§pop().tvData = param1;
                                    if(_loc4_)
                                    {
                                       addr008f:
                                       this.component.tvCollapsedState = this._localStorageProxy.userdata.tvCollapsed;
                                       addr0085:
                                       addr0082:
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          addr009f:
                                          this.affectedBid = param1.affectedBuildingId;
                                       }
                                       var _loc2_:* = param1.showData.state;
                                       if(_loc4_)
                                       {
                                          §§push(TVShowVo.FAIL);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      §§push(0);
                                                      if(_loc3_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01e7:
                                                      §§push(1);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(TVShowVo.SUCCESS);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         addr01d1:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr01e7);
                                                            }
                                                            else
                                                            {
                                                               addr01fe:
                                                               §§push(2);
                                                               if(_loc3_ && Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr021d);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01fa);
                                                         }
                                                      }
                                                      addr01fa:
                                                      §§goto(addr01f9);
                                                   }
                                                   addr01f9:
                                                   if(TVShowVo.START === _loc2_)
                                                   {
                                                      §§goto(addr01fe);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                   §§goto(addr021d);
                                                }
                                                addr021d:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §§push(this._soundProxy);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().playEmergencyFail();
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(this._soundProxy);
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            §§pop().playMumble();
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            addr0119:
                                                            §§push(this._soundProxy);
                                                            if(!(_loc3_ && Boolean(param1)))
                                                            {
                                                               §§pop().playMumble();
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               addr0155:
                                                               §§push(this._soundProxy);
                                                            }
                                                            addr0159:
                                                            §§pop().playMumble();
                                                            if(_loc3_ && Boolean(this))
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         addr014a:
                                                         §§pop().playTVTicker();
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr0155);
                                                      }
                                                      §§goto(addr014a);
                                                   case 1:
                                                      §§push(this._soundProxy);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§pop().playEmergencySuccess();
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr0119);
                                                      }
                                                      §§goto(addr0159);
                                                   case 2:
                                                      §§push(this._soundProxy);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr0159);
                                                }
                                                §§goto(addr0230);
                                             }
                                             §§goto(addr01d1);
                                          }
                                          §§goto(addr01f9);
                                       }
                                       §§goto(addr01fe);
                                    }
                                    §§goto(addr009f);
                                 }
                                 §§goto(addr0085);
                              }
                              §§goto(addr0082);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0082);
            }
            addr0230:
            return;
         }
         §§goto(addr0082);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.component.tv.removeEventListener(MouseEvent.CLICK,this.onTvClick);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(_loc2_)
            {
               this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
               if(_loc2_)
               {
                  addr004e:
                  §§push(this.component);
                  if(_loc2_ || Boolean(this))
                  {
                     §§pop().tv.addEventListener(MouseEvent.CLICK,this.onTvClick);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0088:
                        this.component.addEventListener(EmergencyTV.EVENT_TOGGLE_TV,this.onTvToggle);
                        addr0085:
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0085);
            }
            addr0096:
            return;
         }
         §§goto(addr004e);
      }
      
      private function onTvToggle(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._localStorageProxy.userdata.tvCollapsed = this.component.tvCollapsedState;
            if(_loc2_)
            {
               addr0041:
               this._soundProxy.playTVSwitch();
            }
            return;
         }
         §§goto(addr0041);
      }
      
      private function onTvClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.FIELD_PANTO_EMERGENCY,this.affectedBid);
         }
      }
      
      private function get soundProxy() : SoundProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._sP);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  }
               }
               addr0067:
               return this._sP;
            }
         }
         §§goto(addr0067);
      }
      
      public function hide() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.component.visible = false;
         }
      }
   }
}

