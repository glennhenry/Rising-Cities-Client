package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class GridItemEmptySkin extends SparkSkin implements IStateClient2
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemEmptySkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr002f:
                  this.width = 120;
                  if(_loc1_ || _loc2_)
                  {
                     this.height = 150;
                     if(_loc1_ || _loc2_)
                     {
                        this.mxmlContent = [this._GridItemEmptySkin_HGroup1_c()];
                        addr0054:
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0076:
                           this.currentState = "up";
                           if(_loc1_ || _loc1_)
                           {
                              states = [new State({
                                 "name":"up",
                                 "overrides":[]
                              }),new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"over",
                                 "overrides":[]
                              }),new State({
                                 "name":"down",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0076);
            }
            §§goto(addr002f);
         }
         §§goto(addr0076);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _GridItemEmptySkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._GridItemEmptySkin_BriskImageDynaLib1_c()];
                        if(_loc3_)
                        {
                           addr009c:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00b0:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr00b0);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _GridItemEmptySkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "emptySlot_bg";
               if(_loc2_)
               {
                  §§goto(addr005f);
               }
            }
            §§goto(addr0073);
         }
         addr005f:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0073:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr006a);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
   }
}

