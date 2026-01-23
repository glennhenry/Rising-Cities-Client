package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CitySquareSideMenuTooltip extends Group
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function CitySquareSideMenuTooltip()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 250;
                  if(_loc2_)
                  {
                     this.minHeight = 90;
                     if(!(_loc1_ && _loc2_))
                     {
                        this.mxmlContent = [this._CitySquareSideMenuTooltip_Group2_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           addr007a:
                           this.addEventListener("creationComplete",this.___CitySquareSideMenuTooltip_Group1_creationComplete);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007a);
            }
         }
         addr0086:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0057);
            }
            addr0043:
            return;
         }
         addr0057:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.header.text = LocaUtils.getString("rcl.misc.citySquareSideMenu","rcl.misc.citySquareSideMenu.header.capital");
            if(_loc2_)
            {
               addr0031:
               this.infoText.text = LocaUtils.getString("rcl.misc.citySquareSideMenu","rcl.misc.citySquareSideMenu.infotext");
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function _CitySquareSideMenuTooltip_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._CitySquareSideMenuTooltip_Group3_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0073);
                  }
                  §§goto(addr0087);
               }
            }
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr0087:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareSideMenuTooltip_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._CitySquareSideMenuTooltip_RentCollectorBubbleComponent1_i(),this._CitySquareSideMenuTooltip_HGroup1_c(),this._CitySquareSideMenuTooltip_BriskImageDynaLib4_c(),this._CitySquareSideMenuTooltip_HGroup2_c(),this._CitySquareSideMenuTooltip_VGroup1_c()];
               if(!_loc3_)
               {
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr0078);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _CitySquareSideMenuTooltip_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.bottom = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "bubble";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0099);
                              }
                              §§goto(addr00ab);
                           }
                        }
                        addr0099:
                        this.bubble = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"bubble",this.bubble);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0099);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr00ab);
      }
      
      private function _CitySquareSideMenuTooltip_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.left = 5;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 15;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     addr004e:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.top = 9;
                           if(!_loc2_)
                           {
                              addr0089:
                              _loc1_.height = 30;
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._CitySquareSideMenuTooltip_BriskImageDynaLib1_c(),this._CitySquareSideMenuTooltip_BriskImageDynaLib2_c(),this._CitySquareSideMenuTooltip_BriskImageDynaLib3_c()];
                                 addr0093:
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00c4:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00d0:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr0089);
            }
            §§goto(addr004e);
         }
         §§goto(addr0093);
      }
      
      private function _CitySquareSideMenuTooltip_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr006c);
               }
               addr0070:
               return _loc1_;
            }
         }
         §§goto(addr006c);
      }
      
      private function _CitySquareSideMenuTooltip_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 90;
                  addr0058:
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0080);
                     }
                  }
               }
               §§goto(addr008c);
            }
            addr0080:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr008c:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _CitySquareSideMenuTooltip_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0076:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0082:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareSideMenuTooltip_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.left = -8;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.top = -10;
                     if(_loc2_)
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr0077);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _CitySquareSideMenuTooltip_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.left = 5;
            if(!_loc2_)
            {
               addr0029:
               _loc1_.top = 11;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.right = 10;
                  if(_loc3_)
                  {
                     _loc1_.height = 30;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           addr0065:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._CitySquareSideMenuTooltip_LocaLabel1_i()];
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0093:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00a7:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr00a7);
                  }
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr0029);
      }
      
      private function _CitySquareSideMenuTooltip_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "eventName";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxWidth = 170;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "header";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0098:
                                 this.header = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0098);
            }
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _CitySquareSideMenuTooltip_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.left = 5;
            if(_loc2_)
            {
               _loc1_.right = 15;
               if(!_loc3_)
               {
                  addr0033:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.paddingTop = 45;
                        if(_loc2_ || _loc2_)
                        {
                           addr006e:
                           _loc1_.minHeight = 30;
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._CitySquareSideMenuTooltip_LocaLabel2_i(),this._CitySquareSideMenuTooltip_Group4_c()];
                              addr0079:
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a2:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006e);
            }
         }
         §§goto(addr0033);
      }
      
      private function _CitySquareSideMenuTooltip_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 60;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "residentialCycleText";
               if(!_loc3_)
               {
                  _loc1_.id = "infoText";
                  addr003d:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0084:
                              this.infoText = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"infoText",this.infoText);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0096);
                        }
                        addr00a3:
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr003d);
         }
         §§goto(addr005c);
      }
      
      private function _CitySquareSideMenuTooltip_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 5;
            if(!_loc2_)
            {
               §§goto(addr003e);
            }
            §§goto(addr0052);
         }
         addr003e:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(this))
            {
               addr0052:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      public function ___CitySquareSideMenuTooltip_Group1_creationComplete(param1:FlexEvent) : void
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1378241396bubble;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1378241396bubble = param1;
                  addr0047:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
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
         §§goto(addr0047);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1221270899header = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
         }
         addr007e:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._177936123infoText = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
   }
}

