package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class MiniLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _230902789attentionSign:BriskImageDynaLib;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _104976386moveArea:Group;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MiniLayerWindow;
      
      public function MiniLayerSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  addr003f:
                  this.width = 540;
                  if(_loc1_)
                  {
                     this.height = 313;
                     if(!_loc2_)
                     {
                        this.mxmlContent = [this._MiniLayerSkin_Group1_c()];
                        §§goto(addr0055);
                     }
                     §§goto(addr007b);
                  }
                  addr0055:
                  if(!_loc2_)
                  {
                     addr006f:
                     this.currentState = "normal";
                     if(!_loc2_)
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
                        addr007b:
                     }
                  }
                  §§goto(addr00f1);
               }
               addr00f1:
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr006f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0064);
                  }
               }
               else
               {
                  addr006a:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0064:
            return;
         }
         §§goto(addr006a);
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
      
      private function _MiniLayerSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 540;
            if(_loc2_)
            {
               _loc1_.height = 313;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._MiniLayerSkin_BriskImageDynaLib1_c(),this._MiniLayerSkin_Group2_i(),this._MiniLayerSkin_BriskImageDynaLib2_i(),this._MiniLayerSkin_BriskImageDynaLib3_i(),this._MiniLayerSkin_DynamicImageButton1_i(),this._MiniLayerSkin_LocaLabel1_i(),this._MiniLayerSkin_Group3_i()];
                  addr0048:
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0091);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0091);
            }
            §§goto(addr0048);
         }
         addr0091:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr009d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_bg";
               if(!_loc3_)
               {
                  _loc1_.width = 540;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 313;
                     if(_loc2_)
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr0085);
                  }
                  addr0079:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0085);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _MiniLayerSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.left = 25;
            if(!_loc3_)
            {
               _loc1_.right = 25;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 55;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 18;
                     if(_loc2_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr0067);
                  }
               }
               addr005c:
               _loc1_.id = "contentGroup";
               if(!_loc3_)
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0097:
                           this.contentGroup = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00a9:
                              BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00b6);
            }
            addr00b6:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.top = 10;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 54;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "base_minilayer_icon_attention";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0078:
                        _loc1_.visible = true;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0089:
                           _loc1_.includeInLayout = true;
                           if(_loc3_ || _loc3_)
                           {
                              addr009a:
                              _loc1_.id = "attentionSign";
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00bc:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00c5);
                                       }
                                    }
                                    §§goto(addr00d7);
                                 }
                                 addr00c5:
                                 this.attentionSign = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00d7:
                                    BindingManager.executeBindings(this,"attentionSign",this.attentionSign);
                                 }
                                 §§goto(addr00e4);
                              }
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr009a);
                     }
                     addr00e4:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00d7);
            }
            §§goto(addr0078);
         }
         §§goto(addr00c5);
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.visible = true;
                  if(_loc2_)
                  {
                     _loc1_.top = -4;
                     if(_loc2_)
                     {
                        _loc1_.left = 38;
                        if(_loc2_ || _loc3_)
                        {
                           addr0075:
                           _loc1_.includeInLayout = true;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00ce);
            }
         }
         addr0086:
         _loc1_.id = "sparkle";
         if(_loc2_ || _loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  §§goto(addr00b3);
               }
            }
            §§goto(addr00bc);
         }
         addr00b3:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr00bc:
            this.sparkle = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr00ce:
               BindingManager.executeBindings(this,"sparkle",this.sparkle);
            }
         }
         return _loc1_;
      }
      
      private function _MiniLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "close";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 44;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.right = 25;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "closeButton";
                     if(_loc3_ || _loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr009d:
                                 this.closeButton = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"closeButton",this.closeButton);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0075);
               }
            }
            §§goto(addr008c);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _MiniLayerSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "fontABlack";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 77;
               if(_loc3_)
               {
                  _loc1_.top = 20;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0088);
            }
            addr0057:
            _loc1_.setStyle("fontSize",13);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.setStyle("color",16777215);
               if(_loc3_)
               {
                  addr0088:
                  _loc1_.id = "titleDisplay";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr009b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00ca:
                              this.titleDisplay = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00dc:
                                 BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
                              }
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr00dc);
                     }
                  }
                  §§goto(addr00ca);
               }
            }
            addr00e9:
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _MiniLayerSkin_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.top = 5;
            if(_loc3_)
            {
               _loc1_.left = 44;
               if(_loc3_)
               {
                  _loc1_.width = 317;
                  if(_loc3_)
                  {
                     _loc1_.height = 35;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0069:
                        _loc1_.id = "moveArea";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr0088);
                              }
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00b8);
                  }
               }
               §§goto(addr0069);
            }
            addr0088:
            _loc1_.document = this;
            if(_loc3_ || Boolean(this))
            {
               addr00a6:
               this.moveArea = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00b8:
                  BindingManager.executeBindings(this,"moveArea",this.moveArea);
               }
            }
            return _loc1_;
         }
         §§goto(addr00a6);
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionSign() : BriskImageDynaLib
      {
         return this._230902789attentionSign;
      }
      
      public function set attentionSign(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._230902789attentionSign;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._230902789attentionSign = param1;
                  addr003d:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionSign",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._312699062closeButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._312699062closeButton = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._809612678contentGroup = param1;
                  addr0044:
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0072);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._104976386moveArea;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._104976386moveArea = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0053:
                  this._2011710186sparkle = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1893287094titleDisplay = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : MiniLayerWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MiniLayerWindow) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0066);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
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
         §§goto(addr0056);
      }
   }
}

