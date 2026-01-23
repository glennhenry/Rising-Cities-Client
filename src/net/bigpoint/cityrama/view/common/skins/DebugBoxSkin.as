package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.LinearGradientStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   import spark.components.supportClasses.Skin;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public class DebugBoxSkin extends Skin implements IStateClient2
   {
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:SkinnableContainer;
      
      public function DebugBoxSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  this.mxmlContent = [this._DebugBoxSkin_Rect1_c(),this._DebugBoxSkin_Group1_i()];
                  addr003f:
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007b);
               }
               addr0067:
               this.currentState = "normal";
               if(_loc1_ || Boolean(this))
               {
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[new SetProperty().initializeFromObject({
                        "name":"alpha",
                        "value":0.5
                     })]
                  })];
                  addr007b:
               }
               §§goto(addr00c1);
            }
            addr00c1:
            return;
         }
         §§goto(addr003f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0034);
            }
            §§goto(addr0042);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               addr0042:
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
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _DebugBoxSkin_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.x = 0;
            if(_loc3_)
            {
               _loc1_.y = 0;
               if(!_loc2_)
               {
                  _loc1_.radiusX = 4;
                  if(!_loc2_)
                  {
                     _loc1_.radiusY = 4;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr007d);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr007d);
               }
            }
            §§goto(addr008f);
         }
         addr007d:
         _loc1_.percentWidth = 100;
         if(!(_loc2_ && Boolean(this)))
         {
            addr008f:
            _loc1_.stroke = this._DebugBoxSkin_LinearGradientStroke1_c();
            if(_loc3_ || Boolean(_loc1_))
            {
               addr00b3:
               _loc1_.fill = this._DebugBoxSkin_LinearGradient1_c();
               if(_loc3_ || _loc3_)
               {
                  addr00ca:
                  _loc1_.initialized(this,null);
               }
            }
         }
         return _loc1_;
      }
      
      private function _DebugBoxSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.weight = 1;
         }
         return _loc1_;
      }
      
      private function _DebugBoxSkin_LinearGradient1_c() : LinearGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.entries = [this._DebugBoxSkin_GradientEntry1_c(),this._DebugBoxSkin_GradientEntry2_c(),this._DebugBoxSkin_GradientEntry3_c()];
         }
         return _loc1_;
      }
      
      private function _DebugBoxSkin_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.alpha = 0.9;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.color = 10066329;
            }
         }
         return _loc1_;
      }
      
      private function _DebugBoxSkin_GradientEntry2_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.alpha = 0.9;
            if(!_loc2_)
            {
               _loc1_.color = 11184810;
            }
         }
         return _loc1_;
      }
      
      private function _DebugBoxSkin_GradientEntry3_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_ || _loc3_)
         {
            _loc1_.alpha = 0.9;
            if(!_loc3_)
            {
               addr0040:
               _loc1_.color = 12303291;
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _DebugBoxSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.left = 5;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.right = 5;
               if(!_loc3_)
               {
                  _loc1_.top = 5;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0076);
         }
         addr005c:
         _loc1_.bottom = 5;
         if(!_loc3_)
         {
            addr0067:
            _loc1_.layout = this._DebugBoxSkin_VerticalLayout1_c();
            if(_loc2_)
            {
               addr0076:
               _loc1_.id = "contentGroup";
               if(_loc2_)
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00b4:
                           this.contentGroup = _loc1_;
                           if(!_loc3_)
                           {
                              addr00be:
                              BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                           }
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00be);
            }
            §§goto(addr0081);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _DebugBoxSkin_VerticalLayout1_c() : VerticalLayout
      {
         return new VerticalLayout();
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._809612678contentGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : SkinnableContainer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:SkinnableContainer) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0051);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
   }
}

