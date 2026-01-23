package net.bigpoint.cityrama.view.assistants.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class RentCollectorBubbleComponent extends Group
   {
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function RentCollectorBubbleComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     this.percentHeight = 100;
                     if(!_loc1_)
                     {
                        addr0060:
                        this.rotation = 180;
                        if(_loc2_ || _loc1_)
                        {
                           this.mxmlContent = [this._RentCollectorBubbleComponent_HGroup1_c(),this._RentCollectorBubbleComponent_Group2_i()];
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0060);
               }
            }
         }
         addr0085:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
               addr004f:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004f);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _RentCollectorBubbleComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 0;
                     addr005a:
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._RentCollectorBubbleComponent_VGroup1_c(),this._RentCollectorBubbleComponent_VGroup2_c(),this._RentCollectorBubbleComponent_VGroup3_c()];
                        if(!_loc2_)
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008c);
                  }
               }
               addr009c:
               return _loc1_;
            }
         }
         §§goto(addr005a);
      }
      
      private function _RentCollectorBubbleComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalAlign = "right";
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._RentCollectorBubbleComponent_BriskImageDynaLib1_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib2_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib3_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib4_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib5_c()];
                     §§goto(addr0061);
                  }
                  §§goto(addr00a1);
               }
            }
            addr0061:
            if(_loc3_)
            {
               addr0095:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr00a1:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0095);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_tl";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  addr0059:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0059);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_l";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr007a);
            }
         }
         addr007e:
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_cone";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_)
               {
                  §§goto(addr0058);
               }
            }
            §§goto(addr006c);
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr006c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
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
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 15;
                  if(_loc3_)
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007a);
               }
            }
            §§goto(addr006a);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_bl";
            if(_loc3_)
            {
               addr0037:
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr0056);
            }
            addr0042:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0056:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _RentCollectorBubbleComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr008e);
               }
               addr0066:
               _loc1_.mxmlContent = [this._RentCollectorBubbleComponent_BriskImageDynaLib6_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib7_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib8_c()];
               if(!_loc2_)
               {
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr008e:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0082);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_t";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc2_)
               {
                  addr0055:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006b);
               }
               addr005f:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr006b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr0055);
         }
         addr006f:
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_c";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  addr0052:
                  if(_loc2_)
                  {
                     addr0069:
                     _loc1_.percentWidth = 100;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr0052);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_b";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr006b);
               }
               §§goto(addr0089);
            }
            addr006b:
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr007d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0089:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _RentCollectorBubbleComponent_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               addr0041:
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorBubbleComponent_BriskImageDynaLib9_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib10_c(),this._RentCollectorBubbleComponent_BriskImageDynaLib11_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr007d);
               }
               addr0071:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_tr";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr005d);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_r";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               addr0042:
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0078);
            }
            addr007c:
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _RentCollectorBubbleComponent_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_infolayer_br";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _RentCollectorBubbleComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "contentGroup";
                  if(_loc3_)
                  {
                     addr0056:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0081:
                              this.contentGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 addr008b:
                                 BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0056);
            }
         }
         §§goto(addr0081);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._809612678contentGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0057);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
   }
}

