package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class HeaderComponent extends Group
   {
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _label:String;
      
      private var _labelInvalid:Boolean = false;
      
      private var _iconInvalid:Boolean = false;
      
      private var _iconData:BriskDynaVo;
      
      public function HeaderComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr0037:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._HeaderComponent_Rect1_c(),this._HeaderComponent_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr0037);
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
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr004a);
                  }
               }
               §§goto(addr0050);
            }
            addr004a:
            return;
         }
         addr0050:
         this.__moduleFactoryInitialized = true;
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
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set maxDisplayedLines(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.labelDisplay.maxDisplayedLines = param1;
         }
      }
      
      public function set labelSidePaddings(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.labelDisplay);
            if(_loc2_)
            {
               §§push("paddingLeft");
               if(_loc2_)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(_loc2_)
                     {
                        §§push(this.labelDisplay);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0058:
                           §§pop().setStyle("paddingRight",param1);
                           addr0057:
                           addr0054:
                           if(_loc2_)
                           {
                              addr0064:
                              this.labelDisplay.invalidateProperties();
                              addr0060:
                           }
                           §§goto(addr0067);
                        }
                        §§goto(addr0064);
                     }
                     addr0067:
                     return;
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0057);
            }
            §§goto(addr0054);
         }
         §§goto(addr0060);
      }
      
      public function set label(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._label = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this._labelInvalid = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004f:
                  invalidateProperties();
               }
               return;
            }
         }
         §§goto(addr004f);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(this._labelInvalid);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc1_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 addr005d:
                                 §§push(this.labelDisplay);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr007c:
                                       if(§§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             this._labelInvalid = false;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00a7:
                                                this.labelDisplay.text = this._label;
                                                if(!_loc3_)
                                                {
                                                   addr00b2:
                                                   §§push(this._iconInvalid);
                                                   if(!_loc3_)
                                                   {
                                                      addr00bb:
                                                      §§push(§§pop());
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         addr00c9:
                                                         var _temp_9:* = §§pop();
                                                         addr00ca:
                                                         §§push(_temp_9);
                                                         if(_temp_9)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  addr00e9:
                                                                  §§push(this.headerIcon);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr00f3);
                                                                  }
                                                                  §§goto(addr012c);
                                                               }
                                                               §§goto(addr0116);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr00f3);
                                                   }
                                                   §§goto(addr00c9);
                                                }
                                                §§goto(addr0104);
                                             }
                                             §§goto(addr00e9);
                                          }
                                          §§goto(addr0116);
                                       }
                                       §§goto(addr00b2);
                                    }
                                    addr00f3:
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr0104:
                                          this._iconInvalid = false;
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr0116:
                                             §§push(this.headerIcon);
                                             if(!_loc3_)
                                             {
                                                addr012c:
                                                §§pop().includeInLayout = this.headerIcon.visible = true;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr014b:
                                                   this.headerIcon.briskDynaVo = this._iconData;
                                                   addr0147:
                                                }
                                                §§goto(addr0153);
                                             }
                                             §§goto(addr014b);
                                          }
                                          §§goto(addr0153);
                                       }
                                       §§goto(addr0147);
                                    }
                                    addr0153:
                                    return;
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr007c);
            }
            §§goto(addr005d);
         }
         §§goto(addr00b2);
      }
      
      public function set icon(param1:BriskDynaVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._iconInvalid = true;
            if(!_loc3_)
            {
               this._iconData = param1;
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0041:
                  invalidateProperties();
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      private function _HeaderComponent_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.left = 2;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 2;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005f:
                     _loc1_.bottom = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.bottomLeftRadiusX = 10;
                        if(!_loc2_)
                        {
                           _loc1_.bottomLeftRadiusY = 30;
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.bottomRightRadiusX = 10;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00ae:
                                 _loc1_.bottomRightRadiusY = 30;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00c1:
                                    _loc1_.topLeftRadiusX = 10;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       _loc1_.topLeftRadiusY = 30;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          _loc1_.topRightRadiusX = 10;
                                          if(!_loc2_)
                                          {
                                             _loc1_.topRightRadiusY = 30;
                                             if(!_loc2_)
                                             {
                                                addr00fd:
                                                _loc1_.percentHeight = 100;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr010f);
                                                }
                                                §§goto(addr012d);
                                             }
                                             addr010f:
                                             _loc1_.minHeight = 24;
                                             if(_loc3_ || Boolean(this))
                                             {
                                                addr012d:
                                                _loc1_.fill = this._HeaderComponent_RadialGradient1_c();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr013c);
                                                }
                                                §§goto(addr014d);
                                             }
                                          }
                                          §§goto(addr013c);
                                       }
                                       §§goto(addr00fd);
                                    }
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr012d);
                        }
                        addr013c:
                        _loc1_.filters = [this._HeaderComponent_DropShadowFilter1_c()];
                        if(_loc3_)
                        {
                           addr014d:
                           _loc1_.initialized(this,null);
                        }
                        §§goto(addr0154);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0154);
               }
               §§goto(addr013c);
            }
            §§goto(addr005f);
         }
         addr0154:
         return _loc1_;
      }
      
      private function _HeaderComponent_RadialGradient1_c() : RadialGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadialGradient = new RadialGradient();
         if(!_loc2_)
         {
            _loc1_.entries = [this._HeaderComponent_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _HeaderComponent_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.color = 165328;
            if(_loc2_)
            {
               _loc1_.ratio = 0.5;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0054:
                  _loc1_.alpha = 0.45;
               }
            }
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _HeaderComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!_loc2_)
         {
            _loc1_.distance = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.blurX = 3;
               if(_loc3_)
               {
                  _loc1_.blurY = 3;
                  if(_loc3_)
                  {
                     _loc1_.color = 165328;
                     if(_loc3_ || _loc2_)
                     {
                        addr0077:
                        _loc1_.alpha = 0.45;
                     }
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr0077);
         }
         addr007d:
         return _loc1_;
      }
      
      private function _HeaderComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  addr003b:
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0064:
                        _loc1_.paddingTop = 3;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.paddingBottom = 3;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._HeaderComponent_Group2_c(),this._HeaderComponent_LocaLabel1_i()];
                              if(_loc2_ || _loc3_)
                              {
                                 addr00ae:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00c2:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0064);
            }
            §§goto(addr003b);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _HeaderComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._HeaderComponent_BriskImageDynaLib1_i()];
               if(!_loc2_)
               {
                  addr0056:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _HeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0044:
                  _loc1_.top = -8;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "headerIcon";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a6:
                                 this.headerIcon = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00b0:
                                    BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00b0);
               }
               addr00bd:
               return _loc1_;
            }
            §§goto(addr00b0);
         }
         §§goto(addr0044);
      }
      
      private function _HeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 90;
            if(!_loc2_)
            {
               addr0033:
               _loc1_.styleName = "StatusBarStyle";
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005f:
                     _loc1_.id = "labelDisplay";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009a:
                                 this.labelDisplay = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr005f);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0033);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerIcon() : BriskImageDynaLib
      {
         return this._1977189542headerIcon;
      }
      
      public function set headerIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1977189542headerIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1977189542headerIcon = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0085:
      }
   }
}

