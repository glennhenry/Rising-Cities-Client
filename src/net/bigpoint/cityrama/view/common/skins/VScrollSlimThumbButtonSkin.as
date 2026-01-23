package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class VScrollSlimThumbButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _282843249bottomImageContainer:BriskImageDynaLib;
      
      private var _1174468891centerImageContainer:BriskImageDynaLib;
      
      private var _863972891topImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollThumbButton;
      
      public function VScrollSlimThumbButtonSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._VScrollSlimThumbButtonSkin_VGroup1_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr005a:
                     this.currentState = "up";
                     if(!_loc1_)
                     {
                        states = [new State({
                           "name":"up",
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
         }
         §§goto(addr005a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr0037:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0037);
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
      
      private function _VScrollSlimThumbButtonSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.gap = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 2;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0051:
                     _loc1_.bottom = 2;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._VScrollSlimThumbButtonSkin_BriskImageDynaLib1_i(),this._VScrollSlimThumbButtonSkin_BriskImageDynaLib2_i(),this._VScrollSlimThumbButtonSkin_BriskImageDynaLib3_i()];
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr00a0);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr00a0);
         }
         §§goto(addr0051);
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "vScrollBar_top";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.width = 4;
                  if(!_loc2_)
                  {
                     _loc1_.id = "topImageContainer";
                     if(!_loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008b:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr009c);
                              }
                              §§goto(addr00a6);
                           }
                        }
                     }
                  }
                  addr009c:
                  this.topImageContainer = _loc1_;
                  if(!_loc2_)
                  {
                     addr00a6:
                     BindingManager.executeBindings(this,"topImageContainer",this.topImageContainer);
                  }
                  return _loc1_;
               }
               §§goto(addr008b);
            }
            §§goto(addr0073);
         }
         §§goto(addr008b);
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "vScrollBar_middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     §§goto(addr005e);
                  }
               }
               §§goto(addr00b7);
            }
            addr005e:
            _loc1_.width = 4;
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "centerImageContainer";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00b7);
            }
            addr00a4:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr00ad:
               this.centerImageContainer = _loc1_;
               if(!_loc3_)
               {
                  addr00b7:
                  BindingManager.executeBindings(this,"centerImageContainer",this.centerImageContainer);
               }
            }
            return _loc1_;
         }
         §§goto(addr00ad);
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "vScrollBar_bottom";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.width = 4;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "bottomImageContainer";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0096:
                                 this.bottomImageContainer = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"bottomImageContainer",this.bottomImageContainer);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00a0);
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr0096);
                     }
                     addr00ad:
                     return _loc1_;
                  }
               }
               §§goto(addr0081);
            }
         }
         §§goto(addr0096);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImageContainer() : BriskImageDynaLib
      {
         return this._282843249bottomImageContainer;
      }
      
      public function set bottomImageContainer(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._282843249bottomImageContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._282843249bottomImageContainer = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImageContainer() : BriskImageDynaLib
      {
         return this._1174468891centerImageContainer;
      }
      
      public function set centerImageContainer(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1174468891centerImageContainer;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1174468891centerImageContainer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImageContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get topImageContainer() : BriskImageDynaLib
      {
         return this._863972891topImageContainer;
      }
      
      public function set topImageContainer(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._863972891topImageContainer;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._863972891topImageContainer = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0070);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImageContainer",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollThumbButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollThumbButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003c:
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr003c);
      }
   }
}

