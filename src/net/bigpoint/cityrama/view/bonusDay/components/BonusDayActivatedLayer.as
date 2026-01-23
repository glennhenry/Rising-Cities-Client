package net.bigpoint.cityrama.view.bonusDay.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class BonusDayActivatedLayer extends MediumLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkles":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "titleDisplay":false,
            "characterImage":false
         };
      }
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TimerBarComponentVo;
      
      private var _dataDirty:Boolean;
      
      public function BonusDayActivatedLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.showSparkles = true;
                  if(!_loc2_)
                  {
                     this.styleName = "upsellOffer";
                     if(!_loc2_)
                     {
                        §§goto(addr0056);
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0078);
            }
         }
         addr0056:
         this.characterImageBmpName = "characterOffer";
         if(!_loc2_)
         {
            this.characterImageLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               addr0078:
               this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BonusDayActivatedLayer_Array1_c);
               if(!(_loc2_ && _loc2_))
               {
                  addr0095:
                  this.addEventListener("creationComplete",this.___BonusDayActivatedLayer_MediumLayerWindow1_creationComplete);
               }
               §§goto(addr00a1);
            }
            §§goto(addr0095);
         }
         addr00a1:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr002c);
            }
            §§goto(addr003a);
         }
         addr002c:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               addr003a:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            title = LocaUtils.getString("rcl.booklayer.bonusDayActivated","rcl.booklayer.bonusDayActivated.title.capital");
            if(_loc3_)
            {
               addr0033:
               this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.bonusDayActivated","rcl.booklayer.bonusDayActivated.flavour");
            }
            return;
         }
         §§goto(addr0033);
      }
      
      public function set data(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc2_)
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     addr004a:
                     this._dataDirty = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr004a);
            }
            addr0061:
            return;
         }
         §§goto(addr004a);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§goto(addr0029);
            }
            §§goto(addr0040);
         }
         addr0029:
         if(this._dataDirty)
         {
            if(_loc1_)
            {
               this._dataDirty = false;
               if(!_loc2_)
               {
                  addr0040:
                  this.progressTimer.data = this._data;
               }
               §§goto(addr004a);
            }
            §§goto(addr0040);
         }
         addr004a:
      }
      
      private function _BonusDayActivatedLayer_Array1_c() : Array
      {
         return [this._BonusDayActivatedLayer_VGroup1_c()];
      }
      
      private function _BonusDayActivatedLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(this))
                  {
                     addr006b:
                     _loc1_.mxmlContent = [this._BonusDayActivatedLayer_Group1_c(),this._BonusDayActivatedLayer_VGroup3_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006b);
      }
      
      private function _BonusDayActivatedLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._BonusDayActivatedLayer_BriskImageDynaLib1_c(),this._BonusDayActivatedLayer_VGroup2_c(),this._BonusDayActivatedLayer_BriskImageDynaLib3_i()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005b);
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layerGlow";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0055:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0055);
      }
      
      private function _BonusDayActivatedLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.gap = 10;
                        if(_loc2_)
                        {
                           addr0082:
                           _loc1_.mxmlContent = [this._BonusDayActivatedLayer_BriskImageDynaLib2_c(),this._BonusDayActivatedLayer_TimerBarComponent1_i()];
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a0:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00ac:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00ac);
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0082);
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "bonusDay_big";
               if(_loc3_)
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr0060);
      }
      
      private function _BonusDayActivatedLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_)
            {
               addr0034:
               _loc1_.revertFlow = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 207;
                  if(_loc3_)
                  {
                     _loc1_.id = "progressTimer";
                     if(!_loc2_)
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0087);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0090);
            }
            addr0087:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0090:
               this.progressTimer = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00a2:
                  BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
               }
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = 0;
               if(_loc2_)
               {
                  _loc1_.right = 0;
                  addr003d:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr005c:
                     _loc1_.id = "iconGfx";
                     if(!_loc3_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 this.iconGfx = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"iconGfx",this.iconGfx);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr005c);
            }
            §§goto(addr0067);
         }
         §§goto(addr003d);
      }
      
      private function _BonusDayActivatedLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr005b);
               }
               addr0051:
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._BonusDayActivatedLayer_LocaLabel1_i()];
                  addr005b:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      private function _BonusDayActivatedLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.maxWidth = 400;
               if(_loc2_)
               {
                  _loc1_.styleName = "flavourOfferLayer";
                  if(_loc2_)
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(_loc2_)
                     {
                        addr0063:
                        _loc1_.id = "flavourLabel";
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0082);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0063);
               }
               addr0082:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr008e:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr00a1);
               }
               addr0097:
               this.flavourLabel = _loc1_;
               if(!_loc3_)
               {
                  addr00a1:
                  BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
               }
               §§goto(addr00ae);
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      public function ___BonusDayActivatedLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._949820541flavourLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGfx() : BriskImageDynaLib
      {
         return this._1638751296iconGfx;
      }
      
      public function set iconGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1638751296iconGfx;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1638751296iconGfx = param1;
                  if(!_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
         }
         addr0086:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003a:
                  this._770681112progressTimer = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0053);
               }
            }
            addr0062:
            return;
         }
         §§goto(addr003a);
      }
   }
}

