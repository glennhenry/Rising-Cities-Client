package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PatrolVacantInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PatrolInfoComponent;
      
      public function PatrolVacantInfoSkin()
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
               if(!(_loc1_ && _loc1_))
               {
                  this.width = 250;
                  if(_loc2_ || Boolean(this))
                  {
                     this.minHeight = 90;
                     if(!_loc1_)
                     {
                        this.mxmlContent = [this._PatrolVacantInfoSkin_Group1_c()];
                        if(_loc2_ || _loc1_)
                        {
                           addr0082:
                           this.currentState = "normal";
                           if(!_loc1_)
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
                        §§goto(addr00b6);
                     }
                     §§goto(addr0082);
                  }
               }
               addr00b6:
               return;
            }
         }
         §§goto(addr0082);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0042);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0042:
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
      
      private function _PatrolVacantInfoSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  addr0053:
                  _loc1_.mxmlContent = [this._PatrolVacantInfoSkin_Group2_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0053);
         }
         §§goto(addr0077);
      }
      
      private function _PatrolVacantInfoSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._PatrolVacantInfoSkin_RentCollectorBubbleComponent1_i(),this._PatrolVacantInfoSkin_HGroup1_c(),this._PatrolVacantInfoSkin_BriskImageDynaLib4_c(),this._PatrolVacantInfoSkin_HGroup2_c(),this._PatrolVacantInfoSkin_VGroup1_c()];
               if(!_loc2_)
               {
                  §§goto(addr0078);
               }
            }
            §§goto(addr008c);
         }
         addr0078:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr008c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _PatrolVacantInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.bottom = 0;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     addr0058:
                     _loc1_.id = "bubble";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0094:
                                 this.bubble = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009e:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr009e);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _PatrolVacantInfoSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.left = 5;
               if(_loc2_)
               {
                  _loc1_.right = 15;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005a:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.top = 9;
                           if(_loc2_)
                           {
                              _loc1_.height = 30;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009f:
                                 _loc1_.mxmlContent = [this._PatrolVacantInfoSkin_BriskImageDynaLib1_c(),this._PatrolVacantInfoSkin_BriskImageDynaLib2_c(),this._PatrolVacantInfoSkin_BriskImageDynaLib3_c()];
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00c7:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00cb);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00cb);
                        }
                     }
                     §§goto(addr009f);
                  }
               }
               addr00cb:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr005a);
      }
      
      private function _PatrolVacantInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || Boolean(this))
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006c);
               }
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr006c:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _PatrolVacantInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0065);
               }
               §§goto(addr0085);
            }
         }
         addr0065:
         _loc1_.percentWidth = 90;
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
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
         addr0089:
         return _loc1_;
      }
      
      private function _PatrolVacantInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!_loc2_)
               {
                  addr0053:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0071:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0071);
            }
            addr0075:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _PatrolVacantInfoSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.left = -8;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.top = -10;
                     if(!_loc3_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr007c);
                  }
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0080);
               }
            }
         }
         addr0080:
         return _loc1_;
      }
      
      private function _PatrolVacantInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.left = 5;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.top = 11;
               if(!_loc2_)
               {
                  _loc1_.right = 10;
                  if(!_loc2_)
                  {
                     _loc1_.height = 30;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.mxmlContent = [this._PatrolVacantInfoSkin_LocaLabel1_i()];
                              addr007b:
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00b3);
                           }
                           addr009f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr007b);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr007b);
      }
      
      private function _PatrolVacantInfoSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "eventName";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.maxWidth = 170;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     _loc1_.id = "header";
                     if(_loc2_)
                     {
                        addr0061:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0079:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0082:
                                 this.header = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0094:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0079);
            }
            §§goto(addr0094);
         }
         §§goto(addr0061);
      }
      
      private function _PatrolVacantInfoSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 5;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.right = 15;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0061:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        addr006c:
                        _loc1_.paddingTop = 45;
                        if(_loc2_ || Boolean(this))
                        {
                           addr008c:
                           _loc1_.minHeight = 30;
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._PatrolVacantInfoSkin_LocaLabel2_i(),this._PatrolVacantInfoSkin_Group3_c()];
                              if(!_loc3_)
                              {
                                 addr00ad:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00b9:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0061);
            }
            §§goto(addr00b9);
         }
         §§goto(addr008c);
      }
      
      private function _PatrolVacantInfoSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 60;
            if(_loc2_)
            {
               _loc1_.styleName = "residentialCycleText";
               if(_loc2_)
               {
                  _loc1_.id = "infoText";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0052:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0066:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr0094);
                        }
                     }
                     addr0082:
                     this.infoText = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"infoText",this.infoText);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00a1);
            }
            §§goto(addr0052);
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _PatrolVacantInfoSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 5;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0043:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0043);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1378241396bubble = param1;
                  addr0042:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
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
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._177936123infoText = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PatrolInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PatrolInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr0066);
      }
   }
}

