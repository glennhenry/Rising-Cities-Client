package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class DebossedBackgroundComponent extends Group
   {
      
      private var _1682792238bottomLeft:BriskImageDynaLib;
      
      private var _2071581600bottomMiddle:BriskImageDynaLib;
      
      private var _621290831bottomRight:BriskImageDynaLib;
      
      private var _818275524middleLeft:BriskImageDynaLib;
      
      private var _351511670middleMiddle:BriskImageDynaLib;
      
      private var _408923527middleRight:BriskImageDynaLib;
      
      private var _1140120836topLeft:BriskImageDynaLib;
      
      private var _407211190topMiddle:BriskImageDynaLib;
      
      private var _978346553topRight:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DebossedBackgroundComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr004c:
                  this.percentWidth = 100;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.percentHeight = 100;
                     if(!_loc1_)
                     {
                        addr0068:
                        this.mxmlContent = [this._DebossedBackgroundComponent_VGroup1_c()];
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0068);
            }
            addr0073:
            return;
         }
         §§goto(addr004c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0048);
                  }
               }
               else
               {
                  addr0056:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0048:
            return;
         }
         §§goto(addr0056);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _DebossedBackgroundComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  addr0051:
                  _loc1_.gap = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._DebossedBackgroundComponent_HGroup1_c(),this._DebossedBackgroundComponent_HGroup2_c(),this._DebossedBackgroundComponent_HGroup3_c()];
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0097:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr0097);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr0097);
      }
      
      private function _DebossedBackgroundComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr003e);
            }
            §§goto(addr0084);
         }
         addr003e:
         _loc1_.gap = 0;
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib1_i(),this._DebossedBackgroundComponent_BriskImageDynaLib2_i(),this._DebossedBackgroundComponent_BriskImageDynaLib3_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0084:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_left_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0051:
                  _loc1_.id = "topLeft";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0098);
                        }
                     }
                  }
               }
               addr0086:
               this.topLeft = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr0098:
                  BindingManager.executeBindings(this,"topLeft",this.topLeft);
               }
               §§goto(addr00a5);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0046:
               _loc1_.dynaBmpSourceName = "debossed_bg_top";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr005c:
                     _loc1_.id = "topMiddle";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0090:
                                 this.topMiddle = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"topMiddle",this.topMiddle);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0090);
            }
            §§goto(addr005c);
         }
         §§goto(addr0046);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_right_top";
               if(_loc2_)
               {
                  _loc1_.id = "topRight";
                  if(_loc2_ || _loc3_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007d:
                              this.topRight = _loc1_;
                              if(_loc2_)
                              {
                                 addr0087:
                                 BindingManager.executeBindings(this,"topRight",this.topRight);
                              }
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0074);
               }
               addr0094:
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr0087);
      }
      
      private function _DebossedBackgroundComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               addr003c:
               if(_loc2_ || _loc2_)
               {
                  _loc1_.gap = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib4_i(),this._DebossedBackgroundComponent_BriskImageDynaLib5_i(),this._DebossedBackgroundComponent_BriskImageDynaLib6_i()];
                     §§goto(addr006b);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00a5);
            }
            addr006b:
            if(!_loc3_)
            {
               addr0091:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a5:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_left";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "middleLeft";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr009a:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00ab);
                              }
                           }
                           §§goto(addr00b5);
                        }
                        addr00ab:
                        this.middleLeft = _loc1_;
                        if(!_loc2_)
                        {
                           addr00b5:
                           BindingManager.executeBindings(this,"middleLeft",this.middleLeft);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr009a);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr00b5);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_)
            {
               addr0032:
               _loc1_.dynaBmpSourceName = "debossed_bg_center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.id = "middleMiddle";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0087:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr00a5);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           addr00a5:
                           this.middleMiddle = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00b7:
                              BindingManager.executeBindings(this,"middleMiddle",this.middleMiddle);
                           }
                           §§goto(addr00c4);
                        }
                     }
                  }
                  addr00c4:
                  return _loc1_;
               }
               §§goto(addr0087);
            }
            §§goto(addr00b7);
         }
         §§goto(addr0032);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_right";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.id = "middleRight";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr006d:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr0089);
                              }
                           }
                           §§goto(addr009b);
                        }
                     }
                     addr0089:
                     this.middleRight = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr009b:
                        BindingManager.executeBindings(this,"middleRight",this.middleRight);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr006d);
               }
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _DebossedBackgroundComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib7_i(),this._DebossedBackgroundComponent_BriskImageDynaLib8_i(),this._DebossedBackgroundComponent_BriskImageDynaLib9_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007a);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_left_bottom";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "bottomLeft";
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              this.bottomLeft = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"bottomLeft",this.bottomLeft);
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr0098);
            }
            §§goto(addr007d);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "debossed_bg_bottom";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     addr006c:
                     _loc1_.id = "bottomMiddle";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0096:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr00a7);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        addr00a7:
                        this.bottomMiddle = _loc1_;
                        if(!_loc2_)
                        {
                           addr00b1:
                           BindingManager.executeBindings(this,"bottomMiddle",this.bottomMiddle);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr006c);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_ || _loc3_)
            {
               addr0034:
               _loc1_.dynaBmpSourceName = "debossed_bg_right_bottom";
               if(!_loc2_)
               {
                  _loc1_.id = "bottomRight";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008a:
                              this.bottomRight = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"bottomRight",this.bottomRight);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        addr00a9:
                        return _loc1_;
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr008a);
            }
            §§goto(addr009c);
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomLeft() : BriskImageDynaLib
      {
         return this._1682792238bottomLeft;
      }
      
      public function set bottomLeft(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1682792238bottomLeft;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr004f:
                  this._1682792238bottomLeft = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomMiddle() : BriskImageDynaLib
      {
         return this._2071581600bottomMiddle;
      }
      
      public function set bottomMiddle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2071581600bottomMiddle;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2071581600bottomMiddle = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomMiddle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomRight() : BriskImageDynaLib
      {
         return this._621290831bottomRight;
      }
      
      public function set bottomRight(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._621290831bottomRight;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._621290831bottomRight = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomRight",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleLeft() : BriskImageDynaLib
      {
         return this._818275524middleLeft;
      }
      
      public function set middleLeft(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._818275524middleLeft;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._818275524middleLeft = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleLeft",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get middleMiddle() : BriskImageDynaLib
      {
         return this._351511670middleMiddle;
      }
      
      public function set middleMiddle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._351511670middleMiddle;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._351511670middleMiddle = param1;
                  if(_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleMiddle",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleRight() : BriskImageDynaLib
      {
         return this._408923527middleRight;
      }
      
      public function set middleRight(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._408923527middleRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._408923527middleRight = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleRight",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topLeft() : BriskImageDynaLib
      {
         return this._1140120836topLeft;
      }
      
      public function set topLeft(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1140120836topLeft;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0049:
                  this._1140120836topLeft = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topLeft",_loc2_,param1));
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
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get topMiddle() : BriskImageDynaLib
      {
         return this._407211190topMiddle;
      }
      
      public function set topMiddle(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._407211190topMiddle;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._407211190topMiddle = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topMiddle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0069);
            }
            addr008f:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get topRight() : BriskImageDynaLib
      {
         return this._978346553topRight;
      }
      
      public function set topRight(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._978346553topRight;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._978346553topRight = param1;
                  addr0035:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0035);
      }
   }
}

