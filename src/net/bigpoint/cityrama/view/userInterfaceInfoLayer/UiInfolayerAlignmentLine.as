package net.bigpoint.cityrama.view.userInterfaceInfoLayer
{
   import com.greensock.TweenMax;
   import flash.geom.Point;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public class UiInfolayerAlignmentLine extends Group
   {
      
      private var _3496420rect:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _lineVo:UserInterfaceInfoLayerAlignLineVo = new UserInterfaceInfoLayerAlignLineVo();
      
      public function UiInfolayerAlignmentLine()
      {
         super();
         mx_internal::_document = this;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.height = 2;
         this.mxmlContent = [this._UiInfolayerAlignmentLine_Rect1_i()];
         this.addEventListener("creationComplete",this.___UiInfolayerAlignmentLine_Group1_creationComplete);
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
      
      public function validatePosition() : void
      {
         this._lineVo.from = this.localToGlobal(new Point());
         this._lineVo.to = this.localToGlobal(new Point());
         this._lineVo.to.x += width;
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         super.move(param1,param2);
      }
      
      public function set lineId(param1:uint) : void
      {
         this._lineVo.lineId = param1;
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function set alignment(param1:uint) : void
      {
         this._lineVo.alignment = param1;
      }
      
      public function get lineVo() : UserInterfaceInfoLayerAlignLineVo
      {
         return this._lineVo;
      }
      
      public function setProperties(param1:Number, param2:Object, param3:Object, param4:uint, param5:int) : UiInfolayerAlignmentLine
      {
         this._lineVo.alignment = param4;
         this._lineVo.lineId = param5;
         top = param2;
         left = param3;
         width = param1;
         return this;
      }
      
      public function showDebug() : void
      {
         TweenMax.to(this.rect,1,{"autoAlpha":1});
         TweenMax.to(this.rect,2,{
            "autoAlpha":0,
            "delay":1
         });
      }
      
      private function _UiInfolayerAlignmentLine_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentHeight = 100;
         _loc1_.visible = false;
         _loc1_.percentWidth = 100;
         _loc1_.fill = this._UiInfolayerAlignmentLine_SolidColor1_c();
         _loc1_.initialized(this,"rect");
         this.rect = _loc1_;
         BindingManager.executeBindings(this,"rect",this.rect);
         return _loc1_;
      }
      
      private function _UiInfolayerAlignmentLine_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 14626559;
         return _loc1_;
      }
      
      public function ___UiInfolayerAlignmentLine_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get rect() : Rect
      {
         return this._3496420rect;
      }
      
      public function set rect(param1:Rect) : void
      {
         var _loc2_:Object = this._3496420rect;
         if(_loc2_ !== param1)
         {
            this._3496420rect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rect",_loc2_,param1));
            }
         }
      }
   }
}

