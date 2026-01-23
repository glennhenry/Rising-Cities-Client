package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoComponentSkin()
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
               if(!_loc1_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr006e);
            }
            §§goto(addr0062);
         }
         addr0042:
         this.mxmlContent = [this._FieldInfoComponentSkin_VGroup1_c(),this._FieldInfoComponentSkin_VGroup2_c()];
         if(!_loc1_)
         {
            addr0062:
            this.currentState = "normal";
            if(!_loc1_)
            {
               addr006e:
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
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0048);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr005c);
            }
            addr0048:
            return;
         }
         addr005c:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0048);
            }
            §§goto(addr008e);
         }
         addr0048:
         _loc1_.percentHeight = 100;
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._FieldInfoComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoComponentSkin_BriskImageDynaLib3_c()];
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!_loc2_)
               {
                  addr0059:
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     addr0064:
                     _loc1_.height = 12;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0064);
            }
            addr007e:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _FieldInfoComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr005f:
                  _loc1_.width = 227;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr00a3);
                  }
                  addr008f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00a3:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a7);
               }
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _FieldInfoComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.width = 227;
                  addr0052:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0071:
                     _loc1_.height = 27;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0071);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _FieldInfoComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.top = 12;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 226;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0047:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.gap = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0089:
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.bottom = 27;
                              if(!_loc2_)
                              {
                                 addr00b1:
                                 _loc1_.mxmlContent = [this._FieldInfoComponentSkin_InfoLayerHeaderComponent1_i()];
                                 if(!_loc2_)
                                 {
                                    addr00c1:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00b1);
               }
            }
            §§goto(addr00c1);
         }
         §§goto(addr0047);
      }
      
      private function _FieldInfoComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.id = "headerComponent";
            if(!_loc2_)
            {
               addr003f:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr005f:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0068:
                        this.headerComponent = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007a:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007a);
                  }
                  addr0087:
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr005f);
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1449269008headerComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1449269008headerComponent = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
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
         §§goto(addr0057);
      }
   }
}

