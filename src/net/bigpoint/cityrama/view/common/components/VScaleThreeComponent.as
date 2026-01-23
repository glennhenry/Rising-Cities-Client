package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class VScaleThreeComponent extends Group
   {
      
      private var _629489168bottomImage:BriskImageDynaLib;
      
      private var _400725190middleImage:BriskImageDynaLib;
      
      private var _986544890topImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function VScaleThreeComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._VScaleThreeComponent_VGroup1_c()];
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
      
      public function set dynaLibName(param1:String) : void
      {
         this.topImage.dynaLibName = this.middleImage.dynaLibName = this.bottomImage.dynaLibName = param1;
      }
      
      public function set dynaBmpSourceNameTop(param1:String) : void
      {
         this.topImage.dynaBmpSourceName = param1;
      }
      
      public function set dynaBmpSourceNameMiddle(param1:String) : void
      {
         this.middleImage.dynaBmpSourceName = param1;
      }
      
      public function set dynaBmpSourceNameBottom(param1:String) : void
      {
         this.bottomImage.dynaBmpSourceName = param1;
      }
      
      private function _VScaleThreeComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._VScaleThreeComponent_BriskImageDynaLib1_i(),this._VScaleThreeComponent_BriskImageDynaLib2_i(),this._VScaleThreeComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "topImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topImage = _loc1_;
         BindingManager.executeBindings(this,"topImage",this.topImage);
         return _loc1_;
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentHeight = 100;
         _loc1_.id = "middleImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleImage = _loc1_;
         BindingManager.executeBindings(this,"middleImage",this.middleImage);
         return _loc1_;
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "bottomImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomImage = _loc1_;
         BindingManager.executeBindings(this,"bottomImage",this.bottomImage);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImage() : BriskImageDynaLib
      {
         return this._629489168bottomImage;
      }
      
      public function set bottomImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._629489168bottomImage;
         if(_loc2_ !== param1)
         {
            this._629489168bottomImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleImage() : BriskImageDynaLib
      {
         return this._400725190middleImage;
      }
      
      public function set middleImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._400725190middleImage;
         if(_loc2_ !== param1)
         {
            this._400725190middleImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topImage() : BriskImageDynaLib
      {
         return this._986544890topImage;
      }
      
      public function set topImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._986544890topImage;
         if(_loc2_ !== param1)
         {
            this._986544890topImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImage",_loc2_,param1));
            }
         }
      }
   }
}

