package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class NumericStepperComponent extends Group implements IBindingClient
   {
      
      public static const KEY_RETURN:String = "KEY_RETURN";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         KEY_RETURN = "KEY_RETURN";
      }
      
      private var _1691997336inputBackground:BriskImageDynaLib;
      
      private var _103901296minus:MultistateButton;
      
      private var _3444122plus:MultistateButton;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _value:uint = 1;
      
      private var _intervalID:uint;
      
      private var _timeoutID:uint;
      
      private var _step:int;
      
      private var _ctrlPressed:Boolean;
      
      private var _max:uint;
      
      private var _min:uint;
      
      private var _limit:uint;
      
      private var _minMaxSet:Boolean;
      
      private var _limitSet:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumericStepperComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(_loc3_ || _loc1_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || _loc3_)
                              {
                                 addr007c:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00b2:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._NumericStepperComponent_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      addr00dd:
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr00e4:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr0114:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_NumericStepperComponentWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr0144:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              addr0163:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return NumericStepperComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr0188:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01ae:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       addr01dd:
                                                                                       this.mxmlContent = [this._NumericStepperComponent_HGroup1_c(),this._NumericStepperComponent_TextInputCursorSave1_i()];
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01f4:
                                                                                          this.addEventListener("creationComplete",this.___NumericStepperComponent_Group1_creationComplete);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr0210:
                                                                                             i = 0;
                                                                                             addr020e:
                                                                                          }
                                                                                          var _temp_14:*;
                                                                                          loop0:
                                                                                          do
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   while(§§pop() < §§pop().§§slot[1].length)
                                                                                                   {
                                                                                                      Binding(bindings[i]).execute();
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(var _temp_14:* = §§pop(), §§pop().§§slot[4] = _temp_14, _loc3_);
                                                                                          
                                                                                          return;
                                                                                          addr026b:
                                                                                       }
                                                                                       §§goto(addr020e);
                                                                                    }
                                                                                    §§goto(addr026b);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01dd);
                                                                           }
                                                                           §§goto(addr01ae);
                                                                        }
                                                                        §§goto(addr0210);
                                                                     }
                                                                     §§goto(addr020e);
                                                                  }
                                                                  §§goto(addr0210);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0163);
                                                      }
                                                      §§goto(addr0114);
                                                   }
                                                   §§goto(addr026b);
                                                }
                                                §§goto(addr0210);
                                             }
                                             §§goto(addr00dd);
                                          }
                                          §§goto(addr00e4);
                                       }
                                    }
                                    §§goto(addr01f4);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr00dd);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0144);
               }
               §§goto(addr020e);
            }
            §§goto(addr0040);
         }
         §§goto(addr0210);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            NumericStepperComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr004b);
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr004b:
            return;
         }
         §§goto(addr0051);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.value = 1;
            if(!(_loc2_ && _loc2_))
            {
               addr0031:
               §§push(this.minus);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().addEventListener(MouseEvent.CLICK,this.handleMinusClick);
                  if(_loc3_)
                  {
                     §§push(this.plus);
                     if(_loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.CLICK,this.handlePlusClick);
                        if(!_loc2_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr010e);
               }
               §§goto(addr00e6);
            }
            addr006f:
            if(stage)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  stage.addEventListener(KeyboardEvent.KEY_DOWN,this.handleKeyDown);
                  if(_loc3_)
                  {
                     addr00a6:
                     stage.addEventListener(KeyboardEvent.KEY_UP,this.handleKeyUp);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr00c4);
                     }
                  }
                  §§goto(addr00f8);
               }
               §§goto(addr00a6);
            }
            addr00c4:
            §§push(this.valueLabel);
            if(_loc3_ || Boolean(param1))
            {
               §§pop().setStyle("backgroundAlpha",0);
               if(_loc3_)
               {
                  addr00e6:
                  this.minus.addEventListener(MouseEvent.MOUSE_DOWN,this.handleMinusDown);
                  if(_loc3_)
                  {
                     addr00fc:
                     this.plus.addEventListener(MouseEvent.MOUSE_DOWN,this.handlePlusDown);
                     addr00f8:
                     if(_loc3_)
                     {
                        addr010e:
                        §§push(this.valueLabel);
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr012a);
                        }
                        §§goto(addr0150);
                     }
                  }
                  §§goto(addr014c);
               }
               §§goto(addr00f8);
            }
            addr012a:
            §§pop().filters = [new GlowFilter(0,1,2,2,10)];
            if(_loc3_ || Boolean(this))
            {
               addr0150:
               this.valueLabel.addEventListener(KeyboardEvent.KEY_UP,this.onInputKeyUp);
               addr014c:
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function onInputKeyUp(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.valueLabel);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop().text == "");
                     if(_loc2_ || Boolean(param1))
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           addr0067:
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr009c:
                                    addr0090:
                                    addr008c:
                                    §§push(this.valueLabel.text == "0");
                                    if(!_loc3_)
                                    {
                                       addr009b:
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          dispatchEvent(new Event(KEY_RETURN));
                                       }
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
         }
         addr00ba:
      }
      
      private function handleKeyUp(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(param1.keyCode == Keyboard.CONTROL)
            {
               if(_loc2_)
               {
                  this._ctrlPressed = false;
                  if(_loc2_)
                  {
                     addr0047:
                     §§push(this.value > this._max);
                     if(!_loc3_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 addr0083:
                                 addr0071:
                                 §§push(this._minMaxSet);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr0082:
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       this.value = this._max;
                                    }
                                 }
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr0083);
                  }
                  addr009c:
                  return;
               }
            }
            §§goto(addr0047);
         }
         §§goto(addr0071);
      }
      
      private function handleKeyDown(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1.keyCode == Keyboard.CONTROL)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0032:
                  this._ctrlPressed = true;
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function handlePlusDown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(_loc3_ || _loc3_)
            {
               clearInterval(this._intervalID);
               if(!_loc2_)
               {
                  clearTimeout(this._timeoutID);
                  if(!_loc2_)
                  {
                     this._step = 1;
                     if(_loc3_)
                     {
                        addr0080:
                        this._timeoutID = setTimeout(this.beginInterval,500);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0080);
               }
               addr0093:
               return;
            }
         }
         §§goto(addr0080);
      }
      
      private function beginInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            clearInterval(this._intervalID);
            if(_loc2_)
            {
               this._intervalID = setInterval(this.doInterval,10);
            }
         }
      }
      
      private function handleMouseUp(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.root.removeEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(_loc2_ || Boolean(param1))
            {
               §§goto(addr004a);
            }
            §§goto(addr005a);
         }
         addr004a:
         clearInterval(this._intervalID);
         if(!_loc3_)
         {
            addr005a:
            clearTimeout(this._timeoutID);
         }
      }
      
      private function handleMinusDown(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(!_loc3_)
            {
               clearInterval(this._intervalID);
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0061);
            }
            addr0051:
            clearTimeout(this._timeoutID);
            if(_loc2_)
            {
               addr0061:
               this._step = -1;
               if(_loc2_)
               {
                  this._timeoutID = setTimeout(this.beginInterval,500);
               }
            }
            §§goto(addr007f);
         }
         addr007f:
      }
      
      private function doInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._limitSet)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr002b:
                  if(this.value + this._step >= this._limit)
                  {
                     if(_loc2_)
                     {
                        this.value = this._limit;
                        if(_loc1_ && Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     this.value += this._step;
                     if(_loc1_)
                     {
                     }
                  }
               }
            }
            else
            {
               this.value += this._step;
            }
            return;
         }
         §§goto(addr002b);
      }
      
      private function handleMinusClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(this._ctrlPressed);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop());
               if(!(_loc5_ && _loc3_))
               {
                  addr004a:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           addr0074:
                           addr005c:
                           §§push(this._minMaxSet);
                           if(_loc4_)
                           {
                              addr0066:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 this.value = this._min;
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              var _loc2_:* = this;
                              var _loc3_:* = _loc2_.value - 1;
                              if(_loc4_)
                              {
                                 _loc2_.value = _loc3_;
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0066);
            }
            §§goto(addr004a);
         }
         §§goto(addr005c);
      }
      
      private function handlePlusClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            §§push(this._ctrlPressed);
            if(_loc4_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(this._minMaxSet);
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr0066);
                              }
                              §§goto(addr0099);
                           }
                           addr0066:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 this.value = this._max;
                                 if(!(_loc4_ || Boolean(param1)))
                                 {
                                    addr00a3:
                                    if(this.value + 1 > this._limit)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          this.value = this._limit;
                                          if(_loc5_ && _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       var _loc2_:* = this;
                                       var _loc3_:* = _loc2_.value + 1;
                                       if(_loc4_)
                                       {
                                          _loc2_.value = _loc3_;
                                       }
                                       if(_loc5_ && Boolean(_loc3_))
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr00a3);
                           }
                           else
                           {
                              addr0099:
                              if(this._limitSet)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr00a3);
                                 }
                              }
                              else
                              {
                                 _loc2_ = this;
                                 _loc3_ = _loc2_.value + 1;
                                 if(_loc4_)
                                 {
                                    _loc2_.value = _loc3_;
                                 }
                              }
                           }
                        }
                        §§goto(addr0126);
                     }
                  }
                  §§goto(addr0066);
               }
            }
            §§goto(addr0099);
         }
         addr0126:
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function set value(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._value = param1;
            if(!_loc3_)
            {
               this.valueLabel.text = param1.toString();
               if(!_loc3_)
               {
                  if(param1 <= 1)
                  {
                     if(_loc2_ || Boolean(param1))
                     {
                        addr0045:
                        §§push(this.minus);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(false);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop().enabled = §§pop();
                              if(!_loc3_)
                              {
                                 addr0079:
                                 clearInterval(this._intervalID);
                                 if(_loc2_ || _loc3_)
                                 {
                                    clearTimeout(this._timeoutID);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00c5:
                                       if(this._limitSet)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00d2);
                                          }
                                       }
                                       §§goto(addr00e4);
                                    }
                                    addr00d2:
                                    this.plus.enabled = param1 < this._limit;
                                    if(_loc2_)
                                    {
                                       addr00e4:
                                       dispatchEvent(new Event(Event.CHANGE,true,true));
                                    }
                                    return;
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr00c5);
                           }
                           else
                           {
                              addr00b2:
                              §§pop().enabled = §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr00c5);
                              }
                           }
                           §§goto(addr00e4);
                        }
                        else
                        {
                           addr00b1:
                           §§push(true);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0079);
                  }
                  else
                  {
                     §§push(this.minus);
                  }
                  §§goto(addr00b1);
               }
            }
            §§goto(addr00c5);
         }
         §§goto(addr0045);
      }
      
      public function setMaxMin(param1:uint, param2:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this._max = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               this._min = param2;
               if(_loc3_ || Boolean(this))
               {
                  if(param2 == 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0074:
                        this._min = 1;
                        if(!_loc4_)
                        {
                           addr0080:
                           this._minMaxSet = true;
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr0074);
         }
         addr0085:
      }
      
      public function setLimit(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._limit = param1;
            if(_loc3_ || Boolean(this))
            {
               this._limitSet = true;
            }
         }
      }
      
      private function _NumericStepperComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0054:
                     _loc1_.gap = 15;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._NumericStepperComponent_MultistateButton1_i(),this._NumericStepperComponent_HGroup2_c(),this._NumericStepperComponent_MultistateButton2_i()];
                        addr005e:
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr00a2);
                     }
                  }
               }
               addr008e:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a2:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr005e);
      }
      
      private function _NumericStepperComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 40;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.imageNameLeft = "button_icon_minus";
                  if(_loc3_)
                  {
                     addr0067:
                     _loc1_.id = "minus";
                     if(_loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009b:
                                 this.minus = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"minus",this.minus);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00a5);
                           }
                           addr00b2:
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0072);
            }
            §§goto(addr0067);
         }
         §§goto(addr008a);
      }
      
      private function _NumericStepperComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.left = 10;
                  §§goto(addr0044);
               }
               §§goto(addr0073);
            }
         }
         addr0044:
         if(_loc3_ || Boolean(this))
         {
            _loc1_.right = 10;
            if(!(_loc2_ && _loc3_))
            {
               addr0073:
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._NumericStepperComponent_BriskImageDynaLib1_c(),this._NumericStepperComponent_BriskImageDynaLib2_i(),this._NumericStepperComponent_BriskImageDynaLib3_c()];
                  if(_loc3_)
                  {
                     addr00a4:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00bc);
               }
            }
            §§goto(addr00a4);
         }
         addr00bc:
         return _loc1_;
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_left";
               addr0037:
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr0037);
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_middle";
               if(!_loc2_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr008a);
            }
            §§goto(addr0096);
         }
         addr003e:
         _loc1_.percentWidth = 100;
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "inputBackground";
               if(_loc3_ || _loc3_)
               {
                  addr008a:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0096);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009f);
               }
               addr0096:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr009f:
                  this.inputBackground = _loc1_;
                  if(!_loc2_)
                  {
                     addr00a9:
                     BindingManager.executeBindings(this,"inputBackground",this.inputBackground);
                  }
               }
               §§goto(addr00b6);
            }
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_right";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0069);
            }
         }
         addr006d:
         return _loc1_;
      }
      
      private function _NumericStepperComponent_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.imageNameLeft = "button_icon_positive";
                  if(_loc2_)
                  {
                     _loc1_.id = "plus";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0099:
                                 this.plus = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"plus",this.plus);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00a3);
                           }
                           addr00b0:
                           return _loc1_;
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0090);
                  }
               }
            }
         }
         §§goto(addr0099);
      }
      
      private function _NumericStepperComponent_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc2_ && _loc3_))
            {
               addr003d:
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.text = "1";
                  if(_loc3_)
                  {
                     _loc1_.restrict = " 0123456789";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007a:
                        _loc1_.selectable = true;
                        if(!_loc2_)
                        {
                           addr0084:
                           _loc1_.styleName = "numStepper";
                           if(!_loc2_)
                           {
                              addr008f:
                              _loc1_.addEventListener("change",this.__valueLabel_change);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a7:
                                 _loc1_.id = "valueLabel";
                                 if(_loc3_)
                                 {
                                    addr00b2:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00c9:
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00d2:
                                             this.valueLabel = _loc1_;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr00e4:
                                                BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
                                             }
                                          }
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00a7);
            }
            §§goto(addr007a);
         }
         §§goto(addr003d);
      }
      
      public function __valueLabel_change(param1:TextOperationEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.value = Number(this.valueLabel.text);
         }
      }
      
      public function ___NumericStepperComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _NumericStepperComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0054);
               }
               §§goto(addr0079);
            }
            §§goto(addr0077);
         }
         addr0054:
         §§push(§§pop().§§slot[1]);
         if(!(_loc2_ && _loc3_))
         {
            §§pop()[0] = new Binding(this,function():Number
            {
               return inputBackground.width + 6;
            },null,"valueLabel.width");
            addr0079:
            addr0077:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputBackground() : BriskImageDynaLib
      {
         return this._1691997336inputBackground;
      }
      
      public function set inputBackground(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1691997336inputBackground;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1691997336inputBackground = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputBackground",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get minus() : MultistateButton
      {
         return this._103901296minus;
      }
      
      public function set minus(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._103901296minus;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._103901296minus = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minus",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get plus() : MultistateButton
      {
         return this._3444122plus;
      }
      
      public function set plus(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3444122plus;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._3444122plus = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plus",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : TextInputCursorSave
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:TextInputCursorSave) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2025208835valueLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr0046:
                  this._2025208835valueLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0065);
            }
            addr008b:
            return;
         }
         §§goto(addr0046);
      }
   }
}

