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
   
   public class RentCollectorIdleInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorIdleInfoSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 250;
                  if(_loc2_)
                  {
                     this.minHeight = 90;
                     if(_loc2_)
                     {
                        addr0058:
                        this.mxmlContent = [this._RentCollectorIdleInfoSkin_Group1_c()];
                        if(_loc2_ || _loc2_)
                        {
                           addr0070:
                           this.currentState = "normal";
                           if(!(_loc1_ && _loc2_))
                           {
                              addr008e:
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0070);
               }
               addr00b6:
               return;
            }
            §§goto(addr0058);
         }
         §§goto(addr0070);
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
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr003a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr003a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _RentCollectorIdleInfoSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._RentCollectorIdleInfoSkin_Group2_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr006d);
                  }
               }
               §§goto(addr0081);
            }
            addr006d:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0081:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0085);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _RentCollectorIdleInfoSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._RentCollectorIdleInfoSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorIdleInfoSkin_HGroup1_c(),this._RentCollectorIdleInfoSkin_BriskImageDynaLib4_c(),this._RentCollectorIdleInfoSkin_HGroup2_c(),this._RentCollectorIdleInfoSkin_VGroup1_c()];
               if(_loc2_)
               {
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0083:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0083);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _RentCollectorIdleInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.bottom = 0;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "bubble";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0087:
                                 this.bubble = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                                 §§goto(addr009e);
                              }
                              §§goto(addr0091);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0087);
                     }
                     addr009e:
                     return _loc1_;
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr007e);
         }
         §§goto(addr0087);
      }
      
      private function _RentCollectorIdleInfoSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.left = 5;
               if(_loc2_)
               {
                  _loc1_.right = 15;
                  if(!_loc3_)
                  {
                     addr0046:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0070:
                           _loc1_.top = 9;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.height = 30;
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._RentCollectorIdleInfoSkin_BriskImageDynaLib1_c(),this._RentCollectorIdleInfoSkin_BriskImageDynaLib2_c(),this._RentCollectorIdleInfoSkin_BriskImageDynaLib3_c()];
                                 §§goto(addr008c);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0046);
            }
            §§goto(addr00bc);
         }
         addr008c:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr00bc:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr00c8:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorIdleInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0083);
      }
      
      private function _RentCollectorIdleInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 90;
                  if(_loc3_)
                  {
                     addr005d:
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr007f);
            }
            §§goto(addr005d);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _RentCollectorIdleInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0083);
               }
               addr006f:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0083:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _RentCollectorIdleInfoSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_demolish";
               if(_loc2_)
               {
                  _loc1_.left = -8;
                  if(_loc2_)
                  {
                     _loc1_.top = -3;
                     addr0058:
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008c);
                  }
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr008c);
         }
         §§goto(addr0058);
      }
      
      private function _RentCollectorIdleInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.left = 5;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 11;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0056);
               }
            }
            §§goto(addr0091);
         }
         addr0056:
         _loc1_.right = 10;
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 30;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0091:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr009b:
                     _loc1_.mxmlContent = [this._RentCollectorIdleInfoSkin_LocaLabel1_i()];
                     if(!_loc2_)
                     {
                        §§goto(addr00ab);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00b7);
            }
            §§goto(addr009b);
         }
         addr00ab:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr00b7:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorIdleInfoSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "eventName";
            if(_loc3_)
            {
               _loc1_.maxWidth = 170;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     addr004c:
                     _loc1_.id = "header";
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr0099);
                  }
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr0087:
                  this.header = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0099:
                     BindingManager.executeBindings(this,"header",this.header);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr004c);
      }
      
      private function _RentCollectorIdleInfoSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.left = 5;
            if(_loc2_)
            {
               _loc1_.right = 15;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  addr003b:
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr0063:
                        _loc1_.paddingTop = 45;
                        if(!_loc3_)
                        {
                           addr0079:
                           _loc1_.minHeight = 30;
                           if(!_loc3_)
                           {
                              addr0084:
                              _loc1_.mxmlContent = [this._RentCollectorIdleInfoSkin_LocaLabel2_i(),this._RentCollectorIdleInfoSkin_Group3_c()];
                              if(!_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00a6:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a6);
                     }
                     addr00aa:
                     return _loc1_;
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0079);
            }
            §§goto(addr003b);
         }
         §§goto(addr0084);
      }
      
      private function _RentCollectorIdleInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 60;
            if(_loc3_)
            {
               addr0032:
               _loc1_.styleName = "residentialCycleText";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "infoText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007d:
                              this.infoText = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"infoText",this.infoText);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr008f);
                        }
                        addr009c:
                        return _loc1_;
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr008f);
            }
            §§goto(addr007d);
         }
         §§goto(addr0032);
      }
      
      private function _RentCollectorIdleInfoSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 5;
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
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
               if(!_loc4_)
               {
                  this._1378241396bubble = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
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
         §§goto(addr006d);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1221270899header = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
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
         §§goto(addr006c);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._177936123infoText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
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
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

