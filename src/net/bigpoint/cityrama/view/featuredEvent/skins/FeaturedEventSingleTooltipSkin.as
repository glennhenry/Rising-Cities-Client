package net.bigpoint.cityrama.view.featuredEvent.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventTooltip;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FeaturedEventSingleTooltipSkin extends SparkSkin
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _177936123infoText:LocaLabel;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FeaturedEventTooltip;
      
      public function FeaturedEventSingleTooltipSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004b:
                  this.width = 250;
                  if(_loc1_ || Boolean(this))
                  {
                     this.minHeight = 90;
                     if(!_loc2_)
                     {
                        addr0069:
                        this.mxmlContent = [this._FeaturedEventSingleTooltipSkin_Group1_c()];
                     }
                  }
               }
               return;
            }
            §§goto(addr004b);
         }
         §§goto(addr0069);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr003a);
         }
         addr002d:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               addr003a:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _FeaturedEventSingleTooltipSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._FeaturedEventSingleTooltipSkin_Group2_c()];
                  §§goto(addr0051);
               }
               §§goto(addr008a);
            }
         }
         addr0051:
         if(_loc3_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr008a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FeaturedEventSingleTooltipSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._FeaturedEventSingleTooltipSkin_RentCollectorBubbleComponent1_i(),this._FeaturedEventSingleTooltipSkin_HGroup1_c(),this._FeaturedEventSingleTooltipSkin_BriskImageDynaLib4_i(),this._FeaturedEventSingleTooltipSkin_HGroup2_c(),this._FeaturedEventSingleTooltipSkin_VGroup1_c()];
               if(!_loc3_)
               {
                  §§goto(addr0071);
               }
            }
            §§goto(addr007d);
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr007d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FeaturedEventSingleTooltipSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0077);
            }
            addr0064:
            _loc1_.id = "bubble";
            if(!(_loc3_ && Boolean(this)))
            {
               addr0077:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0098:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00a9:
                        this.bubble = _loc1_;
                        if(!_loc3_)
                        {
                           addr00b3:
                           BindingManager.executeBindings(this,"bubble",this.bubble);
                        }
                     }
                     §§goto(addr00c0);
                  }
               }
               §§goto(addr00a9);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr0098);
      }
      
      private function _FeaturedEventSingleTooltipSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.left = 5;
               if(!_loc3_)
               {
                  addr0043:
                  _loc1_.right = 15;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0073:
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_)
                        {
                           _loc1_.top = 9;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0090:
                              _loc1_.height = 30;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.mxmlContent = [this._FeaturedEventSingleTooltipSkin_BriskImageDynaLib1_c(),this._FeaturedEventSingleTooltipSkin_BriskImageDynaLib2_c(),this._FeaturedEventSingleTooltipSkin_BriskImageDynaLib3_c()];
                                 if(!_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00de:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00de);
                           }
                           addr00e2:
                           return _loc1_;
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr0090);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0043);
         }
         §§goto(addr0090);
      }
      
      private function _FeaturedEventSingleTooltipSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!_loc2_)
               {
                  addr0058:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr006e);
               }
               addr0062:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr006e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0058);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _FeaturedEventSingleTooltipSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc3_)
               {
                  addr004d:
                  _loc1_.percentWidth = 90;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr008b);
               }
               addr006d:
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr008b:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr004d);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _FeaturedEventSingleTooltipSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
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
            §§goto(addr006d);
         }
         §§goto(addr0061);
      }
      
      private function _FeaturedEventSingleTooltipSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = -5;
               if(!_loc3_)
               {
                  _loc1_.top = -5;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "headerIcon";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008e:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0097);
                              }
                              §§goto(addr00a9);
                           }
                        }
                     }
                     addr0097:
                     this.headerIcon = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr00a9:
                        BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr00a9);
         }
         §§goto(addr008e);
      }
      
      private function _FeaturedEventSingleTooltipSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 40;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = 11;
               if(_loc2_)
               {
                  addr0044:
                  _loc1_.right = 33;
                  if(_loc2_ || _loc2_)
                  {
                     addr0062:
                     _loc1_.height = 30;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.mxmlContent = [this._FeaturedEventSingleTooltipSkin_LocaLabel1_i()];
                              addr0091:
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00b4:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00c8:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00cc);
                              }
                           }
                           §§goto(addr00c8);
                        }
                        addr00cc:
                        return _loc1_;
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0062);
            }
            §§goto(addr00c8);
         }
         §§goto(addr0044);
      }
      
      private function _FeaturedEventSingleTooltipSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "eventName";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.maxWidth = 170;
               if(!_loc2_)
               {
                  addr0049:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "header";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0089:
                                 this.header = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0080);
            }
            §§goto(addr0049);
         }
         §§goto(addr0089);
      }
      
      private function _FeaturedEventSingleTooltipSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.left = 5;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.right = 15;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.verticalAlign = "middle";
                     if(!_loc2_)
                     {
                        _loc1_.paddingTop = 45;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._FeaturedEventSingleTooltipSkin_LocaLabel2_i(),this._FeaturedEventSingleTooltipSkin_TimerBarComponent1_i(),this._FeaturedEventSingleTooltipSkin_Group3_c()];
                           addr0068:
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0098);
                           }
                           §§goto(addr00ac);
                        }
                        addr0098:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr00ac:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0068);
                  }
                  addr00b0:
                  return _loc1_;
               }
               §§goto(addr00ac);
            }
         }
         §§goto(addr0052);
      }
      
      private function _FeaturedEventSingleTooltipSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 60;
            if(_loc3_)
            {
               _loc1_.styleName = "residentialCycleText";
               if(_loc3_)
               {
                  _loc1_.id = "infoText";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0074);
                        }
                     }
                     §§goto(addr007d);
                  }
                  addr0074:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr007d:
                     this.infoText = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr008f:
                        BindingManager.executeBindings(this,"infoText",this.infoText);
                     }
                  }
                  §§goto(addr009c);
               }
               addr009c:
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr007d);
      }
      
      private function _FeaturedEventSingleTooltipSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(!_loc3_)
            {
               _loc1_.revertFlow = true;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.width = 170;
                  if(_loc2_)
                  {
                     addr0054:
                     _loc1_.id = "progressTimer";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0073);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr008f);
                     }
                     addr0073:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr008f:
                        this.progressTimer = _loc1_;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00a1:
                           BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
                        }
                     }
                     §§goto(addr00ae);
                  }
                  addr00ae:
                  return _loc1_;
               }
               §§goto(addr00a1);
            }
            §§goto(addr0054);
         }
         §§goto(addr00a1);
      }
      
      private function _FeaturedEventSingleTooltipSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 5;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0052:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1378241396bubble;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1378241396bubble = param1;
                  if(_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1221270899header = param1;
                  addr0038:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1977189542headerIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177936123infoText;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._177936123infoText = param1;
                  if(!_loc4_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0062);
            }
         }
         addr0081:
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._770681112progressTimer = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FeaturedEventTooltip
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FeaturedEventTooltip) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
         }
         addr0086:
      }
   }
}

