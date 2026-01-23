package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class MediumLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _336564146characterImage:BriskImageDynaLib;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _2061493789sparkles:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MediumLayerWindow;
      
      public function MediumLayerSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  addr0040:
                  this.width = 456;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.height = 415;
                     if(!_loc1_)
                     {
                        addr005e:
                        this.mxmlContent = [this._MediumLayerSkin_Group1_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           this.currentState = "normal";
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr005e);
               }
               addr0094:
               this.addEventListener("initialize",this.___MediumLayerSkin_SparkSkin1_initialize);
               if(_loc2_)
               {
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  }),new State({
                     "name":"inactive",
                     "overrides":[]
                  }),new State({
                     "name":"disabledWithControlBar",
                     "overrides":[]
                  }),new State({
                     "name":"normalWithControlBar",
                     "overrides":[]
                  }),new State({
                     "name":"inactiveWithControlBar",
                     "overrides":[]
                  })];
                  addr00a4:
               }
               return;
            }
         }
         §§goto(addr0040);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:uint = 0;
         var _loc1_:uint = 9166836;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(getStyle("glowColor"))
            {
               if(_loc4_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr005c);
            }
            §§goto(addr00a2);
         }
         addr004b:
         _loc2_ = uint(getStyle("glowColor"));
         if(!_loc3_)
         {
            TweenMax.to(this.background,1,{"glowFilter":{
               "color":_loc2_,
               "alpha":1,
               "blurX":20,
               "blurY":20,
               "strength":1.8
            }});
            addr005c:
            if(_loc4_ || Boolean(_loc1_))
            {
               addr00a2:
               invalidateDisplayList();
            }
         }
      }
      
      private function _MediumLayerSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._MediumLayerSkin_Group2_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007e:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007e);
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _MediumLayerSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 456;
            if(_loc3_ || _loc3_)
            {
               _loc1_.height = 412;
               if(!(_loc2_ && _loc2_))
               {
                  addr0053:
                  _loc1_.bottom = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib1_i(),this._MediumLayerSkin_Group3_i(),this._MediumLayerSkin_BlueBarComponent1_c(),this._MediumLayerSkin_DynamicImageButton1_i(),this._MediumLayerSkin_HGroup1_c(),this._MediumLayerSkin_Group4_c(),this._MediumLayerSkin_Group5_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr00a6);
                     }
                  }
                  §§goto(addr00b2);
               }
               addr00a6:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00b2:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_medium_bg";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "background";
                        if(_loc2_)
                        {
                           addr0072:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0094:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a5:
                                    this.background = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"background",this.background);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr00af);
            }
            §§goto(addr0072);
         }
         §§goto(addr00af);
      }
      
      private function _MediumLayerSkin_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 25;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.right = 25;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.top = 62;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.bottom = 18;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr007f:
                        _loc1_.id = "contentGroup";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00b2:
                                    this.contentGroup = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00b2);
                  }
                  addr00c9:
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr00a9);
         }
         §§goto(addr007f);
      }
      
      private function _MediumLayerSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 38;
               if(!_loc2_)
               {
                  _loc1_.top = 24;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.left = 40;
                     if(!_loc2_)
                     {
                        addr0074:
                        _loc1_.right = 40;
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0074);
               }
               addr008e:
               return _loc1_;
            }
         }
         §§goto(addr0074);
      }
      
      private function _MediumLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "close";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 10;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.right = 20;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "closeButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr009c);
                              }
                              §§goto(addr00ae);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00ae);
                  }
               }
               addr009c:
               this.closeButton = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr00ae:
                  BindingManager.executeBindings(this,"closeButton",this.closeButton);
               }
               §§goto(addr00bb);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _MediumLayerSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0054:
                     _loc1_.height = 38;
                     if(_loc2_)
                     {
                        _loc1_.top = 24;
                        if(_loc2_)
                        {
                           §§goto(addr0068);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0054);
            }
            §§goto(addr00ae);
         }
         addr0068:
         _loc1_.left = 40;
         if(_loc2_)
         {
            _loc1_.right = 40;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0092:
               _loc1_.mxmlContent = [this._MediumLayerSkin_LocaLabel1_i()];
               if(_loc2_)
               {
                  addr00a2:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00ae:
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.text = "test";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.minWidth = 150;
               if(_loc2_)
               {
                  _loc1_.maxWidth = 370;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.maxDisplayedLines = 2;
                     if(_loc2_)
                     {
                        _loc1_.styleName = "headlineMediumLayer";
                        if(!_loc3_)
                        {
                           addr007c:
                           _loc1_.setStyle("verticalAlign","bottom");
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.id = "titleDisplay";
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a6:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00c5);
                                    }
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00c5);
                     }
                  }
                  §§goto(addr007c);
               }
               addr00c5:
               _loc1_.document = this;
               if(_loc2_ || _loc3_)
               {
                  addr00d6:
                  this.titleDisplay = _loc1_;
                  if(!_loc3_)
                  {
                     BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
                  }
               }
               §§goto(addr00ed);
            }
            addr00ed:
            return _loc1_;
         }
         §§goto(addr00d6);
      }
      
      private function _MediumLayerSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = -15;
            if(_loc3_ || _loc3_)
            {
               _loc1_.left = -50;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 180;
                  if(_loc3_)
                  {
                     _loc1_.height = 420;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib2_i()];
                        if(_loc3_)
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr0096);
                  }
                  addr008a:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0096:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0096);
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "characterImage";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0067);
                  }
               }
               §§goto(addr0078);
            }
            addr0067:
            _loc1_.document = this;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0078:
               this.characterImage = _loc1_;
               if(_loc2_)
               {
                  BindingManager.executeBindings(this,"characterImage",this.characterImage);
               }
            }
            §§goto(addr008f);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _MediumLayerSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  addr003c:
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib3_c(),this._MediumLayerSkin_BriskImageDynaLib4_c(),this._MediumLayerSkin_BriskImageDynaLib5_c()];
                        if(_loc2_)
                        {
                           _loc1_.id = "sparkles";
                           if(!_loc3_)
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00ca);
                                 }
                              }
                              addr00c0:
                              this.sparkles = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00ca:
                                 BindingManager.executeBindings(this,"sparkles",this.sparkles);
                              }
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00af);
                     }
                     addr00d7:
                     return _loc1_;
                  }
                  §§goto(addr008e);
               }
            }
            §§goto(addr00af);
         }
         §§goto(addr003c);
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_medium_sparkle";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.top = -12;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0070:
                     _loc1_.left = 60;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0070);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "sparkle_single_small";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.bottom = -5;
                  if(!_loc2_)
                  {
                     _loc1_.left = 40;
                     addr005f:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr0092);
         }
         §§goto(addr005f);
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "layer_medium_sparkle";
               if(_loc3_)
               {
                  _loc1_.rotation = 180;
                  if(_loc3_)
                  {
                     _loc1_.bottom = -8;
                     if(_loc3_)
                     {
                        _loc1_.right = -10;
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0083:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0083);
               }
            }
         }
         addr0087:
         return _loc1_;
      }
      
      public function ___MediumLayerSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.init();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332194002background;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1332194002background = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get characterImage() : BriskImageDynaLib
      {
         return this._336564146characterImage;
      }
      
      public function set characterImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._336564146characterImage;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._336564146characterImage = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0080);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0080:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterImage",_loc2_,param1));
                  }
               }
               §§goto(addr008f);
            }
         }
         addr008f:
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._312699062closeButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._312699062closeButton = param1;
                  if(!_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
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
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._809612678contentGroup = param1;
                  if(!_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004d);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkles() : Group
      {
         return this._2061493789sparkles;
      }
      
      public function set sparkles(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2061493789sparkles;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0053:
                  this._2061493789sparkles = param1;
                  if(!_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkles",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            addr007d:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1893287094titleDisplay = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : MediumLayerWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MediumLayerWindow) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  addr0037:
                  if(!_loc4_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0066);
               }
               addr004e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0037);
      }
   }
}

