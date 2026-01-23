package net.bigpoint.cityrama.view.newsscreen.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class NewLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _216916822sideMenu:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function NewLayerSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  addr003f:
                  this.width = 840;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0052:
                     this.height = 440;
                     if(!_loc2_)
                     {
                        this.mxmlContent = [this._NewLayerSkin_HGroup1_c(),this._NewLayerSkin_Group5_i()];
                        if(_loc1_ || _loc1_)
                        {
                           this.currentState = "normal";
                           if(_loc1_ || Boolean(this))
                           {
                              addr0099:
                              this.addEventListener("initialize",this.___NewLayerSkin_SparkSkin1_initialize);
                              if(!(_loc2_ && _loc2_))
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
                                 addr00b1:
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00b1);
            }
            §§goto(addr003f);
         }
         §§goto(addr0052);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               §§goto(addr0036);
            }
            §§goto(addr004b);
         }
         addr0036:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_ || Boolean(param1))
            {
               addr004b:
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
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function initializeHandler(param1:FlexEvent) : void
      {
      }
      
      private function _NewLayerSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0028:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr0088);
                  }
                  addr005a:
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._NewLayerSkin_Group1_c()];
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr009c:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009c);
            }
            §§goto(addr0088);
         }
         §§goto(addr0028);
      }
      
      private function _NewLayerSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 724;
            if(_loc3_)
            {
               addr0040:
               _loc1_.height = 403;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._NewLayerSkin_Rect1_c(),this._NewLayerSkin_Rect2_c(),this._NewLayerSkin_Line1_c(),this._NewLayerSkin_Line2_c(),this._NewLayerSkin_Line3_c(),this._NewLayerSkin_Group2_i(),this._NewLayerSkin_HGroup2_c(),this._NewLayerSkin_DynamicImageButton1_i(),this._NewLayerSkin_Group4_c()];
                  if(!_loc2_)
                  {
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0097);
         }
         §§goto(addr0040);
      }
      
      private function _NewLayerSkin_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0051);
               }
               §§goto(addr0067);
            }
            addr0051:
            _loc1_.radiusX = 5;
            if(!_loc3_)
            {
               addr0067:
               _loc1_.radiusY = 5;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr007a);
               }
               §§goto(addr0089);
            }
            addr007a:
            _loc1_.fill = this._NewLayerSkin_SolidColor1_c();
            if(!_loc3_)
            {
               addr0089:
               _loc1_.initialized(this,null);
            }
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _NewLayerSkin_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.color = 16513263;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Rect2_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 42;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.topLeftRadiusX = 5;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005e:
                     _loc1_.topLeftRadiusY = 5;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0071:
                        _loc1_.topRightRadiusX = 5;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.topRightRadiusY = 5;
                           if(!_loc2_)
                           {
                              addr0099:
                              _loc1_.fill = this._NewLayerSkin_LinearGradient1_c();
                              if(!_loc2_)
                              {
                                 addr00a8:
                                 _loc1_.initialized(this,null);
                              }
                           }
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr005e);
            }
            §§goto(addr0071);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _NewLayerSkin_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc3_)
         {
            _loc1_.rotation = 90;
            if(!_loc2_)
            {
               _loc1_.entries = [this._NewLayerSkin_GradientEntry1_c(),this._NewLayerSkin_GradientEntry2_c()];
            }
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_ || _loc2_)
         {
            _loc1_.color = 1687262;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_GradientEntry2_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.color = 1022926;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line1_c() : Line
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Line = new Line();
         if(!_loc3_)
         {
            _loc1_.xFrom = 3;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.yFrom = 1;
               if(_loc2_)
               {
                  _loc1_.xTo = 721;
                  if(_loc2_ || _loc2_)
                  {
                     addr006c:
                     _loc1_.yTo = 1;
                     if(!_loc3_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr006c);
            }
         }
         addr0077:
         _loc1_.stroke = this._NewLayerSkin_SolidColorStroke1_c();
         if(!(_loc3_ && _loc2_))
         {
            addr008e:
            _loc1_.initialized(this,null);
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(!_loc3_)
         {
            _loc1_.color = 2224895;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line2_c() : Line
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Line = new Line();
         if(_loc2_ || _loc2_)
         {
            _loc1_.xFrom = 0;
            if(!_loc3_)
            {
               _loc1_.yFrom = 40;
               if(_loc2_)
               {
                  _loc1_.xTo = 724;
                  if(_loc2_)
                  {
                     addr0063:
                     _loc1_.yTo = 40;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr0085);
                  }
                  addr0076:
                  _loc1_.stroke = this._NewLayerSkin_SolidColorStroke2_c();
                  if(!_loc3_)
                  {
                     addr0085:
                     _loc1_.initialized(this,null);
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr0085);
      }
      
      private function _NewLayerSkin_SolidColorStroke2_c() : SolidColorStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc3_ || _loc2_)
         {
            _loc1_.color = 1424122;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line3_c() : Line
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Line = new Line();
         if(!_loc2_)
         {
            _loc1_.xFrom = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.yFrom = 41;
               addr0034:
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.xTo = 724;
                  if(_loc3_)
                  {
                     _loc1_.yTo = 41;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.stroke = this._NewLayerSkin_SolidColorStroke3_c();
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0096:
                           _loc1_.initialized(this,null);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0096);
         }
         §§goto(addr0034);
      }
      
      private function _NewLayerSkin_SolidColorStroke3_c() : SolidColorStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc3_ || _loc3_)
         {
            _loc1_.color = 9886198;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 42;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 6;
                     if(!_loc2_)
                     {
                        addr0065:
                        _loc1_.maxWidth = 724;
                        if(!_loc2_)
                        {
                           _loc1_.id = "contentGroup";
                           if(_loc3_ || _loc2_)
                           {
                              addr0084:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr0098:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00b5:
                                       this.contentGroup = _loc1_;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00c7:
                                          BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00b5);
                           }
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0065);
            }
         }
         addr00d4:
         return _loc1_;
      }
      
      private function _NewLayerSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 42;
               if(!_loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        §§goto(addr0065);
                     }
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0065);
            }
            §§goto(addr0078);
         }
         addr0065:
         _loc1_.verticalAlign = "middle";
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._NewLayerSkin_Group3_c()];
            addr0078:
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00b1:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.filters = [this._NewLayerSkin_DropShadowFilter1_c()];
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._NewLayerSkin_LocaLabel1_i()];
               §§goto(addr0047);
            }
            §§goto(addr007f);
         }
         addr0047:
         if(_loc3_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr007f:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!_loc2_)
         {
            _loc1_.distance = 1;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.angle = 240;
               if(_loc3_)
               {
                  _loc1_.blurX = 1;
                  addr004f:
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr006e);
            }
            §§goto(addr004f);
         }
         addr006e:
         _loc1_.blurY = 1;
         if(!(_loc2_ && _loc3_))
         {
            addr0081:
            _loc1_.color = 526344;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.minWidth = 150;
            if(!_loc3_)
            {
               _loc1_.maxWidth = 600;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.styleName = "paperTitle";
                     addr0052:
                     if(!_loc3_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00b0);
            }
            addr0069:
            _loc1_.top = 5;
            if(_loc2_ || Boolean(this))
            {
               addr007b:
               _loc1_.id = "titleDisplay";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr00b0:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr00b9);
                        }
                        §§goto(addr00c3);
                     }
                  }
                  addr00b9:
                  this.titleDisplay = _loc1_;
                  if(_loc2_)
                  {
                     addr00c3:
                     BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00c3);
            }
            addr00d0:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _NewLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "close";
            if(_loc3_)
            {
               addr002c:
               _loc1_.top = 8;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 4;
                  if(!_loc2_)
                  {
                     _loc1_.id = "closeButton";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0086:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0086);
                  }
                  addr008f:
                  this.closeButton = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a1:
                     BindingManager.executeBindings(this,"closeButton",this.closeButton);
                  }
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr0086);
         }
         §§goto(addr002c);
      }
      
      private function _NewLayerSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = -15;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = -60;
               if(_loc3_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0080);
            }
            addr0047:
            _loc1_.width = 180;
            if(_loc3_)
            {
               _loc1_.height = 420;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._NewLayerSkin_BriskImageDynaLib1_c()];
                  §§goto(addr005d);
               }
               §§goto(addr0094);
            }
            addr005d:
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0080:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0094:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0098);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _NewLayerSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_newsScreenPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "character";
               if(!_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
            addr005a:
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _NewLayerSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 710;
            if(_loc2_)
            {
               _loc1_.width = 80;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 40;
                  if(!_loc3_)
                  {
                     _loc1_.bottom = 18;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006a:
                        _loc1_.includeInLayout = false;
                        if(!_loc3_)
                        {
                           _loc1_.visible = false;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0084:
                              _loc1_.id = "sideMenu";
                              if(!_loc3_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr006a);
               }
               addr008f:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr00a7:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr00b8);
                     }
                  }
                  §§goto(addr00c2);
               }
               addr00b8:
               this.sideMenu = _loc1_;
               if(_loc2_)
               {
                  addr00c2:
                  BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
               }
               §§goto(addr00cf);
            }
            §§goto(addr0084);
         }
         addr00cf:
         return _loc1_;
      }
      
      public function ___NewLayerSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.initializeHandler(param1);
         }
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._312699062closeButton = param1;
                  if(_loc3_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr004c);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._809612678contentGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007e);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr007e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                  }
               }
               §§goto(addr008d);
            }
            addr008d:
            return;
         }
         §§goto(addr007e);
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._216916822sideMenu;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._216916822sideMenu = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1893287094titleDisplay;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1893287094titleDisplay = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
   }
}

