package net.bigpoint.cityrama.view.worldmap
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class WorldMapLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1427430450backgroundRect:Rect;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function WorldMapLayerSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._WorldMapLayerSkin_Group1_c()];
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0066);
               }
            }
            addr005a:
            this.currentState = "normal";
            if(!_loc1_)
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               }),new State({
                  "name":"inactive",
                  "overrides":[]
               }),new State({
                  "name":"disabledWithControlBar",
                  "overrides":[]
               }),new State({
                  "name":"normalWithControlBar",
                  "overrides":[]
               }),new State({
                  "name":"inactiveWithControlBar",
                  "overrides":[]
               })];
               addr0066:
            }
            §§goto(addr00dc);
         }
         addr00dc:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0039);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0039:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _WorldMapLayerSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._WorldMapLayerSkin_Rect1_i(),this._WorldMapLayerSkin_Group2_i(),this._WorldMapLayerSkin_DynamicImageButton1_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0088:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr009c:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0088);
            }
         }
         §§goto(addr009c);
      }
      
      private function _WorldMapLayerSkin_Rect1_i() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.fill = this._WorldMapLayerSkin_SolidColor1_c();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006e:
                     _loc1_.initialized(this,"backgroundRect");
                     if(_loc3_ || Boolean(this))
                     {
                        this.backgroundRect = _loc1_;
                        if(!_loc2_)
                        {
                           addr008e:
                           BindingManager.executeBindings(this,"backgroundRect",this.backgroundRect);
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr006e);
            }
         }
         §§goto(addr008e);
      }
      
      private function _WorldMapLayerSkin_SolidColor1_c() : SolidColor
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColor = new SolidColor();
         if(!_loc3_)
         {
            _loc1_.color = 16513263;
         }
         return _loc1_;
      }
      
      private function _WorldMapLayerSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.left = 0;
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.bottom = 0;
                     if(_loc2_)
                     {
                        _loc1_.id = "contentGroup";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr0087);
                              }
                           }
                        }
                        §§goto(addr0098);
                     }
                     addr0087:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0098:
                        this.contentGroup = _loc1_;
                        if(!_loc3_)
                        {
                           BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                        }
                     }
                     §§goto(addr00af);
                  }
               }
            }
            §§goto(addr0098);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _WorldMapLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "close";
            if(!_loc2_)
            {
               _loc1_.top = 20;
               if(!_loc2_)
               {
                  _loc1_.right = 30;
                  if(!_loc2_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr0087);
               }
               addr0049:
               _loc1_.id = "closeButton";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0087);
                     }
                  }
               }
               addr0075:
               this.closeButton = _loc1_;
               if(_loc3_ || Boolean(this))
               {
                  addr0087:
                  BindingManager.executeBindings(this,"closeButton",this.closeButton);
               }
               §§goto(addr0094);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundRect() : Rect
      {
         return this._1427430450backgroundRect;
      }
      
      public function set backgroundRect(param1:Rect) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1427430450backgroundRect;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1427430450backgroundRect = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundRect",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._312699062closeButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._312699062closeButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._809612678contentGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

