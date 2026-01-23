package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.skins.SparkSkin;
   
   public class NeedSkinBorderlessLocked extends SparkSkin implements IStateClient2
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinBorderlessLocked()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.mxmlContent = [this._NeedSkinBorderlessLocked_BriskImageDynaLib1_c(),this._NeedSkinBorderlessLocked_BriskImageDynaLib2_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     this.currentState = "normal";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007b:
                        this.addEventListener("creationComplete",this.___NeedSkinBorderlessLocked_SparkSkin1_creationComplete);
                        if(_loc1_ || _loc1_)
                        {
                           addr009e:
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr009e);
            }
            addr00c6:
            return;
         }
         §§goto(addr009e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0033);
            }
            §§goto(addr0041);
         }
         addr0033:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               addr0041:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _NeedSkinBorderlessLocked_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005f:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr007d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0081);
                     }
                  }
                  §§goto(addr007d);
               }
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _NeedSkinBorderlessLocked_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "lock_blue";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0091);
               }
            }
            §§goto(addr0079);
         }
         addr0091:
         return _loc1_;
      }
      
      public function ___NeedSkinBorderlessLocked_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : NeedItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:NeedItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005c);
            }
         }
         addr007b:
      }
   }
}

