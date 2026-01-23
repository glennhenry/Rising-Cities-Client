package net.bigpoint.cityrama.view.application.ui.components
{
   import com.greensock.TweenMax;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.FlexGlobals;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   
   public class MouseAttachLayerView extends Group
   {
      
      private static const MAX_ITEMS:uint = 35;
      
      private static const POSITION_THRESHOLD:uint = 20;
      
      private static const LIFETIME:Number = 0.2;
      
      private static const START_ALPHA:Number = 0.5;
      
      private var _1811405775iconToMouse:BriskImageDynaLib;
      
      private var _586353301mouseTail:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _play:Boolean;
      
      private var _oldPos:Point = new Point();
      
      private var _tint:uint;
      
      public function MouseAttachLayerView()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._MouseAttachLayerView_SpriteVisualElement1_i(),this._MouseAttachLayerView_BriskImageDynaLib1_i()];
      }
      
      private static function completeMove(param1:Sprite) : void
      {
         param1.parent.removeChild(param1);
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
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(!FlexGlobals.topLevelApplication.stage.hasEventListener(MouseEvent.MOUSE_MOVE))
            {
               FlexGlobals.topLevelApplication.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler,false);
            }
         }
         else if(FlexGlobals.topLevelApplication.stage.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            FlexGlobals.topLevelApplication.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler);
         }
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Sprite = null;
         if(Boolean(FlexGlobals.topLevelApplication.stage) && this.visible)
         {
            if(this._oldPos.x != FlexGlobals.topLevelApplication.stage.mouseX || this._oldPos.y != FlexGlobals.topLevelApplication.stage.mouseY)
            {
               this.iconToMouse.x = Math.min(FlexGlobals.topLevelApplication.stage.mouseX,this.width - this.iconToMouse.width);
               this.iconToMouse.y = Math.min(FlexGlobals.topLevelApplication.stage.mouseY,this.height - this.iconToMouse.height);
               if(this.iconToMouse.numChildren && this.mouseTail.numChildren < MAX_ITEMS && Math.abs(this._oldPos.x - this.iconToMouse.x) < POSITION_THRESHOLD && Math.abs(this._oldPos.y - this.iconToMouse.y) < POSITION_THRESHOLD)
               {
                  _loc2_ = this.iconToMouse.getChildAt(0) as Bitmap;
                  _loc3_ = _loc2_.bitmapData.clone();
                  _loc4_ = new Sprite();
                  _loc4_.addChild(new Bitmap(_loc3_));
                  TweenMax.to(_loc4_,0,{"colorTransform":{
                     "tint":this._tint,
                     "tintAmount":1
                  }});
                  _loc4_.x = this.iconToMouse.x;
                  _loc4_.y = this.iconToMouse.y;
                  _loc4_.alpha = START_ALPHA;
                  this.mouseTail.addChild(_loc4_);
                  TweenMax.to(_loc4_,LIFETIME,{
                     "autoAlpha":0,
                     "onComplete":completeMove,
                     "onCompleteParams":[_loc4_]
                  });
               }
               this._oldPos.x = this.iconToMouse.x;
               this._oldPos.y = this.iconToMouse.y;
            }
         }
      }
      
      public function setItem(param1:BriskDynaVo, param2:uint) : void
      {
         this.iconToMouse.briskDynaVo = param1;
         this._tint = param2;
         this.mouseMoveHandler(null);
      }
      
      private function _MouseAttachLayerView_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.initialized(this,"mouseTail");
         this.mouseTail = _loc1_;
         BindingManager.executeBindings(this,"mouseTail",this.mouseTail);
         return _loc1_;
      }
      
      private function _MouseAttachLayerView_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "iconToMouse";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconToMouse = _loc1_;
         BindingManager.executeBindings(this,"iconToMouse",this.iconToMouse);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconToMouse() : BriskImageDynaLib
      {
         return this._1811405775iconToMouse;
      }
      
      public function set iconToMouse(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1811405775iconToMouse;
         if(_loc2_ !== param1)
         {
            this._1811405775iconToMouse = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconToMouse",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mouseTail() : SpriteVisualElement
      {
         return this._586353301mouseTail;
      }
      
      public function set mouseTail(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._586353301mouseTail;
         if(_loc2_ !== param1)
         {
            this._586353301mouseTail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mouseTail",_loc2_,param1));
            }
         }
      }
   }
}

