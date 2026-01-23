package net.bigpoint.cityrama.view.miniLayer.components.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.Group;
   import spark.components.HScrollBar;
   import spark.skins.SparkSkin;
   
   public class ItemviewHbarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _853009829decrementButton:DynamicImageButton;
      
      private var _454226047incrementButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:HScrollBar;
      
      public function ItemviewHbarSkin()
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
               if(!(_loc2_ && Boolean(this)))
               {
                  this.percentWidth = 100;
                  if(!_loc2_)
                  {
                     this.percentHeight = 100;
                     if(_loc1_)
                     {
                        addr0055:
                        this.mxmlContent = [this._ItemviewHbarSkin_Group1_c(),this._ItemviewHbarSkin_Group2_c()];
                        if(!_loc2_)
                        {
                           addr006b:
                           this.currentState = "normal";
                           if(_loc1_)
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"inactive",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr0055);
         }
         §§goto(addr006b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0046);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0046:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _ItemviewHbarSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.width = 41;
               if(_loc3_)
               {
                  _loc1_.left = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr0055);
                  }
               }
               §§goto(addr0079);
            }
            addr0055:
            _loc1_.mxmlContent = [this._ItemviewHbarSkin_DynamicImageButton1_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0079:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _ItemviewHbarSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.visible = true;
                  if(!_loc3_)
                  {
                     addr0044:
                     _loc1_.styleName = "listLeft";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "decrementButton";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a7:
                                    this.decrementButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b1:
                                       BindingManager.executeBindings(this,"decrementButton",this.decrementButton);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0044);
            }
            §§goto(addr00a7);
         }
         §§goto(addr00b1);
      }
      
      private function _ItemviewHbarSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0045);
            }
            §§goto(addr007c);
         }
         addr0045:
         _loc1_.width = 41;
         if(!_loc3_)
         {
            _loc1_.right = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._ItemviewHbarSkin_DynamicImageButton2_i()];
               if(!_loc3_)
               {
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ItemviewHbarSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.visible = true;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.styleName = "listRight";
                     if(_loc3_)
                     {
                        _loc1_.id = "incrementButton";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr00b8);
                                 }
                              }
                              §§goto(addr00ca);
                           }
                        }
                        addr00b8:
                        this.incrementButton = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00ca:
                           BindingManager.executeBindings(this,"incrementButton",this.incrementButton);
                        }
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00b8);
               }
               addr00d7:
               return _loc1_;
            }
            §§goto(addr00b8);
         }
         §§goto(addr009a);
      }
      
      [Bindable(event="propertyChange")]
      public function get decrementButton() : DynamicImageButton
      {
         return this._853009829decrementButton;
      }
      
      public function set decrementButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._853009829decrementButton;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._853009829decrementButton = param1;
                  if(_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decrementButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get incrementButton() : DynamicImageButton
      {
         return this._454226047incrementButton;
      }
      
      public function set incrementButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._454226047incrementButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._454226047incrementButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0079);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"incrementButton",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : HScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:HScrollBar) : void
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
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
   }
}

