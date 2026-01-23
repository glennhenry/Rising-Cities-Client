package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.skins.SparkSkin;
   
   public class NeedSkinBorderlessNormal extends SparkSkin implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinBorderlessNormal()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.mxmlContent = [this._NeedSkinBorderlessNormal_BriskImageDynaLib1_c(),this._NeedSkinBorderlessNormal_BriskImageDynaLib2_i(),this._NeedSkinBorderlessNormal_BriskImageDynaLib3_c()];
                  if(_loc2_ || _loc1_)
                  {
                     addr006e:
                     this.currentState = "normal";
                     if(!_loc1_)
                     {
                        this.addEventListener("creationComplete",this.___NeedSkinBorderlessNormal_SparkSkin1_creationComplete);
                        if(!_loc1_)
                        {
                           addr0095:
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr0095);
               }
               addr00bd:
               return;
            }
            §§goto(addr0095);
         }
         §§goto(addr006e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr004a:
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
         }
         var _loc1_:ResidentialNeedVo = this.hostComponent.data;
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc1_)
            {
               if(!_loc2_)
               {
                  §§goto(addr0051);
               }
               else
               {
                  addr0086:
                  §§push(this.icon);
               }
            }
            else
            {
               §§push(this.icon);
               if(_loc3_)
               {
                  §§pop().dynaLibName = _loc1_.assetLibName;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0086);
                  }
                  §§goto(addr0090);
               }
            }
            §§pop().dynaBmpSourceName = _loc1_.assetImageName;
            addr0090:
            return;
         }
         addr0051:
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ResidentialNeedVo = this.hostComponent.data;
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         §§push(this.icon);
         if(_loc4_ || _loc3_)
         {
            §§pop().dynaLibName = _loc2_.assetLibName;
            if(_loc4_ || Boolean(this))
            {
               addr0075:
               this.icon.dynaBmpSourceName = _loc2_.assetImageName;
            }
            return;
         }
         §§goto(addr0075);
      }
      
      private function _NeedSkinBorderlessNormal_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007e);
            }
            §§goto(addr0072);
         }
         addr0060:
         _loc1_.horizontalCenter = 0;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0072:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007e:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _NeedSkinBorderlessNormal_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0032:
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.maxWidth = 60;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.maxHeight = 52;
                     if(!_loc2_)
                     {
                        _loc1_.smoothing = true;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.maintainAspectRation = true;
                           if(_loc3_)
                           {
                              _loc1_.id = "icon";
                              if(!_loc2_)
                              {
                                 §§goto(addr008d);
                              }
                              §§goto(addr00c0);
                           }
                        }
                        §§goto(addr00ad);
                     }
                  }
                  addr008d:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00ad:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr00c0);
                  }
                  addr00b6:
                  this.icon = _loc1_;
                  if(_loc3_)
                  {
                     addr00c0:
                     BindingManager.executeBindings(this,"icon",this.icon);
                  }
                  return _loc1_;
               }
               §§goto(addr00ad);
            }
            §§goto(addr00c0);
         }
         §§goto(addr0032);
      }
      
      private function _NeedSkinBorderlessNormal_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007d:
                     _loc1_.right = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr008f:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr009f);
            }
            §§goto(addr007d);
         }
         addr009f:
         return _loc1_;
      }
      
      public function ___NeedSkinBorderlessNormal_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3226745icon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : NeedItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:NeedItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr005e);
      }
   }
}

