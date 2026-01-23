package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class DebossedBackgroundComponent extends Group
   {
      
      private var _1682792238bottomLeft:BriskImageDynaLib;
      
      private var _2071581600bottomMiddle:BriskImageDynaLib;
      
      private var _621290831bottomRight:BriskImageDynaLib;
      
      private var _818275524middleLeft:BriskImageDynaLib;
      
      private var _351511670middleMiddle:BriskImageDynaLib;
      
      private var _408923527middleRight:BriskImageDynaLib;
      
      private var _1140120836topLeft:BriskImageDynaLib;
      
      private var _407211190topMiddle:BriskImageDynaLib;
      
      private var _978346553topRight:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DebossedBackgroundComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._DebossedBackgroundComponent_VGroup1_c()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _DebossedBackgroundComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._DebossedBackgroundComponent_HGroup1_c(),this._DebossedBackgroundComponent_HGroup2_c(),this._DebossedBackgroundComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib1_i(),this._DebossedBackgroundComponent_BriskImageDynaLib2_i(),this._DebossedBackgroundComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_left_top";
         _loc1_.id = "topLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topLeft = _loc1_;
         BindingManager.executeBindings(this,"topLeft",this.topLeft);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_top";
         _loc1_.percentWidth = 100;
         _loc1_.id = "topMiddle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topMiddle = _loc1_;
         BindingManager.executeBindings(this,"topMiddle",this.topMiddle);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_right_top";
         _loc1_.id = "topRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topRight = _loc1_;
         BindingManager.executeBindings(this,"topRight",this.topRight);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib4_i(),this._DebossedBackgroundComponent_BriskImageDynaLib5_i(),this._DebossedBackgroundComponent_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_left";
         _loc1_.percentHeight = 100;
         _loc1_.id = "middleLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleLeft = _loc1_;
         BindingManager.executeBindings(this,"middleLeft",this.middleLeft);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "middleMiddle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleMiddle = _loc1_;
         BindingManager.executeBindings(this,"middleMiddle",this.middleMiddle);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_right";
         _loc1_.percentHeight = 100;
         _loc1_.id = "middleRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleRight = _loc1_;
         BindingManager.executeBindings(this,"middleRight",this.middleRight);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._DebossedBackgroundComponent_BriskImageDynaLib7_i(),this._DebossedBackgroundComponent_BriskImageDynaLib8_i(),this._DebossedBackgroundComponent_BriskImageDynaLib9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_left_bottom";
         _loc1_.id = "bottomLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomLeft = _loc1_;
         BindingManager.executeBindings(this,"bottomLeft",this.bottomLeft);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.id = "bottomMiddle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomMiddle = _loc1_;
         BindingManager.executeBindings(this,"bottomMiddle",this.bottomMiddle);
         return _loc1_;
      }
      
      private function _DebossedBackgroundComponent_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "debossed_bg_right_bottom";
         _loc1_.id = "bottomRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomRight = _loc1_;
         BindingManager.executeBindings(this,"bottomRight",this.bottomRight);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomLeft() : BriskImageDynaLib
      {
         return this._1682792238bottomLeft;
      }
      
      public function set bottomLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1682792238bottomLeft;
         if(_loc2_ !== param1)
         {
            this._1682792238bottomLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomMiddle() : BriskImageDynaLib
      {
         return this._2071581600bottomMiddle;
      }
      
      public function set bottomMiddle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2071581600bottomMiddle;
         if(_loc2_ !== param1)
         {
            this._2071581600bottomMiddle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomMiddle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomRight() : BriskImageDynaLib
      {
         return this._621290831bottomRight;
      }
      
      public function set bottomRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._621290831bottomRight;
         if(_loc2_ !== param1)
         {
            this._621290831bottomRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleLeft() : BriskImageDynaLib
      {
         return this._818275524middleLeft;
      }
      
      public function set middleLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._818275524middleLeft;
         if(_loc2_ !== param1)
         {
            this._818275524middleLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleMiddle() : BriskImageDynaLib
      {
         return this._351511670middleMiddle;
      }
      
      public function set middleMiddle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._351511670middleMiddle;
         if(_loc2_ !== param1)
         {
            this._351511670middleMiddle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleMiddle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleRight() : BriskImageDynaLib
      {
         return this._408923527middleRight;
      }
      
      public function set middleRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._408923527middleRight;
         if(_loc2_ !== param1)
         {
            this._408923527middleRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topLeft() : BriskImageDynaLib
      {
         return this._1140120836topLeft;
      }
      
      public function set topLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1140120836topLeft;
         if(_loc2_ !== param1)
         {
            this._1140120836topLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topMiddle() : BriskImageDynaLib
      {
         return this._407211190topMiddle;
      }
      
      public function set topMiddle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._407211190topMiddle;
         if(_loc2_ !== param1)
         {
            this._407211190topMiddle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topMiddle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topRight() : BriskImageDynaLib
      {
         return this._978346553topRight;
      }
      
      public function set topRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._978346553topRight;
         if(_loc2_ !== param1)
         {
            this._978346553topRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topRight",_loc2_,param1));
            }
         }
      }
   }
}

