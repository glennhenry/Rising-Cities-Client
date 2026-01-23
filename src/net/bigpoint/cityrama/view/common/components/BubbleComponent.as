package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class BubbleComponent extends Group
   {
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BubbleComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               §§goto(addr001d);
            }
            §§goto(addr006f);
         }
         addr001d:
         mx_internal::_document = this;
         if(_loc1_ || _loc1_)
         {
            this.percentWidth = 100;
            if(_loc1_ || _loc1_)
            {
               this.percentHeight = 100;
               if(_loc1_ || _loc1_)
               {
                  addr006f:
                  this.mxmlContent = [this._BubbleComponent_HGroup1_c(),this._BubbleComponent_Group2_i()];
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr004b);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr004b:
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
      
      private function _BubbleComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005c:
                     _loc1_.gap = 0;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._BubbleComponent_VGroup1_c(),this._BubbleComponent_VGroup2_c(),this._BubbleComponent_VGroup3_c()];
                        §§goto(addr006e);
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr00b2);
            }
            §§goto(addr005c);
         }
         addr006e:
         if(!(_loc3_ && _loc2_))
         {
            addr009e:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr00b2:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BubbleComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "right";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BubbleComponent_BriskImageDynaLib1_c(),this._BubbleComponent_BriskImageDynaLib2_c(),this._BubbleComponent_BriskImageDynaLib3_c(),this._BubbleComponent_BriskImageDynaLib4_c(),this._BubbleComponent_BriskImageDynaLib5_c()];
                     §§goto(addr005b);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00a3);
            }
         }
         addr005b:
         if(!(_loc3_ && _loc2_))
         {
            addr0097:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr00a3:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BubbleComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_tl";
            if(_loc2_)
            {
               addr003f:
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc3_)
               {
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
         §§goto(addr003f);
      }
      
      private function _BubbleComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_l";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               addr0041:
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0075:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0069);
            }
            §§goto(addr0075);
         }
         §§goto(addr0041);
      }
      
      private function _BubbleComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_cone";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_ || Boolean(this))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr005f);
      }
      
      private function _BubbleComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_l";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr005f);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _BubbleComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_bl";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006a);
      }
      
      private function _BubbleComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._BubbleComponent_BriskImageDynaLib6_c(),this._BubbleComponent_BriskImageDynaLib7_c(),this._BubbleComponent_BriskImageDynaLib8_c()];
                     addr0052:
                     if(_loc2_ || _loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr009b);
            }
            §§goto(addr0052);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _BubbleComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_t";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0084);
         }
         §§goto(addr0070);
      }
      
      private function _BubbleComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_c";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     addr0062:
                     _loc1_.percentWidth = 100;
                     if(!_loc3_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0062);
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _BubbleComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_b";
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr0041);
            }
            §§goto(addr004c);
         }
         addr0041:
         _loc1_.dynaLibName = "gui_ui_questSide";
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            addr004c:
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0083);
            }
            §§goto(addr007f);
         }
         addr0083:
         return _loc1_;
      }
      
      private function _BubbleComponent_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0045:
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._BubbleComponent_BriskImageDynaLib9_c(),this._BubbleComponent_BriskImageDynaLib10_c(),this._BubbleComponent_BriskImageDynaLib11_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0092);
            }
            addr0086:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0092:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _BubbleComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_tr";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr006c);
            }
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr006c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _BubbleComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_r";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0085);
            }
            addr0071:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0085:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _BubbleComponent_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_br";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005a);
               }
            }
            §§goto(addr0056);
         }
         addr005a:
         return _loc1_;
      }
      
      private function _BubbleComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  addr0048:
                  _loc1_.id = "contentGroup";
                  if(_loc3_ || _loc2_)
                  {
                     addr005b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007c:
                              this.contentGroup = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr008e:
                                 BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr008e);
                        }
                        addr009b:
                        return _loc1_;
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0073);
            }
            §§goto(addr005b);
         }
         §§goto(addr0048);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._809612678contentGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
   }
}

