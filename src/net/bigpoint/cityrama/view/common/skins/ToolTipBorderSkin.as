package net.bigpoint.cityrama.view.common.skins
{
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   import spark.skins.SparkSkin;
   
   public class ToolTipBorderSkin extends SparkSkin
   {
      
      private var _1705322899backgroundSprite:SpriteVisualElement;
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToolTipBorder;
      
      public function ToolTipBorderSkin()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ToolTipBorderSkin_SpriteVisualElement1_i(),this._ToolTipBorderSkin_Group1_i()];
         this.addEventListener("creationComplete",this.___ToolTipBorderSkin_SparkSkin1_creationComplete);
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
      
      private function addBackground() : void
      {
         var _loc1_:MovieClip = new TooltipAsset();
         this.backgroundSprite.addChild(_loc1_);
         _loc1_.width = this.backgroundSprite.width;
         _loc1_.height = this.backgroundSprite.height;
         _loc1_.alpha = 0.95;
         _loc1_.filters = [new DropShadowFilter(2,90,0,1,6,6,0.8,1)];
      }
      
      private function _ToolTipBorderSkin_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 2;
         _loc1_.right = 2;
         _loc1_.initialized(this,"backgroundSprite");
         this.backgroundSprite = _loc1_;
         BindingManager.executeBindings(this,"backgroundSprite",this.backgroundSprite);
         return _loc1_;
      }
      
      private function _ToolTipBorderSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      public function ___ToolTipBorderSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.addBackground();
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundSprite() : SpriteVisualElement
      {
         return this._1705322899backgroundSprite;
      }
      
      public function set backgroundSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1705322899backgroundSprite;
         if(_loc2_ !== param1)
         {
            this._1705322899backgroundSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundSprite",_loc2_,param1));
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
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToolTipBorder
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToolTipBorder) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

