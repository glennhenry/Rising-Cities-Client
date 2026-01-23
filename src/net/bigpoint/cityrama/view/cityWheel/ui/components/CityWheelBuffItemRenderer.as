package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CityWheelBuffItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConfigCityWheelBuffDTO;
      
      private var _dataDirty:Boolean;
      
      public function CityWheelBuffItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr0025:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.width = 130;
                  if(!_loc2_)
                  {
                     this.height = 60;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0054);
                     }
                     §§goto(addr009b);
                  }
               }
               §§goto(addr00a7);
            }
            addr0054:
            this.autoDrawBackground = false;
            if(!(_loc2_ && Boolean(this)))
            {
               this.alpha = 1;
               if(_loc1_ || _loc1_)
               {
                  this.mxmlContent = [this._CityWheelBuffItemRenderer_Group1_c()];
                  if(_loc1_ || _loc1_)
                  {
                     addr009b:
                     this.currentState = "normal";
                     if(!_loc2_)
                     {
                        addr00a7:
                        this.addEventListener("rollOver",this.___CityWheelBuffItemRenderer_ItemRenderer1_rollOver);
                        if(!_loc2_)
                        {
                           §§goto(addr00b8);
                        }
                        §§goto(addr00d1);
                     }
                  }
                  addr00b8:
                  this.addEventListener("rollOut",this.___CityWheelBuffItemRenderer_ItemRenderer1_rollOut);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     states = [new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"locked",
                        "overrides":[new SetProperty().initializeFromObject({
                           "name":"alpha",
                           "value":0.3
                        })]
                     })];
                     addr00d1:
                  }
                  §§goto(addr0117);
               }
               §§goto(addr00d1);
            }
            addr0117:
            return;
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.data = param1;
            if(_loc2_ || _loc2_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(!_loc3_)
                  {
                     this._dataDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        this._data = param1 as ConfigCityWheelBuffDTO;
                        if(!_loc3_)
                        {
                           addr007e:
                           invalidateProperties();
                        }
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr007e);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr007e);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               if(this._dataDirty)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr003e:
                     §§push(this.icon);
                     §§push("buff_");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this._data.gfxId);
                     }
                     §§pop().dynaBmpSourceName = §§pop();
                     if(_loc1_)
                     {
                        addr005a:
                        this._dataDirty = false;
                     }
                  }
               }
               return;
            }
            §§goto(addr005a);
         }
         §§goto(addr003e);
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OVER,true,this.itemIndex));
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OUT,true));
         }
      }
      
      private function _CityWheelBuffItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityWheelBuffItemRenderer_VGroup1_c(),this._CityWheelBuffItemRenderer_BriskImageDynaLib2_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0073);
                  }
               }
               §§goto(addr007f);
            }
            addr0073:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007f:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0083);
         }
         addr0083:
         return _loc1_;
      }
      
      private function _CityWheelBuffItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc2_)
               {
                  addr0049:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._CityWheelBuffItemRenderer_HGroup1_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0082);
            }
            addr0076:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0082:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _CityWheelBuffItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._CityWheelBuffItemRenderer_BriskImageDynaLib1_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0074:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0074);
         }
         §§goto(addr0080);
      }
      
      private function _CityWheelBuffItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc3_)
            {
               _loc1_.id = "icon";
               if(_loc2_)
               {
                  addr0035:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0077:
                           this.icon = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0089:
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0089);
            }
            §§goto(addr0077);
         }
         §§goto(addr0035);
      }
      
      private function _CityWheelBuffItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "separator_main";
               if(_loc2_)
               {
                  §§goto(addr0062);
               }
               §§goto(addr0080);
            }
            §§goto(addr006c);
         }
         addr0062:
         _loc1_.height = 60;
         if(_loc2_)
         {
            addr006c:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0080:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      public function ___CityWheelBuffItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___CityWheelBuffItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.rollOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._3226745icon = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0056);
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
   }
}

