package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.OutputItemRendered;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerBoulderComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1062744848outcomeList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerBoulderComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr0049);
               }
            }
            §§goto(addr0069);
         }
         addr0049:
         this.mxmlContent = [this._FieldInfoLayerBoulderComponentSkin_VGroup1_c(),this._FieldInfoLayerBoulderComponentSkin_VGroup2_c()];
         if(_loc1_)
         {
            addr0069:
            this.currentState = "normal";
            if(!_loc2_)
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
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               addr0032:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0032);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib3_c()];
                  addr004e:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr008a:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr004e);
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     _loc1_.height = 12;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0077);
                     }
                  }
               }
               §§goto(addr008b);
            }
            addr0077:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr008b:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008f);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!_loc2_)
               {
                  _loc1_.width = 227;
                  §§goto(addr0057);
               }
            }
            §§goto(addr008c);
         }
         addr0057:
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr0080);
            }
            §§goto(addr008c);
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr008c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc2_)
               {
                  addr0042:
                  _loc1_.width = 227;
                  if(!_loc3_)
                  {
                     _loc1_.height = 27;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0080);
               }
               addr0084:
               return _loc1_;
            }
         }
         §§goto(addr0042);
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 12;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 226;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.gap = 7;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006f:
                        _loc1_.verticalAlign = "top";
                        if(!_loc3_)
                        {
                           addr0079:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_ || Boolean(this))
                           {
                              addr008b:
                              _loc1_.bottom = 27;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00aa:
                                 _loc1_.mxmlContent = [this._FieldInfoLayerBoulderComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerBoulderComponentSkin_List1_i()];
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00d4:
                                          _loc1_.document = this;
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr008b);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00aa);
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "headerComponent";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr006c:
                        this.headerComponent = _loc1_;
                        if(_loc2_)
                        {
                           addr0076:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr006c);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._FieldInfoLayerBoulderComponentSkin_ClassFactory1_c();
            if(_loc3_)
            {
               _loc1_.width = 197;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.setStyle("skinClass",OutputListSkin);
                  if(_loc3_)
                  {
                     _loc1_.id = "outcomeList";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr0097);
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr0086);
               }
               addr0097:
               this.outcomeList = _loc1_;
               if(_loc3_)
               {
                  addr00a1:
                  BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
               }
               §§goto(addr00ae);
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _FieldInfoLayerBoulderComponentSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.generator = OutputItemRendered;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1449269008headerComponent;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004d:
                  this._1449269008headerComponent = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1062744848outcomeList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1062744848outcomeList = param1;
                  addr003e:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr004b:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0081);
            }
            addr0090:
            return;
         }
         §§goto(addr004b);
      }
   }
}

