package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyTimerProggressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class EmergencyProggresTimerComponent extends Group
   {
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:EmergencyTimerProggressVo;
      
      private var _intervalID:uint;
      
      private var _dataIsDirty:Boolean;
      
      public function EmergencyProggresTimerComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._EmergencyProggresTimerComponent_HGroup1_c()];
                  if(_loc1_)
                  {
                     this.addEventListener("creationComplete",this.___EmergencyProggresTimerComponent_Group1_creationComplete);
                     if(_loc1_ || Boolean(this))
                     {
                        addr0074:
                        this.addEventListener("removedFromStage",this.___EmergencyProggresTimerComponent_Group1_removedFromStage);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr0074);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  addr0054:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:EmergencyTimerProggressVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_)
               {
                  addr004c:
                  this._dataIsDirty = true;
                  if(_loc2_ || _loc3_)
                  {
                     this._data = param1;
                     if(_loc2_ || Boolean(param1))
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               if(this._dataIsDirty)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this._dataIsDirty = false;
                     if(_loc1_)
                     {
                        clearInterval(this._intervalID);
                        if(!_loc2_)
                        {
                           addr0072:
                           this._intervalID = setInterval(this.handleInterval,1000);
                           if(!_loc2_)
                           {
                              addr008a:
                              this.handleInterval();
                           }
                           §§goto(addr0090);
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               addr0090:
               return;
            }
            §§goto(addr008a);
         }
         §§goto(addr0072);
      }
      
      private function handleCreationComplete() : void
      {
      }
      
      private function handleRemoved() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            clearInterval(this._intervalID);
         }
      }
      
      private function handleInterval() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         if(!_loc3_)
         {
            §§push(this._data);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop().targetTime);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 §§push(this._data);
                                 if(_loc2_)
                                 {
                                    addr0067:
                                    §§push(§§pop().cycleLength);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(§§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr0085:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this._data);
                                                if(!_loc3_)
                                                {
                                                   §§push(this._data.currentTime);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() + 1000);
                                                   }
                                                   §§pop().currentTime = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      addr00b3:
                                                      §§push(this._data.currentTime);
                                                      if(_loc2_)
                                                      {
                                                         §§push(this._data);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(§§pop().startTime);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  addr00fe:
                                                                  addr00e6:
                                                                  §§push(this._data.targetTime);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() - this._data.startTime);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(this.revertProgress);
                                                                           if(_loc2_)
                                                                           {
                                                                              addr0121:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr0132:
                                                                                    §§push(1 - _loc1_);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr014f:
                                                                                             §§push(this.progressBar);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop().progress = _loc1_;
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(this.progressBar);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0176:
                                                                                                      §§push(LocaUtils);
                                                                                                      §§push(this._data.targetTime);
                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop() - this._data.currentTime);
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            addr01a1:
                                                                                                            §§push(§§pop() / 1000);
                                                                                                         }
                                                                                                         §§push(§§pop().getDuration(§§pop()));
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§pop().label = §§pop();
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr01be:
                                                                                                               §§push(this.progressBar);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr01c7:
                                                                                                                  §§push(§§pop().progress);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr01cf:
                                                                                                                     §§push(1);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           var _temp_17:* = §§pop();
                                                                                                                           §§push(_temp_17);
                                                                                                                           §§push(_temp_17);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr01ea:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0201:
                                                                                                                                       §§push(this.revertProgress);
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0218);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0258);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0282);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0270);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0282);
                                                                                                                              }
                                                                                                                              addr0218:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr0221:
                                                                                                                                    this.endProgress();
                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0234);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02d2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0234);
                                                                                                                           }
                                                                                                                           §§goto(addr0259);
                                                                                                                        }
                                                                                                                        §§goto(addr0282);
                                                                                                                     }
                                                                                                                     §§goto(addr024a);
                                                                                                                  }
                                                                                                                  §§goto(addr0248);
                                                                                                               }
                                                                                                               §§goto(addr0245);
                                                                                                            }
                                                                                                            addr0234:
                                                                                                            §§push(this.progressBar);
                                                                                                            if(_loc2_ || _loc3_)
                                                                                                            {
                                                                                                               addr024a:
                                                                                                               addr0248:
                                                                                                               addr0245:
                                                                                                               §§push(§§pop().progress <= 0);
                                                                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  addr0258:
                                                                                                                  var _temp_23:* = §§pop();
                                                                                                                  addr0259:
                                                                                                                  §§push(_temp_23);
                                                                                                                  if(_temp_23)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr0262:
                                                                                                                        §§pop();
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr0282);
                                                                                                                        }
                                                                                                                        §§goto(addr02d2);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0282:
                                                                                                                  addr0270:
                                                                                                                  §§push(this.revertProgress);
                                                                                                                  if(_loc2_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr0281:
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr028b:
                                                                                                                        this.endProgress();
                                                                                                                        if(_loc3_ && _loc2_)
                                                                                                                        {
                                                                                                                           addr02d2:
                                                                                                                           addr02f4:
                                                                                                                           addr02d6:
                                                                                                                           §§push(this.progressBar);
                                                                                                                           §§push(LocaUtils);
                                                                                                                           §§push(this._data.cycleLength);
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 1000);
                                                                                                                           }
                                                                                                                           §§pop().label = §§pop().getDuration(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr02f7);
                                                                                                                     }
                                                                                                                     §§goto(addr02d2);
                                                                                                                  }
                                                                                                                  §§goto(addr02f7);
                                                                                                               }
                                                                                                               §§goto(addr0262);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr02b3:
                                                                                                               §§pop().progress = 1;
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr02d2);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr02f7);
                                                                                                         }
                                                                                                         §§goto(addr02f4);
                                                                                                      }
                                                                                                      §§goto(addr01a1);
                                                                                                   }
                                                                                                   §§goto(addr01c7);
                                                                                                }
                                                                                                §§goto(addr0270);
                                                                                             }
                                                                                             §§goto(addr0176);
                                                                                          }
                                                                                          §§goto(addr0201);
                                                                                       }
                                                                                       §§goto(addr0248);
                                                                                    }
                                                                                    §§goto(addr01cf);
                                                                                 }
                                                                                 §§goto(addr028b);
                                                                              }
                                                                              §§goto(addr014f);
                                                                           }
                                                                           §§goto(addr0281);
                                                                        }
                                                                        §§goto(addr0132);
                                                                     }
                                                                     §§goto(addr0248);
                                                                  }
                                                               }
                                                               §§goto(addr01cf);
                                                            }
                                                            §§goto(addr00fe);
                                                         }
                                                         §§goto(addr00e6);
                                                      }
                                                      §§goto(addr01cf);
                                                   }
                                                   §§goto(addr01be);
                                                }
                                                §§goto(addr00b3);
                                             }
                                             addr02f7:
                                             return;
                                          }
                                          §§push(this.progressBar);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§goto(addr02b3);
                                          }
                                          §§goto(addr02d6);
                                       }
                                       §§goto(addr0258);
                                    }
                                    §§goto(addr0248);
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr0270);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr01ea);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0248);
            }
            §§goto(addr0067);
         }
         §§goto(addr0221);
      }
      
      private function endProgress() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            clearInterval(this._intervalID);
            if(!_loc1_)
            {
               addr0038:
               dispatchEvent(new Event(Event.CLOSE));
            }
            return;
         }
         §§goto(addr0038);
      }
      
      private function _EmergencyProggresTimerComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr006f:
                     _loc1_.mxmlContent = [this._EmergencyProggresTimerComponent_BriskImageDynaLib1_c(),this._EmergencyProggresTimerComponent_ProgressBarComponent1_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0099:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0099);
            }
            §§goto(addr006f);
         }
         §§goto(addr0099);
      }
      
      private function _EmergencyProggresTimerComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr006c);
            }
            §§goto(addr008a);
         }
         addr004b:
         _loc1_.width = 25;
         if(_loc3_ || _loc2_)
         {
            addr006c:
            _loc1_.height = 25;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr007e);
            }
            §§goto(addr008a);
         }
         addr007e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr008a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyProggresTimerComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.label = "00:00";
            if(!_loc2_)
            {
               _loc1_.progress = 0.5;
               if(!_loc2_)
               {
                  _loc1_.id = "progressBar";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0085:
                              this.progressBar = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"progressBar",this.progressBar);
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0063);
            }
            §§goto(addr007c);
         }
         addr00a4:
         return _loc1_;
      }
      
      public function ___EmergencyProggresTimerComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      public function ___EmergencyProggresTimerComponent_Group1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleRemoved();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr0043:
                  this._1131509414progressBar = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
            addr0088:
            return;
         }
         §§goto(addr0043);
      }
   }
}

