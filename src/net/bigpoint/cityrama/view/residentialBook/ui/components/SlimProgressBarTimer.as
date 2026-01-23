package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class SlimProgressBarTimer extends Group
   {
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:TimerBarComponentVo;
      
      private var _intervalID:uint;
      
      private var _dataIsDirty:Boolean;
      
      private var _progressBarStyle:String;
      
      public function SlimProgressBarTimer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr0028:
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.mxmlContent = [this._SlimProgressBarTimer_HGroup1_c()];
                  if(!_loc1_)
                  {
                     addr0052:
                     this.addEventListener("removedFromStage",this.___SlimProgressBarTimer_Group1_removedFromStage);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0052);
            }
            addr005e:
            return;
         }
         §§goto(addr0028);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  this._dataIsDirty = true;
                  if(!(_loc3_ && _loc3_))
                  {
                     this._data = param1;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0070:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0070);
            }
            addr0075:
            return;
         }
         §§goto(addr0070);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§goto(addr0020);
            }
            §§goto(addr006b);
         }
         addr0020:
         if(this._dataIsDirty)
         {
            if(_loc2_ || _loc2_)
            {
               this._dataIsDirty = false;
               if(_loc2_ || Boolean(this))
               {
                  clearInterval(this._intervalID);
                  if(!_loc1_)
                  {
                     addr006b:
                     this._intervalID = setInterval(this.handleInterval,1000);
                     if(!_loc1_)
                     {
                        addr0083:
                        this.handleInterval();
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0083);
            }
         }
         addr0089:
      }
      
      private function handleRemoved() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            clearInterval(this._intervalID);
         }
      }
      
      private function handleInterval() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            §§push(this._data);
            if(!_loc2_)
            {
               §§push(§§pop().waitingForStart);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§push(this._data);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§pop().targetTime);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr008e:
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr00a5:
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§push(this._data);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop().cycleLength);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr00d2:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this._data);
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr00ec:
                                                                           §§push(this._data.currentTime);
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop() + 1000);
                                                                           }
                                                                           §§pop().currentTime = §§pop();
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr0118:
                                                                              addr0114:
                                                                              §§push(this._data.currentTime);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop().startTime);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr0153:
                                                                                          addr0143:
                                                                                          §§push(this._data.targetTime);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() - this._data.startTime);
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr0159);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr01a3);
                                                                                    }
                                                                                    §§goto(addr0153);
                                                                                 }
                                                                                 §§goto(addr0143);
                                                                              }
                                                                              addr0159:
                                                                              §§push(§§pop());
                                                                              if(_loc3_ || Boolean(_loc1_))
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 if(!(_loc2_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    addr0180:
                                                                                    §§push(this.revertProgress);
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(1 - _loc1_);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr01a3:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                {
                                                                                                   §§goto(addr01b1);
                                                                                                }
                                                                                                §§goto(addr01ea);
                                                                                             }
                                                                                             §§goto(addr01b1);
                                                                                          }
                                                                                          §§goto(addr01c9);
                                                                                       }
                                                                                       §§goto(addr01b7);
                                                                                    }
                                                                                    §§goto(addr0243);
                                                                                 }
                                                                                 §§goto(addr01b7);
                                                                              }
                                                                              addr01b1:
                                                                              _loc1_ = §§pop();
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr01b7:
                                                                                 §§push(this.progressBar);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().progress = _loc1_;
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr01c9:
                                                                                       §§push(this.progressBar);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop().progress);
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr01ea:
                                                                                             §§push(1);
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr01ff:
                                                                                                   var _temp_23:* = §§pop();
                                                                                                   §§push(_temp_23);
                                                                                                   §§push(_temp_23);
                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr020d:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               addr022c:
                                                                                                               §§push(this.revertProgress);
                                                                                                               if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr0243:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           this.endProgress();
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr025f:
                                                                                                                              §§push(this.progressBar);
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 addr0275:
                                                                                                                                 addr0273:
                                                                                                                                 addr0270:
                                                                                                                                 §§push(§§pop().progress <= 0);
                                                                                                                                 if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                                                 {
                                                                                                                                    addr0283:
                                                                                                                                    var _temp_31:* = §§pop();
                                                                                                                                    addr0284:
                                                                                                                                    §§push(_temp_31);
                                                                                                                                    if(_temp_31)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr02b9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02c2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02b8);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr02b9:
                                                                                                                                 §§push(this.revertProgress);
                                                                                                                                 if(_loc3_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr02b8:
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr02c2:
                                                                                                                                       this.endProgress();
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr02e2);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr02dd:
                                                                                                                                 §§pop().progress = 1;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr02e2);
                                                                                                                        }
                                                                                                                        §§goto(addr02c2);
                                                                                                                     }
                                                                                                                     §§goto(addr025f);
                                                                                                                  }
                                                                                                                  §§goto(addr0283);
                                                                                                               }
                                                                                                               §§goto(addr0243);
                                                                                                            }
                                                                                                            §§goto(addr02c2);
                                                                                                         }
                                                                                                         §§goto(addr02b8);
                                                                                                      }
                                                                                                      §§goto(addr0243);
                                                                                                   }
                                                                                                   §§goto(addr0284);
                                                                                                }
                                                                                                §§goto(addr0243);
                                                                                             }
                                                                                             §§goto(addr0275);
                                                                                          }
                                                                                          §§goto(addr0273);
                                                                                       }
                                                                                       §§goto(addr0270);
                                                                                    }
                                                                                    §§goto(addr022c);
                                                                                 }
                                                                                 §§goto(addr02dd);
                                                                              }
                                                                           }
                                                                           §§goto(addr02e2);
                                                                        }
                                                                        §§goto(addr0118);
                                                                     }
                                                                     §§goto(addr02e2);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.progressBar);
                                                                  }
                                                                  §§goto(addr02dd);
                                                               }
                                                               §§goto(addr02b8);
                                                            }
                                                            §§goto(addr01b1);
                                                         }
                                                         §§goto(addr00ec);
                                                      }
                                                      §§goto(addr0180);
                                                   }
                                                   §§goto(addr0283);
                                                }
                                                §§goto(addr00d2);
                                             }
                                             §§goto(addr020d);
                                          }
                                          §§goto(addr02b9);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 addr02e2:
                                 return;
                              }
                              §§goto(addr01ff);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr0284);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr01ff);
               }
               §§goto(addr02b9);
            }
            §§goto(addr0118);
         }
         §§goto(addr0114);
      }
      
      public function set progressBarWidth(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.progressBar.width = param1;
         }
      }
      
      private function endProgress() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            clearInterval(this._intervalID);
            if(_loc1_)
            {
               dispatchEvent(new Event(Event.CLOSE));
            }
         }
      }
      
      public function set progressBarTint(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.progressBar.tint = param1;
         }
      }
      
      private function _SlimProgressBarTimer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._SlimProgressBarTimer_SlimProgressBarComponent1_i()];
                        §§goto(addr006b);
                     }
                     §§goto(addr0091);
                  }
                  addr006b:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0091:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00a5:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a9);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr004f);
         }
         §§goto(addr00a5);
      }
      
      private function _SlimProgressBarTimer_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.id = "progressBar";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0062:
                        this.progressBar = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0074:
                           BindingManager.executeBindings(this,"progressBar",this.progressBar);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0074);
               }
            }
            §§goto(addr0062);
         }
         §§goto(addr0074);
      }
      
      public function ___SlimProgressBarTimer_Group1_removedFromStage(param1:Event) : void
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
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1131509414progressBar = param1;
                  if(!_loc4_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0041);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
   }
}

