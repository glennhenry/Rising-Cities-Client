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
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class BonusDayInfoActiveSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:BonusDayInfoComponent;
      
      public function BonusDayInfoActiveSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0040);
               }
               §§goto(addr005d);
            }
            addr0040:
            this.width = 245;
            if(_loc2_ || _loc2_)
            {
               addr005d:
               this.minHeight = 90;
               if(_loc2_)
               {
                  this.mxmlContent = [this._BonusDayInfoActiveSkin_Group1_c()];
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.currentState = "normal";
                     if(_loc2_ || Boolean(this))
                     {
                        addr0094:
                        this.addEventListener("creationComplete",this.___BonusDayInfoActiveSkin_SparkSkin1_creationComplete);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                     }
                     §§goto(addr00df);
                  }
               }
               §§goto(addr0094);
            }
            addr00df:
            return;
         }
         §§goto(addr005d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0055);
            }
            §§goto(addr0050);
         }
         addr0055:
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.header.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.header.capital");
            if(_loc3_ || _loc3_)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.flavour.active");
            }
         }
      }
      
      private function _BonusDayInfoActiveSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr003f:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._BonusDayInfoActiveSkin_RentCollectorBubbleComponent1_i(),this._BonusDayInfoActiveSkin_Group2_c(),this._BonusDayInfoActiveSkin_BriskImageDynaLib1_c(),this._BonusDayInfoActiveSkin_VGroup1_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0080:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr003f);
      }
      
      private function _BonusDayInfoActiveSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.bottom = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "bubble";
                     if(_loc2_)
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr0090);
                              }
                           }
                           §§goto(addr009a);
                        }
                        addr0090:
                        this.bubble = _loc1_;
                        if(_loc2_)
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"bubble",this.bubble);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr0065);
            }
         }
         §§goto(addr0090);
      }
      
      private function _BonusDayInfoActiveSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 8;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 8;
               if(!_loc3_)
               {
                  _loc1_.right = 18;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0065:
                     _loc1_.height = 30;
                     if(!_loc3_)
                     {
                        addr007c:
                        _loc1_.mxmlContent = [this._BonusDayInfoActiveSkin_BlueBarComponent1_c(),this._BonusDayInfoActiveSkin_HGroup1_c()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr007c);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr00a6);
      }
      
      private function _BonusDayInfoActiveSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0042:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _BonusDayInfoActiveSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0027:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc3_)
                  {
                     addr0059:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._BonusDayInfoActiveSkin_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           addr0074:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0080:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0084);
                        }
                     }
                     §§goto(addr0080);
                  }
                  addr0084:
                  return _loc1_;
               }
               §§goto(addr0059);
            }
            §§goto(addr0074);
         }
         §§goto(addr0027);
      }
      
      private function _BonusDayInfoActiveSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "eventName";
            if(_loc3_)
            {
               _loc1_.maxWidth = 170;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.id = "header";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr0089);
                              }
                              §§goto(addr0093);
                           }
                        }
                        addr0089:
                        this.header = _loc1_;
                        if(!_loc2_)
                        {
                           addr0093:
                           BindingManager.executeBindings(this,"header",this.header);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr0055);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _BonusDayInfoActiveSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_bonusDay";
               if(_loc2_)
               {
                  _loc1_.left = -12;
                  addr004a:
                  if(!_loc3_)
                  {
                     _loc1_.top = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007d);
                  }
               }
               addr0081:
               return _loc1_;
            }
            §§goto(addr0071);
         }
         §§goto(addr004a);
      }
      
      private function _BonusDayInfoActiveSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.top = 50;
            if(_loc3_)
            {
               _loc1_.left = 23;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.right = 35;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.bottom = 10;
                     if(!_loc2_)
                     {
                        addr0065:
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._BonusDayInfoActiveSkin_LocaLabel2_i(),this._BonusDayInfoActiveSkin_Group3_c(),this._BonusDayInfoActiveSkin_TimerBarComponent1_i()];
                           §§goto(addr006f);
                        }
                        §§goto(addr00aa);
                     }
                  }
                  §§goto(addr0096);
               }
               addr006f:
               if(_loc3_)
               {
                  addr0096:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00aa:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr00aa);
         }
         §§goto(addr0065);
      }
      
      private function _BonusDayInfoActiveSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "residentialCycleText";
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 180;
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.id = "flavourLabel";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 this.flavourLabel = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                                 }
                              }
                              §§goto(addr009e);
                           }
                        }
                     }
                  }
               }
               §§goto(addr0087);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _BonusDayInfoActiveSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 10;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoActiveSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_)
            {
               _loc1_.revertFlow = true;
               if(!_loc2_)
               {
                  _loc1_.id = "progressTimer";
                  if(_loc3_)
                  {
                     addr0059:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr009a);
                     }
                  }
                  addr0088:
                  this.progressTimer = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr009a:
                     BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
                  }
                  §§goto(addr00a7);
               }
               addr00a7:
               return _loc1_;
            }
            §§goto(addr0059);
         }
         §§goto(addr0088);
      }
      
      public function ___BonusDayInfoActiveSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1378241396bubble = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._949820541flavourLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._949820541flavourLabel = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0072);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1221270899header = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTimer() : TimerBarComponent
      {
         return this._770681112progressTimer;
      }
      
      public function set progressTimer(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._770681112progressTimer;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._770681112progressTimer = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
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

