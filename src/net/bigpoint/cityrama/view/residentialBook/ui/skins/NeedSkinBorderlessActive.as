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
   
   public class NeedSkinBorderlessActive extends SparkSkin implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinBorderlessActive()
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
               if(_loc1_ || Boolean(this))
               {
                  this.mxmlContent = [this._NeedSkinBorderlessActive_BriskImageDynaLib1_c(),this._NeedSkinBorderlessActive_BriskImageDynaLib2_i(),this._NeedSkinBorderlessActive_BriskImageDynaLib3_c()];
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0094);
               }
            }
            addr006d:
            this.currentState = "normal";
            if(!_loc2_)
            {
               this.addEventListener("creationComplete",this.___NeedSkinBorderlessActive_SparkSkin1_creationComplete);
               addr0079:
               if(_loc1_)
               {
                  addr0094:
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  })];
               }
            }
            return;
         }
         §§goto(addr0079);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               §§goto(addr004f);
            }
            addr0041:
            return;
         }
         addr004f:
         this.__moduleFactoryInitialized = true;
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialNeedVo = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this.hostComponent);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop().data)
                  {
                     _loc1_ = this.hostComponent.data;
                     addr004d:
                     addr004a:
                     if(_loc3_)
                     {
                        §§push(this.icon);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§pop().dynaLibName = _loc1_.assetLibName;
                           if(!_loc2_)
                           {
                              addr0085:
                              this.icon.dynaBmpSourceName = _loc1_.assetImageName;
                              addr0081:
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0081);
                  }
                  addr008b:
                  return;
               }
               §§goto(addr004d);
            }
         }
         §§goto(addr004a);
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ResidentialNeedVo = null;
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(this.hostComponent);
            if(!_loc3_)
            {
               if(§§pop().data)
               {
                  _loc2_ = this.hostComponent.data;
                  addr0048:
                  addr0045:
                  if(_loc4_)
                  {
                     §§push(this.icon);
                     if(!_loc3_)
                     {
                        §§pop().dynaLibName = _loc2_.assetLibName;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0081:
                           this.icon.dynaBmpSourceName = _loc2_.assetImageName;
                           addr007d:
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr007d);
               }
               addr0087:
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0045);
      }
      
      private function _NeedSkinBorderlessActive_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_green";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0051:
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr008e);
      }
      
      private function _NeedSkinBorderlessActive_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.maxWidth = 60;
            if(_loc3_)
            {
               _loc1_.maxHeight = 52;
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.maintainAspectRation = true;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.smoothing = true;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!_loc2_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr008e);
                        }
                        addr0083:
                        _loc1_.id = "icon";
                        if(!_loc2_)
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00b9);
                        }
                        addr009a:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr00b9:
                           this.icon = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr00cb:
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                        }
                        §§goto(addr00d8);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr008e);
            }
            addr00d8:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _NeedSkinBorderlessActive_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(!_loc3_)
                  {
                     addr005c:
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0072);
                  }
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0072);
            }
         }
         §§goto(addr005c);
      }
      
      public function ___NeedSkinBorderlessActive_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0042:
                  this._3226745icon = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0042);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
   }
}

