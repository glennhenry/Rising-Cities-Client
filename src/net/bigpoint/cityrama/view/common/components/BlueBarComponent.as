package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IFlexModuleFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class BlueBarComponent extends Group
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BlueBarComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._BlueBarComponent_Rect1_c()];
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
      
      private function _BlueBarComponent_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.fill = this._BlueBarComponent_RadialGradient1_c();
         _loc1_.filters = [this._BlueBarComponent_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _BlueBarComponent_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._BlueBarComponent_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _BlueBarComponent_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _BlueBarComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
   }
}

