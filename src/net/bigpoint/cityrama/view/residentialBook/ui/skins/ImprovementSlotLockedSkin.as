package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotLockedSkin extends SparkSkin implements IStateClient2
   {
      
      private var _591130263slotTextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotLockedSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._ImprovementSlotLockedSkin_Group1_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0047:
                     this.currentState = "normal";
                     if(!(_loc2_ && _loc2_))
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        }),new State({
                           "name":"highlight",
                           "overrides":[]
                        }),new State({
                           "name":"highlightOver",
                           "overrides":[]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "overrides":[]
                        }),new State({
                           "name":"up",
                           "overrides":[]
                        })];
                     }
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr0047);
            }
            addr00ec:
            return;
         }
         §§goto(addr0047);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0045);
         }
         addr0030:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr0045:
               return;
            }
         }
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
      
      private function _ImprovementSlotLockedSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 138;
            if(_loc2_)
            {
               _loc1_.height = 138;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementSlotLockedSkin_BriskImageDynaLib1_c(),this._ImprovementSlotLockedSkin_BriskImageDynaLib2_c(),this._ImprovementSlotLockedSkin_HGroup1_c()];
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0079);
                  }
                  §§goto(addr0085);
               }
            }
         }
         addr0079:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0085:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotLockedSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "slot_locked";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
            }
            §§goto(addr006d);
         }
         addr0071:
         return _loc1_;
      }
      
      private function _ImprovementSlotLockedSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_slot_locked";
               if(!(_loc2_ && _loc3_))
               {
                  addr004a:
                  _loc1_.bottom = 45;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = 43;
                     if(_loc3_)
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr0088);
               }
               addr008c:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr0074);
      }
      
      private function _ImprovementSlotLockedSkin_HGroup1_c() : HGroup
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
               addr002a:
               _loc1_.height = 45;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr005b:
                        _loc1_.bottom = 0;
                        if(!_loc3_)
                        {
                           addr0070:
                           _loc1_.mxmlContent = [this._ImprovementSlotLockedSkin_LocaLabel1_i()];
                           if(_loc2_)
                           {
                              §§goto(addr0080);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0070);
                  }
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr0094:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr005b);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr002a);
      }
      
      private function _ImprovementSlotLockedSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 90;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.styleName = "featureBubbleHead";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "slotTextLabel";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0092:
                                 this.slotTextLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr009c:
                                    BindingManager.executeBindings(this,"slotTextLabel",this.slotTextLabel);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0092);
            }
            §§goto(addr009c);
         }
         addr00a9:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slotTextLabel() : LocaLabel
      {
         return this._591130263slotTextLabel;
      }
      
      public function set slotTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._591130263slotTextLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._591130263slotTextLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotTextLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
   }
}

