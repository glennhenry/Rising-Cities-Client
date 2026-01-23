package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class RentCollectorHireInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _231206217attentionIcon:BriskImageDynaLib;
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorHireInfoSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0038:
                  this.width = 250;
                  if(_loc2_ || _loc2_)
                  {
                     this.minHeight = 90;
                     if(_loc2_ || _loc2_)
                     {
                        addr0068:
                        this.mxmlContent = [this._RentCollectorHireInfoSkin_Group1_c()];
                        if(_loc2_ || _loc2_)
                        {
                           addr008a:
                           this.currentState = "normal";
                           if(!_loc1_)
                           {
                              addr0096:
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0068);
            }
            §§goto(addr0038);
         }
         §§goto(addr0096);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr003b);
                  }
               }
               else
               {
                  addr0049:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr003b:
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _RentCollectorHireInfoSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_Group2_c()];
                  if(!_loc3_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr0081);
      }
      
      private function _RentCollectorHireInfoSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorHireInfoSkin_HGroup1_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib4_i(),this._RentCollectorHireInfoSkin_BriskImageDynaLib5_i(),this._RentCollectorHireInfoSkin_HGroup2_c(),this._RentCollectorHireInfoSkin_VGroup1_c()];
               addr003e:
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008d:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr003e);
      }
      
      private function _RentCollectorHireInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005e:
                     _loc1_.id = "bubble";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00ac);
               }
               addr0071:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr007d:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr009a);
                     }
                     §§goto(addr00ac);
                  }
               }
               §§goto(addr009a);
            }
            §§goto(addr005e);
         }
         addr009a:
         this.bubble = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr00ac:
            BindingManager.executeBindings(this,"bubble",this.bubble);
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = 5;
               if(_loc3_)
               {
                  _loc1_.right = 15;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0078);
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00df);
               }
               addr0078:
               _loc1_.top = 9;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008a:
                  _loc1_.height = 30;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_BriskImageDynaLib1_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib2_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib3_c()];
                     addr009c:
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00cb:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr00df:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr00cb);
               }
               addr00e3:
               return _loc1_;
            }
         }
         §§goto(addr008a);
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0071);
               }
               addr005d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0071:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr004c);
               }
               §§goto(addr006a);
            }
            addr004c:
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && _loc2_))
            {
               addr006a:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0088:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0088);
            }
            §§goto(addr008c);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005d:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0073);
               }
               addr0077:
               return _loc1_;
            }
            §§goto(addr0073);
         }
         §§goto(addr005d);
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.left = -8;
                        if(_loc3_)
                        {
                           addr0075:
                           _loc1_.top = -10;
                           if(_loc3_)
                           {
                              _loc1_.id = "attentionIcon";
                              if(_loc3_ || _loc3_)
                              {
                                 addr0092:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00b3);
                                       }
                                    }
                                    §§goto(addr00c5);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr0075);
                  }
               }
               addr00b3:
               this.attentionIcon = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  addr00c5:
                  BindingManager.executeBindings(this,"attentionIcon",this.attentionIcon);
               }
               return _loc1_;
            }
         }
         §§goto(addr0092);
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_sale";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        _loc1_.left = -25;
                        if(_loc3_ || _loc3_)
                        {
                           addr0088:
                           _loc1_.top = -10;
                           if(_loc3_)
                           {
                              _loc1_.id = "saleIcon";
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00a5:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00cf:
                                          this.saleIcon = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00d9:
                                             BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
                                          }
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00d9);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00a5);
                        }
                        addr00e6:
                        return _loc1_;
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0088);
            }
            §§goto(addr00d9);
         }
         §§goto(addr00a5);
      }
      
      private function _RentCollectorHireInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.left = 5;
            if(!_loc2_)
            {
               _loc1_.top = 11;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.right = 10;
                  if(_loc3_)
                  {
                     _loc1_.height = 30;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr006e:
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_LocaLabel1_i()];
                              addr0080:
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a4:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b8:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr006e);
               }
               addr00bc:
               return _loc1_;
            }
            §§goto(addr00b8);
         }
         §§goto(addr0080);
      }
      
      private function _RentCollectorHireInfoSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "eventName";
            if(_loc3_ || _loc3_)
            {
               _loc1_.maxWidth = 170;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0060:
                     _loc1_.id = "header";
                     if(_loc3_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0093);
               }
               addr008a:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0093:
                  this.header = _loc1_;
                  if(_loc3_)
                  {
                     addr009d:
                     BindingManager.executeBindings(this,"header",this.header);
                  }
               }
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr0060);
      }
      
      private function _RentCollectorHireInfoSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.left = 5;
            if(!_loc2_)
            {
               _loc1_.right = 15;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  addr003d:
                  if(!_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc2_)
                     {
                        addr005d:
                        _loc1_.paddingTop = 45;
                        if(_loc3_)
                        {
                           _loc1_.minHeight = 30;
                           if(_loc3_)
                           {
                              addr0080:
                              _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_LocaLabel2_i(),this._RentCollectorHireInfoSkin_Group3_c()];
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009e:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00aa:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0080);
            }
            §§goto(addr003d);
         }
         §§goto(addr009e);
      }
      
      private function _RentCollectorHireInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 60;
            if(_loc3_ || Boolean(this))
            {
               addr0033:
               _loc1_.styleName = "residentialCycleText";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "infoText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0098);
               }
            }
            addr0086:
            this.infoText = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0098:
               BindingManager.executeBindings(this,"infoText",this.infoText);
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _RentCollectorHireInfoSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 5;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionIcon() : BriskImageDynaLib
      {
         return this._231206217attentionIcon;
      }
      
      public function set attentionIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._231206217attentionIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr004d:
                  this._231206217attentionIcon = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1378241396bubble = param1;
                  if(!_loc3_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004e);
            }
            addr0074:
            return;
         }
         §§goto(addr004e);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1221270899header = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177936123infoText;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177936123infoText = param1;
                  addr003d:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1935734112saleIcon;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1935734112saleIcon = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0053:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0053);
      }
   }
}

