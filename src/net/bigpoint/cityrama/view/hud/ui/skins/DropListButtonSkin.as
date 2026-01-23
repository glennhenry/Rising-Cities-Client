package net.bigpoint.cityrama.view.hud.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class DropListButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _2135445627_DropListButtonSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function DropListButtonSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  addr0040:
                  this.mxmlContent = [this._DropListButtonSkin_HGroup1_c(),this._DropListButtonSkin_BriskImageDynaLib3_c(),this._DropListButtonSkin_BriskImageDynaLib4_i()];
                  if(_loc2_ || _loc2_)
                  {
                     this.currentState = "up";
                     if(_loc2_)
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_DropListButtonSkin_BriskImageDynaLib4",
                              "name":"rotation",
                              "value":180
                           })]
                        }),new State({
                           "name":"over",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_DropListButtonSkin_BriskImageDynaLib4",
                              "name":"dynaBmpSourceName",
                              "value":"mainhud_bar_arrow_mouseover"
                           }),new SetProperty().initializeFromObject({
                              "target":"_DropListButtonSkin_BriskImageDynaLib4",
                              "name":"rotation",
                              "value":180
                           })]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                        addr007a:
                     }
                  }
               }
               return;
            }
            §§goto(addr007a);
         }
         §§goto(addr0040);
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
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0047);
                  }
               }
               else
               {
                  addr004d:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0047:
            return;
         }
         §§goto(addr004d);
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
      
      private function _DropListButtonSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               §§goto(addr0030);
            }
            §§goto(addr006c);
         }
         addr0030:
         _loc1_.width = 25;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 25;
            if(_loc2_ || Boolean(this))
            {
               addr006c:
               _loc1_.mxmlContent = [this._DropListButtonSkin_BriskImageDynaLib1_c(),this._DropListButtonSkin_BriskImageDynaLib2_c()];
               if(_loc2_)
               {
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009a);
            }
            §§goto(addr0082);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
               addr0042:
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006d);
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_right";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_divider";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = -1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr006f);
            }
         }
         §§goto(addr0083);
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = -1;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = -1;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_main_hud";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaBmpSourceName = "mainhud_bar_arrow_normal";
                     addr0045:
                     if(!_loc3_)
                     {
                        _loc1_.rotation = 0;
                        if(!_loc3_)
                        {
                           _loc1_.id = "_DropListButtonSkin_BriskImageDynaLib4";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr0081:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr009e:
                                       this._DropListButtonSkin_BriskImageDynaLib4 = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00b0:
                                          BindingManager.executeBindings(this,"_DropListButtonSkin_BriskImageDynaLib4",this._DropListButtonSkin_BriskImageDynaLib4);
                                       }
                                    }
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr009e);
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr009e);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get _DropListButtonSkin_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._2135445627_DropListButtonSkin_BriskImageDynaLib4;
      }
      
      public function set _DropListButtonSkin_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2135445627_DropListButtonSkin_BriskImageDynaLib4;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2135445627_DropListButtonSkin_BriskImageDynaLib4 = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DropListButtonSkin_BriskImageDynaLib4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0064);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
   }
}

