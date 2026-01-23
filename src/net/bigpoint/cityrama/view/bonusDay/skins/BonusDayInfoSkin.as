package net.bigpoint.cityrama.view.bonusDay.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class BonusDayInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _311641483progressTimerSlim:SlimProgressBarTimer;
      
      private var _1643334319timerLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:BonusDayInfoComponent;
      
      public function BonusDayInfoSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 245;
                  if(!_loc1_)
                  {
                     this.minHeight = 90;
                     if(_loc2_)
                     {
                        this.mxmlContent = [this._BonusDayInfoSkin_Group1_c()];
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr0068);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr009f);
                  }
                  addr0068:
                  this.currentState = "normal";
                  if(_loc2_ || _loc1_)
                  {
                     addr007c:
                     this.addEventListener("creationComplete",this.___BonusDayInfoSkin_SparkSkin1_creationComplete);
                     if(_loc2_ || Boolean(this))
                     {
                        addr009f:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr009f);
            }
         }
         addr00c7:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0042:
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.header.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.header.capital");
            if(!_loc3_)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.flavour.normal");
               if(!_loc3_)
               {
                  addr0053:
                  this.timerLabel.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.timerLabel");
               }
               §§goto(addr0065);
            }
            §§goto(addr0053);
         }
         addr0065:
      }
      
      private function _BonusDayInfoSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr003d:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._BonusDayInfoSkin_RentCollectorBubbleComponent1_i(),this._BonusDayInfoSkin_Group2_c(),this._BonusDayInfoSkin_BriskImageDynaLib1_c(),this._BonusDayInfoSkin_VGroup1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0089);
               }
               addr007d:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0089:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008d);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _BonusDayInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.bottom = 0;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.id = "bubble";
                     if(_loc3_)
                     {
                        addr005a:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0081:
                                 this.bubble = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr008b:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr008b);
            }
            §§goto(addr005a);
         }
         §§goto(addr008b);
      }
      
      private function _BonusDayInfoSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 8;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 8;
               if(_loc3_)
               {
                  _loc1_.right = 18;
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr006c);
               }
               addr005a:
               _loc1_.height = 30;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._BonusDayInfoSkin_BlueBarComponent1_c(),this._BonusDayInfoSkin_HGroup1_c()];
                  addr006c:
                  if(_loc3_ || _loc2_)
                  {
                     addr0095:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00a9:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr00a9);
         }
         §§goto(addr0095);
      }
      
      private function _BonusDayInfoSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0058);
            }
            addr005c:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _BonusDayInfoSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0047);
         }
         addr0031:
         _loc1_.percentHeight = 100;
         if(_loc2_)
         {
            addr0047:
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._BonusDayInfoSkin_LocaLabel1_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr009a);
            }
         }
         addr009e:
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "eventName";
            if(_loc2_)
            {
               addr002b:
               _loc1_.maxWidth = 170;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "header";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0092:
                                 this.header = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                              §§goto(addr00a9);
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr00a9:
                  return _loc1_;
               }
            }
            §§goto(addr0081);
         }
         §§goto(addr002b);
      }
      
      private function _BonusDayInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_bonusDay";
               if(!_loc3_)
               {
                  _loc1_.left = -12;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0066);
                  }
               }
               §§goto(addr0084);
            }
            addr0066:
            _loc1_.top = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0084:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _BonusDayInfoSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.top = 50;
            if(_loc3_)
            {
               _loc1_.left = 23;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 35;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0063:
                     _loc1_.bottom = 10;
                     if(_loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._BonusDayInfoSkin_LocaLabel2_i(),this._BonusDayInfoSkin_Group3_c(),this._BonusDayInfoSkin_LocaLabel3_i(),this._BonusDayInfoSkin_HGroup2_c()];
                           if(_loc3_)
                           {
                              §§goto(addr00a6);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00ba);
                  }
                  addr00a6:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ba:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00ba);
            }
            §§goto(addr0063);
         }
         addr00be:
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "residentialCycleText";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.maxWidth = 180;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr006e:
                     _loc1_.id = "flavourLabel";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a3);
               }
               addr009a:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr00a3:
                  this.flavourLabel = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b5:
                     BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                  }
               }
               §§goto(addr00c2);
            }
            §§goto(addr006e);
         }
         addr00c2:
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 10;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0067:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _BonusDayInfoSkin_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "residentialCycleText";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.maxWidth = 180;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.text = "DEV: this is a timer";
                     if(!_loc2_)
                     {
                        _loc1_.id = "timerLabel";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr009e:
                                    this.timerLabel = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"timerLabel",this.timerLabel);
                                    }
                                 }
                                 §§goto(addr00b5);
                              }
                           }
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0089);
            }
         }
         addr00b5:
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 17;
               if(!(_loc2_ && _loc3_))
               {
                  addr0053:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr00aa);
               }
               addr005e:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._BonusDayInfoSkin_BriskImageDynaLib2_c(),this._BonusDayInfoSkin_SlimProgressBarTimer1_i(),this._BonusDayInfoSkin_Group4_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr009e);
                  }
                  §§goto(addr00aa);
               }
               addr009e:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00aa:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr00aa);
      }
      
      private function _BonusDayInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               if(_loc2_)
               {
                  _loc1_.width = 18;
                  §§goto(addr0046);
               }
               §§goto(addr007a);
            }
            addr0046:
            if(_loc2_)
            {
               _loc1_.height = 17;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr006e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr007a);
            }
            addr007e:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _BonusDayInfoSkin_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         if(_loc3_)
         {
            _loc1_.progressBarTint = 10739019;
            if(!(_loc2_ && _loc3_))
            {
               addr0036:
               _loc1_.revertProgress = true;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0058:
                     _loc1_.id = "progressTimerSlim";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr0096);
                           }
                        }
                     }
                     addr008c:
                     this.progressTimerSlim = _loc1_;
                     if(!_loc2_)
                     {
                        addr0096:
                        BindingManager.executeBindings(this,"progressTimerSlim",this.progressTimerSlim);
                     }
                     §§goto(addr00a3);
                  }
                  addr00a3:
                  return _loc1_;
               }
               §§goto(addr007b);
            }
            §§goto(addr0058);
         }
         §§goto(addr0036);
      }
      
      private function _BonusDayInfoSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 18;
            if(_loc3_)
            {
               addr004c:
               _loc1_.height = 17;
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006a);
            }
            addr006e:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      public function ___BonusDayInfoSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1378241396bubble;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1378241396bubble = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0062);
            }
         }
         addr0071:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._949820541flavourLabel = param1;
                  addr004b:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1221270899header;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1221270899header = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTimerSlim() : SlimProgressBarTimer
      {
         return this._311641483progressTimerSlim;
      }
      
      public function set progressTimerSlim(param1:SlimProgressBarTimer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311641483progressTimerSlim;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0049:
                  this._311641483progressTimerSlim = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimerSlim",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerLabel() : LocaLabel
      {
         return this._1643334319timerLabel;
      }
      
      public function set timerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1643334319timerLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1643334319timerLabel = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0080);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0080:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerLabel",_loc2_,param1));
                  }
               }
               §§goto(addr008f);
            }
         }
         addr008f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : BonusDayInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:BonusDayInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

