package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.skins.SparkSkin;
   
   public class QuestVbarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _853009829decrementButton:DynamicImageButton;
      
      private var _454226047incrementButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollBar;
      
      public function QuestVbarSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._QuestVbarSkin_Group1_c(),this._QuestVbarSkin_Group2_c()];
                  if(!_loc1_)
                  {
                     addr0060:
                     this.currentState = "normal";
                     if(!(_loc1_ && Boolean(this)))
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
                        addr0074:
                     }
                  }
                  return;
               }
               §§goto(addr0074);
            }
            §§goto(addr0060);
         }
         §§goto(addr0074);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0046:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0046);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _QuestVbarSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 16;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  addr0041:
                  _loc1_.top = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._QuestVbarSkin_DynamicImageButton1_i()];
                     if(_loc2_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0067);
               }
               addr007f:
               return _loc1_;
            }
            §§goto(addr0041);
         }
         §§goto(addr0067);
      }
      
      private function _QuestVbarSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.verticalCenter = 2;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0058:
                  _loc1_.visible = true;
                  if(!_loc3_)
                  {
                     addr0061:
                     _loc1_.styleName = "sideListScrollUp";
                     if(!_loc3_)
                     {
                        _loc1_.id = "decrementButton";
                        if(_loc2_)
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0098:
                                    this.decrementButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00a2:
                                       BindingManager.executeBindings(this,"decrementButton",this.decrementButton);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00a2);
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr0058);
      }
      
      private function _QuestVbarSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 16;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._QuestVbarSkin_DynamicImageButton2_i()];
                     addr0059:
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0094);
                  }
               }
               §§goto(addr0090);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _QuestVbarSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 2;
               if(_loc3_)
               {
                  _loc1_.visible = true;
                  if(!_loc2_)
                  {
                     addr0050:
                     _loc1_.styleName = "sideListScrollDown";
                     if(_loc3_)
                     {
                        _loc1_.id = "incrementButton";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr007d);
                              }
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr0098);
                     }
                     addr007d:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr008e:
                        this.incrementButton = _loc1_;
                        if(!_loc2_)
                        {
                           addr0098:
                           BindingManager.executeBindings(this,"incrementButton",this.incrementButton);
                        }
                     }
                     §§goto(addr00a5);
                  }
                  addr00a5:
                  return _loc1_;
               }
               §§goto(addr0098);
            }
            §§goto(addr008e);
         }
         §§goto(addr0050);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0040:
                  this._853009829decrementButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decrementButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get incrementButton() : DynamicImageButton
      {
         return this._454226047incrementButton;
      }
      
      public function set incrementButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._454226047incrementButton;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._454226047incrementButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"incrementButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
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

