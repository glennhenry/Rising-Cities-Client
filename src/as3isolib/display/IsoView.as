package as3isolib.display
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.display.renderers.IViewRenderer;
   import as3isolib.display.scene.IIsoScene;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.IFactory;
   
   public class IsoView extends Sprite implements IIsoView
   {
      
      public var usePreciseValues:Boolean = false;
      
      protected var targetScreenPt:Pt = new Pt();
      
      protected var currentScreenPt:Pt = new Pt();
      
      private var bPositionInvalidated:Boolean = false;
      
      public var autoUpdate:Boolean = false;
      
      private var viewRendererFactories:Array = [];
      
      protected var scenesArray:Array = [];
      
      private var _w:Number;
      
      private var _h:Number;
      
      private var _clipContent:Boolean = true;
      
      protected var romTarget:DisplayObject;
      
      protected var romBoundsRect:Rectangle;
      
      public var limitRangeOfMotion:Boolean = true;
      
      private var zoomContainer:Sprite;
      
      protected var mContainer:Sprite;
      
      private var bgContainer:Sprite;
      
      private var fgContainer:Sprite;
      
      private var sceneContainer:Sprite;
      
      private var maskShape:Shape;
      
      private var borderShape:Shape;
      
      private var _showBorder:Boolean = true;
      
      public function IsoView()
      {
         super();
         this.sceneContainer = new Sprite();
         this.mContainer = new Sprite();
         this.mContainer.addChild(this.sceneContainer);
         this.zoomContainer = new Sprite();
         this.zoomContainer.addChild(this.mContainer);
         addChild(this.zoomContainer);
         this.maskShape = new Shape();
         addChild(this.maskShape);
         this.borderShape = new Shape();
         addChild(this.borderShape);
         this.setSize(400,250);
      }
      
      [Bindable("as3isolib_move")]
      public function get currentPt() : Pt
      {
         return this.currentScreenPt.clone() as Pt;
      }
      
      public function get currentX() : Number
      {
         return this.currentScreenPt.x;
      }
      
      public function set currentX(param1:Number) : void
      {
         if(this.currentScreenPt.x != param1)
         {
            if(!this.targetScreenPt)
            {
               this.targetScreenPt = this.currentScreenPt.clone() as Pt;
            }
            this.targetScreenPt.x = this.usePreciseValues ? param1 : Math.round(param1);
            this.bPositionInvalidated = true;
            if(this.autoUpdate)
            {
               this.render();
            }
         }
      }
      
      public function get currentY() : Number
      {
         return this.currentScreenPt.y;
      }
      
      public function set currentY(param1:Number) : void
      {
         if(this.currentScreenPt.y != param1)
         {
            if(!this.targetScreenPt)
            {
               this.targetScreenPt = this.currentScreenPt.clone() as Pt;
            }
            this.targetScreenPt.y = this.usePreciseValues ? param1 : Math.round(param1);
            this.bPositionInvalidated = true;
            if(this.autoUpdate)
            {
               this.render();
            }
         }
      }
      
      public function localToIso(param1:Point) : Pt
      {
         param1 = localToGlobal(param1);
         param1 = this.mainContainer.globalToLocal(param1);
         return IsoMath.screenToIso(new Pt(param1.x,param1.y,0));
      }
      
      public function isoToLocal(param1:Pt) : Point
      {
         param1 = IsoMath.isoToScreen(param1);
         var _loc2_:Point = new Point(param1.x,param1.y);
         _loc2_ = this.mainContainer.localToGlobal(_loc2_);
         return globalToLocal(_loc2_);
      }
      
      public function get isInvalidated() : Boolean
      {
         return this.bPositionInvalidated;
      }
      
      public function invalidatePosition() : void
      {
         this.bPositionInvalidated = true;
      }
      
      public function getInvalidatedScenes() : Array
      {
         var _loc2_:IIsoScene = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.scenesArray)
         {
            if(_loc2_.isInvalidated)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function render(param1:Boolean = false) : void
      {
         this.preRenderLogic();
         this.renderLogic(param1);
         this.postRenderLogic();
      }
      
      protected function preRenderLogic() : void
      {
         dispatchEvent(new IsoEvent(IsoEvent.RENDER));
      }
      
      protected function renderLogic(param1:Boolean = false) : void
      {
         var _loc2_:IIsoScene = null;
         var _loc3_:IViewRenderer = null;
         var _loc4_:IFactory = null;
         if(this.bPositionInvalidated)
         {
            this.validatePosition();
            this.bPositionInvalidated = false;
         }
         if(param1)
         {
            for each(_loc2_ in this.scenesArray)
            {
               _loc2_.render(param1);
            }
         }
         if(Boolean(this.viewRenderers) && this.numScenes > 0)
         {
            for each(_loc4_ in this.viewRendererFactories)
            {
               _loc3_ = _loc4_.newInstance();
               _loc3_.renderView(this);
            }
         }
      }
      
      protected function postRenderLogic() : void
      {
         dispatchEvent(new IsoEvent(IsoEvent.RENDER_COMPLETE));
      }
      
      protected function validatePosition() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Rectangle = null;
         var _loc7_:* = false;
         var _loc1_:Number = this.currentScreenPt.x - this.targetScreenPt.x;
         var _loc2_:Number = this.currentScreenPt.y - this.targetScreenPt.y;
         if(this.limitRangeOfMotion && Boolean(this.romTarget))
         {
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = this.romTarget.getBounds(this);
            _loc7_ = !this.romBoundsRect.containsRect(_loc6_);
            if(_loc7_)
            {
               if(_loc1_ > 0)
               {
                  _loc4_ = Math.min(_loc1_,Math.abs(_loc6_.left));
               }
               else
               {
                  _loc4_ = -1 * Math.min(Math.abs(_loc1_),Math.abs(_loc6_.right - this.romBoundsRect.right));
               }
               if(_loc2_ > 0)
               {
                  _loc5_ = Math.min(_loc2_,Math.abs(_loc6_.top));
               }
               else
               {
                  _loc5_ = -1 * Math.min(Math.abs(_loc2_),Math.abs(_loc6_.bottom - this.romBoundsRect.bottom));
               }
            }
            this.targetScreenPt.x = this.targetScreenPt.x + _loc1_ - _loc4_;
            this.targetScreenPt.y = this.targetScreenPt.y + _loc2_ - _loc5_;
            _loc1_ = _loc4_;
            _loc2_ = _loc5_;
         }
         this.mContainer.x += _loc1_;
         this.mContainer.y += _loc2_;
         var _loc3_:IsoEvent = new IsoEvent(IsoEvent.MOVE);
         _loc3_.propName = "currentPt";
         _loc3_.oldValue = this.currentScreenPt;
         this.currentScreenPt = this.targetScreenPt.clone() as Pt;
         _loc3_.newValue = this.currentScreenPt;
         dispatchEvent(_loc3_);
      }
      
      public function centerOnPt(param1:Pt, param2:Boolean = true) : void
      {
         var _loc3_:Pt = Pt(param1.clone());
         if(param2)
         {
            IsoMath.isoToScreen(_loc3_);
         }
         if(!this.usePreciseValues)
         {
            _loc3_.x = Math.round(_loc3_.x);
            _loc3_.y = Math.round(_loc3_.y);
            _loc3_.z = Math.round(_loc3_.z);
         }
         this.targetScreenPt = _loc3_;
         this.bPositionInvalidated = true;
         this.render();
      }
      
      public function centerOnIso(param1:IIsoDisplayObject) : void
      {
         this.centerOnPt(param1.isoBounds.centerPt);
      }
      
      public function pan(param1:Number, param2:Number) : void
      {
         this.panBy(param1,param2);
      }
      
      public function panBy(param1:Number, param2:Number) : void
      {
         this.targetScreenPt = this.currentScreenPt.clone() as Pt;
         this.targetScreenPt.x += param1;
         this.targetScreenPt.y += param2;
         this.bPositionInvalidated = true;
         this.render();
      }
      
      public function panTo(param1:Number, param2:Number) : void
      {
         this.targetScreenPt = new Pt(param1,param2);
         this.bPositionInvalidated = true;
         this.render();
      }
      
      public function get currentZoom() : Number
      {
         return this.zoomContainer.scaleX;
      }
      
      public function set currentZoom(param1:Number) : void
      {
         this.zoomContainer.scaleX = this.zoomContainer.scaleY = param1;
      }
      
      public function zoom(param1:Number) : void
      {
         this.zoomContainer.scaleX = this.zoomContainer.scaleY = param1;
      }
      
      public function reset() : void
      {
         var _temp_1:* = this.zoomContainer;
         this.zoomContainer.scaleY = 1;
         _temp_1.scaleX = 1;
         this.setSize(this._w,this._h);
         this.mContainer.x = 0;
         this.mContainer.y = 0;
         this.currentScreenPt = new Pt();
      }
      
      public function get viewRenderers() : Array
      {
         return this.viewRendererFactories;
      }
      
      public function set viewRenderers(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = [];
            for each(_loc3_ in param1)
            {
               if(_loc3_ is IFactory)
               {
                  _loc2_.push(_loc3_);
               }
            }
            this.viewRendererFactories = _loc2_;
            this.bPositionInvalidated = true;
            if(this.autoUpdate)
            {
               this.render();
            }
         }
         else
         {
            this.viewRendererFactories = [];
         }
      }
      
      public function get scenes() : Array
      {
         return this.scenesArray;
      }
      
      public function get numScenes() : uint
      {
         return this.scenesArray.length;
      }
      
      public function addScene(param1:IIsoScene) : void
      {
         this.addSceneAt(param1,this.scenesArray.length);
      }
      
      public function addSceneAt(param1:IIsoScene, param2:int) : void
      {
         if(!this.containsScene(param1))
         {
            this.scenesArray.splice(param2,0,param1);
            param1.hostContainer = null;
            this.sceneContainer.addChildAt(param1.container,param2);
            return;
         }
         throw new Error("IsoView instance already contains parameter scene");
      }
      
      public function containsScene(param1:IIsoScene) : Boolean
      {
         var _loc2_:IIsoScene = null;
         for each(_loc2_ in this.scenesArray)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getSceneByID(param1:String) : IIsoScene
      {
         var _loc2_:IIsoScene = null;
         for each(_loc2_ in this.scenesArray)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function removeScene(param1:IIsoScene) : IIsoScene
      {
         if(this.containsScene(param1))
         {
            var _loc2_:int = int(this.scenesArray.indexOf(param1));
            this.scenesArray.splice(0,1);
            this.sceneContainer.removeChild(param1.container);
            return param1;
         }
         return null;
      }
      
      public function removeAllScenes() : void
      {
         var _loc1_:IIsoScene = null;
         for each(_loc1_ in this.scenesArray)
         {
            if(this.sceneContainer.contains(_loc1_.container))
            {
               this.sceneContainer.removeChild(_loc1_.container);
               _loc1_.hostContainer = null;
            }
         }
         this.scenesArray = [];
      }
      
      override public function get width() : Number
      {
         return this._w;
      }
      
      override public function get height() : Number
      {
         return this._h;
      }
      
      public function get size() : Point
      {
         return new Point(this._w,this._h);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this._w = Math.round(param1);
         this._h = Math.round(param2);
         this.romBoundsRect = new Rectangle(0,0,this._w + 1,this._h + 1);
         this.scrollRect = this._clipContent ? this.romBoundsRect : null;
         this.zoomContainer.x = this._w / 2;
         this.zoomContainer.y = this._h / 2;
         this.drawBorder();
      }
      
      public function get clipContent() : Boolean
      {
         return this._clipContent;
      }
      
      public function set clipContent(param1:Boolean) : void
      {
         if(this._clipContent != param1)
         {
            this._clipContent = param1;
            this.reset();
         }
      }
      
      public function get rangeOfMotionTarget() : DisplayObject
      {
         return this.romTarget;
      }
      
      public function set rangeOfMotionTarget(param1:DisplayObject) : void
      {
         this.romTarget = param1;
         this.limitRangeOfMotion = this.romTarget ? true : false;
      }
      
      public function get mainContainer() : Sprite
      {
         return this.mContainer;
      }
      
      public function get backgroundContainer() : Sprite
      {
         if(!this.bgContainer)
         {
            this.bgContainer = new Sprite();
            this.mContainer.addChildAt(this.bgContainer,0);
         }
         return this.bgContainer;
      }
      
      public function get foregroundContainer() : Sprite
      {
         if(!this.fgContainer)
         {
            this.fgContainer = new Sprite();
            this.mContainer.addChild(this.fgContainer);
         }
         return this.fgContainer;
      }
      
      [Bindable("showBorderChanged")]
      public function get showBorder() : Boolean
      {
         return this._showBorder;
      }
      
      public function set showBorder(param1:Boolean) : void
      {
         if(this._showBorder != param1)
         {
            this._showBorder = param1;
            this.drawBorder();
         }
      }
      
      protected function drawBorder() : void
      {
         var _loc1_:Graphics = this.borderShape.graphics;
         _loc1_.clear();
         if(this.showBorder)
         {
            _loc1_.lineStyle(0);
            _loc1_.drawRect(0,0,this._w,this._h);
         }
      }
   }
}

