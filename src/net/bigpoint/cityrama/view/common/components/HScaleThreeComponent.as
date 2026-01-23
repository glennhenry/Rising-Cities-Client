package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class HScaleThreeComponent extends Group
   {
      
      private var _1721435540leftImage:BriskImageDynaLib;
      
      private var _400725190middleImage:BriskImageDynaLib;
      
      private var _1408178017rightImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function HScaleThreeComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._HScaleThreeComponent_HGroup1_c()];
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
         this.leftImage.dynaLibName = this.middleImage.dynaLibName = this.rightImage.dynaLibName = param1;
      }
      
      public function set dynaBmpSourceNameLeft(param1:String) : void
      {
         this.leftImage.dynaBmpSourceName = param1;
      }
      
      public function set dynaBmpSourceNameMiddle(param1:String) : void
      {
         this.middleImage.dynaBmpSourceName = param1;
      }
      
      public function set dynaBmpSourceNameRight(param1:String) : void
      {
         this.rightImage.dynaBmpSourceName = param1;
      }
      
      private function _HScaleThreeComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._HScaleThreeComponent_BriskImageDynaLib1_i(),this._HScaleThreeComponent_BriskImageDynaLib2_i(),this._HScaleThreeComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "leftImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftImage = _loc1_;
         BindingManager.executeBindings(this,"leftImage",this.leftImage);
         return _loc1_;
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.id = "middleImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleImage = _loc1_;
         BindingManager.executeBindings(this,"middleImage",this.middleImage);
         return _loc1_;
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "rightImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rightImage = _loc1_;
         BindingManager.executeBindings(this,"rightImage",this.rightImage);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftImage() : BriskImageDynaLib
      {
         return this._1721435540leftImage;
      }
      
      public function set leftImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1721435540leftImage;
         if(_loc2_ !== param1)
         {
            this._1721435540leftImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftImage",_loc2_,param1));
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
      public function get rightImage() : BriskImageDynaLib
      {
         return this._1408178017rightImage;
      }
      
      public function set rightImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1408178017rightImage;
         if(_loc2_ !== param1)
         {
            this._1408178017rightImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightImage",_loc2_,param1));
            }
         }
      }
   }
}

