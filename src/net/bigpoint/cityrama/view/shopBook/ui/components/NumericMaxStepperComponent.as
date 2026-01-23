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
   
   public class NumericMaxStepperComponent extends Group implements IBindingClient
   {
      
      public static const KEY_RETURN:String = "KEY_RETURN";
      
      public static const MAX_MINUS_CLICKED:String = "MAX_MINUS_CLICKED";
      
      public static const MAX_PLUS_CLICKED:String = "MAX_PLUS_CLICKED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         KEY_RETURN = "KEY_RETURN";
         if(_loc1_)
         {
            MAX_MINUS_CLICKED = "MAX_MINUS_CLICKED";
            if(_loc1_ || _loc2_)
            {
               addr0043:
               MAX_PLUS_CLICKED = "MAX_PLUS_CLICKED";
            }
         }
         return;
      }
      §§goto(addr0043);
      
      private var _1775187398bgMiddle:BriskImageDynaLib;
      
      private var _391156076maxMinus:MultistateButton;
      
      private var _843994398maxPlus:MultistateButton;
      
      private var _103901296minus:MultistateButton;
      
      private var _3444122plus:MultistateButton;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _value:uint = 1;
      
      private var _intervalID:uint;
      
      private var _timeoutID:uint;
      
      private var _step:int;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumericMaxStepperComponent()
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
         if(_loc3_ || _loc2_)
         {
            §§push(null);
            if(!(_loc4_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0046:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    addr0086:
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._NumericMaxStepperComponent_bindingsSetup();
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr00c7:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr00e1:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr00f1:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            addr00fc:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_NumericMaxStepperComponentWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        addr0142:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr015f:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return NumericMaxStepperComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01d2:
                                                                                       this.mxmlContent = [this._NumericMaxStepperComponent_HGroup1_c(),this._NumericMaxStepperComponent_TextInputCursorSave1_i()];
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          this.addEventListener("creationComplete",this.___NumericMaxStepperComponent_Group1_creationComplete);
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             addr020c:
                                                                                             i = 0;
                                                                                             addr020a:
                                                                                          }
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
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(var _temp_14:* = §§pop(), §§pop().§§slot[4] = _temp_14, !_loc4_);
                                                                                       
                                                                                       return;
                                                                                       addr0282:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr020a);
                                                                              }
                                                                              §§goto(addr0282);
                                                                           }
                                                                           §§goto(addr01d2);
                                                                        }
                                                                        §§goto(addr020c);
                                                                     }
                                                                     §§goto(addr020a);
                                                                  }
                                                                  §§goto(addr020c);
                                                               }
                                                               §§goto(addr0142);
                                                            }
                                                         }
                                                         §§goto(addr015f);
                                                      }
                                                      §§goto(addr020c);
                                                   }
                                                   §§goto(addr0142);
                                                }
                                                §§goto(addr00f1);
                                             }
                                             §§goto(addr01d2);
                                          }
                                          §§goto(addr020c);
                                       }
                                       §§goto(addr00c7);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr020a);
                  }
                  §§goto(addr020c);
               }
               §§goto(addr00c7);
            }
            §§goto(addr0046);
         }
         §§goto(addr020c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            NumericMaxStepperComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.value = 1;
            if(_loc2_ || _loc2_)
            {
               §§push(this.minus);
               if(!(_loc3_ && param1))
               {
                  §§pop().addEventListener(MouseEvent.CLICK,this.handleMinusClick);
                  if(!_loc3_)
                  {
                     §§push(this.plus);
                     if(_loc2_ || _loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.CLICK,this.handlePlusClick);
                        if(!_loc3_)
                        {
                           §§push(this.valueLabel);
                           if(!_loc3_)
                           {
                              §§pop().setStyle("backgroundAlpha",0);
                              if(_loc2_)
                              {
                                 addr0097:
                                 this.minus.addEventListener(MouseEvent.MOUSE_DOWN,this.handleMinusDown);
                                 addr0093:
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ad);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr010b);
                        }
                        §§goto(addr0093);
                     }
                     addr00ad:
                     this.plus.addEventListener(MouseEvent.MOUSE_DOWN,this.handlePlusDown);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00c7:
                        §§push(this.valueLabel);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().filters = [new GlowFilter(0,1,2,2,10)];
                           if(!(_loc3_ && _loc3_))
                           {
                              addr010b:
                              this.valueLabel.addEventListener(KeyboardEvent.KEY_UP,this.onInputKeyUp);
                              addr0107:
                           }
                           §§goto(addr0119);
                        }
                        §§goto(addr010b);
                     }
                  }
                  §§goto(addr0119);
               }
               §§goto(addr0097);
            }
         }
         addr0119:
      }
      
      private function onInputKeyUp(param1:KeyboardEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               if(!_loc2_)
               {
                  §§push(this.valueLabel);
                  if(!_loc2_)
                  {
                     §§push(§§pop().text == "");
                     if(!_loc2_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           addr005a:
                           var _temp_3:* = §§pop();
                           §§push(_temp_3);
                           if(_temp_3)
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§pop();
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr0096:
                                    addr008a:
                                    §§push(this.valueLabel.text == "0");
                                    if(!_loc2_)
                                    {
                                       addr0095:
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00a7:
                                          dispatchEvent(new Event(KEY_RETURN));
                                       }
                                    }
                                 }
                                 §§goto(addr00b4);
                              }
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr005a);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00a7);
            }
         }
         addr00b4:
      }
      
      private function handlePlusDown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(!(_loc2_ && _loc3_))
            {
               clearInterval(this._intervalID);
               if(_loc3_ || _loc2_)
               {
                  clearTimeout(this._timeoutID);
                  if(!_loc2_)
                  {
                     §§goto(addr007a);
                  }
                  §§goto(addr0085);
               }
            }
         }
         addr007a:
         this._step = 1;
         if(_loc3_)
         {
            addr0085:
            this._timeoutID = setTimeout(this.beginInterval,500);
         }
      }
      
      private function beginInterval() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            clearInterval(this._intervalID);
            if(!(_loc2_ && _loc1_))
            {
               addr0037:
               this._intervalID = setInterval(this.doInterval,10);
            }
            return;
         }
         §§goto(addr0037);
      }
      
      private function handleMouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.root.removeEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§goto(addr0054);
            }
            §§goto(addr006c);
         }
         addr0054:
         clearInterval(this._intervalID);
         if(_loc3_ || Boolean(this))
         {
            addr006c:
            clearTimeout(this._timeoutID);
         }
      }
      
      private function handleMinusDown(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
            if(!(_loc3_ && _loc2_))
            {
               clearInterval(this._intervalID);
               if(!_loc3_)
               {
                  §§goto(addr0056);
               }
               §§goto(addr007c);
            }
            addr0056:
            clearTimeout(this._timeoutID);
            if(!(_loc3_ && _loc3_))
            {
               addr007c:
               this._step = -1;
               if(!(_loc3_ && _loc3_))
               {
                  addr008f:
                  this._timeoutID = setTimeout(this.beginInterval,500);
               }
            }
            return;
         }
         §§goto(addr008f);
      }
      
      private function doInterval() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.value += this._step;
         }
      }
      
      private function handleMinusClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_.value - 1;
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.value = _loc3_;
            }
         }
      }
      
      private function handlePlusClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_.value + 1;
            if(_loc5_)
            {
               _loc2_.value = _loc3_;
            }
         }
      }
      
      private function handleMaxPlusClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event(MAX_PLUS_CLICKED,true,true));
            if(_loc1_)
            {
               addr0029:
               this.enableMaxPlusButton(false);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function handleMaxMinusClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event(MAX_MINUS_CLICKED,true,true));
            if(!(_loc1_ && _loc1_))
            {
               addr003c:
               this.enableMaxMinusButton(false);
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function set value(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._value = param1;
            if(!_loc2_)
            {
               this.valueLabel.text = param1.toString();
               if(!_loc2_)
               {
                  addr003b:
                  if(param1 <= 1)
                  {
                     if(_loc3_)
                     {
                        §§push(this.minus);
                        if(_loc3_)
                        {
                           §§push(false);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§pop().enabled = §§pop();
                              if(_loc3_ || Boolean(param1))
                              {
                                 clearInterval(this._intervalID);
                                 if(_loc3_ || _loc2_)
                                 {
                                    clearTimeout(this._timeoutID);
                                    if(!_loc2_)
                                    {
                                       addr00bd:
                                       dispatchEvent(new Event(Event.CHANGE,true,true));
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00bd);
                              }
                           }
                           else
                           {
                              addr00b5:
                              §§pop().enabled = §§pop();
                              if(!_loc2_)
                              {
                                 §§goto(addr00bd);
                              }
                           }
                           §§goto(addr00ce);
                        }
                        else
                        {
                           addr00b4:
                           §§push(true);
                        }
                        §§goto(addr00b5);
                     }
                     addr00ce:
                     return;
                  }
                  §§push(this.minus);
                  §§goto(addr00b4);
               }
            }
            §§goto(addr00bd);
         }
         §§goto(addr003b);
      }
      
      public function enableMaxMinusButton(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.maxMinus.enabled = param1;
         }
      }
      
      public function enableMaxPlusButton(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.maxPlus.enabled = param1;
         }
      }
      
      private function _NumericMaxStepperComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr005d:
                     _loc1_.gap = 2;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._NumericMaxStepperComponent_MultistateButton1_i(),this._NumericMaxStepperComponent_MultistateButton2_i(),this._NumericMaxStepperComponent_HGroup2_c(),this._NumericMaxStepperComponent_MultistateButton3_i(),this._NumericMaxStepperComponent_MultistateButton4_i()];
                        addr0067:
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00b6:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00ba);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr005d);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr00b6);
      }
      
      private function _NumericMaxStepperComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0046);
               }
               §§goto(addr0093);
            }
            §§goto(addr00c2);
         }
         addr0046:
         _loc1_.imageNameLeft = "button_icon_minus_double";
         if(_loc2_ || _loc2_)
         {
            _loc1_.addEventListener("click",this.__maxMinus_click);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "maxMinus";
               if(!(_loc3_ && _loc3_))
               {
                  addr0093:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00b1:
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr00c2);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  addr00c2:
                  this.maxMinus = _loc1_;
                  if(_loc2_)
                  {
                     addr00cc:
                     BindingManager.executeBindings(this,"maxMinus",this.maxMinus);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00cc);
         }
         addr00d9:
         return _loc1_;
      }
      
      public function __maxMinus_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleMaxMinusClick();
         }
      }
      
      private function _NumericMaxStepperComponent_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 27;
            if(_loc2_)
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(!_loc3_)
               {
                  _loc1_.imageNameLeft = "button_icon_minus_mini";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.useMiniSkin = true;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "minus";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                        }
                        addr00a7:
                        this.minus = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"minus",this.minus);
                        }
                        §§goto(addr00c6);
                     }
                     addr00c6:
                     return _loc1_;
                  }
                  §§goto(addr007e);
               }
               §§goto(addr009e);
            }
            §§goto(addr00b9);
         }
         §§goto(addr009e);
      }
      
      private function _NumericMaxStepperComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._NumericMaxStepperComponent_BriskImageDynaLib1_c(),this._NumericMaxStepperComponent_BriskImageDynaLib2_i(),this._NumericMaxStepperComponent_BriskImageDynaLib3_c()];
                     §§goto(addr0060);
                  }
               }
            }
            §§goto(addr009c);
         }
         addr0060:
         if(_loc2_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr009c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bar_grey_left";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr0074);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bar_grey_middle";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0062:
                     _loc1_.id = "bgMiddle";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a4:
                                 this.bgMiddle = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b6:
                                    BindingManager.executeBindings(this,"bgMiddle",this.bgMiddle);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr0062);
            }
         }
         §§goto(addr00b6);
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "bar_grey_right";
               if(!_loc3_)
               {
                  addr0059:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr006d);
            }
            addr0071:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _NumericMaxStepperComponent_MultistateButton3_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 27;
            if(!_loc3_)
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.imageNameLeft = "button_icon_plus_mini";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.useMiniSkin = true;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr007a:
                        _loc1_.id = "plus";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr00af);
                                 }
                              }
                              §§goto(addr00b9);
                           }
                           addr00af:
                           this.plus = _loc1_;
                           if(!_loc3_)
                           {
                              addr00b9:
                              BindingManager.executeBindings(this,"plus",this.plus);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00b9);
                     }
                  }
                  §§goto(addr009e);
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr00af);
         }
         §§goto(addr007a);
      }
      
      private function _NumericMaxStepperComponent_MultistateButton4_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 40;
            if(_loc3_ || _loc2_)
            {
               _loc1_.libNameLeft = "gui_popups_shopBook";
               if(!_loc2_)
               {
                  _loc1_.imageNameLeft = "button_icon_plus_double";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.addEventListener("click",this.__maxPlus_click);
                     if(!_loc2_)
                     {
                        _loc1_.id = "maxPlus";
                        if(_loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr0092);
                              }
                           }
                           §§goto(addr009b);
                        }
                     }
                     addr0092:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr009b:
                        this.maxPlus = _loc1_;
                        if(!_loc2_)
                        {
                           BindingManager.executeBindings(this,"maxPlus",this.maxPlus);
                        }
                     }
                     §§goto(addr00b2);
                  }
               }
               addr00b2:
               return _loc1_;
            }
         }
         §§goto(addr0086);
      }
      
      public function __maxPlus_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleMaxPlusClick();
         }
      }
      
      private function _NumericMaxStepperComponent_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 1;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.text = "1";
                  if(_loc3_)
                  {
                     addr0051:
                     _loc1_.restrict = " 0123456789";
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.selectable = true;
                        if(_loc3_ || _loc2_)
                        {
                           addr0083:
                           _loc1_.styleName = "bigNumStepper";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0097:
                              _loc1_.addEventListener("change",this.__valueLabel_change);
                              if(!_loc2_)
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00ed);
                        }
                        addr00a7:
                        _loc1_.id = "valueLabel";
                        if(_loc3_)
                        {
                           addr00b2:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00db);
                                 }
                              }
                              §§goto(addr00ed);
                           }
                           addr00db:
                           this.valueLabel = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00ed:
                              BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
                           }
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00ed);
            }
            §§goto(addr0051);
         }
         addr00fa:
         return _loc1_;
      }
      
      public function __valueLabel_change(param1:TextOperationEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.value = Number(this.valueLabel.text);
         }
      }
      
      public function ___NumericMaxStepperComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _NumericMaxStepperComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipMaxMinus");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"maxMinus.toolTip");
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              addr0082:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0091:
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("tooltipMaxPlus");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"maxPlus.toolTip");
                                    if(_loc3_)
                                    {
                                       addr00bb:
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr00e9);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    §§goto(addr00e5);
                                 }
                                 §§goto(addr00d3);
                              }
                              addr00e9:
                              §§goto(addr00ca);
                           }
                           addr00ca:
                           §§push(§§pop().§§slot[1]);
                           if(!_loc2_)
                           {
                              addr00d3:
                              §§pop()[2] = new Binding(this,function():Number
                              {
                                 return bgMiddle.width;
                              },null,"valueLabel.width");
                              addr00e7:
                              addr00e5:
                              return result;
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0082);
            }
            §§goto(addr00e5);
         }
         §§goto(addr00e7);
      }
      
      [Bindable(event="propertyChange")]
      public function get bgMiddle() : BriskImageDynaLib
      {
         return this._1775187398bgMiddle;
      }
      
      public function set bgMiddle(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1775187398bgMiddle;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1775187398bgMiddle = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgMiddle",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get maxMinus() : MultistateButton
      {
         return this._391156076maxMinus;
      }
      
      public function set maxMinus(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._391156076maxMinus;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._391156076maxMinus = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006c);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxMinus",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get maxPlus() : MultistateButton
      {
         return this._843994398maxPlus;
      }
      
      public function set maxPlus(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._843994398maxPlus;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._843994398maxPlus = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPlus",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr0056);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._103901296minus = param1;
                  if(!_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minus",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get plus() : MultistateButton
      {
         return this._3444122plus;
      }
      
      public function set plus(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3444122plus;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._3444122plus = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plus",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : TextInputCursorSave
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:TextInputCursorSave) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2025208835valueLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._2025208835valueLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
   }
}

