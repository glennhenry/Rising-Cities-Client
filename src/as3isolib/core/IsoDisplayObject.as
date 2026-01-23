package as3isolib.core
{
   import as3isolib.bounds.IBounds;
   import as3isolib.bounds.PrimitiveBounds;
   import as3isolib.data.RenderData;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   use namespace as3isolib_internal;
   
   public class IsoDisplayObject extends IsoContainer implements IIsoDisplayObject
   {
      
      private var cachedRenderData:RenderData;
      
      private var _isAnimated:Boolean = false;
      
      protected var isoBoundsObject:IBounds;
      
      public var usePreciseValues:Boolean = false;
      
      as3isolib_internal var isoX:Number = 0;
      
      protected var oldX:Number;
      
      as3isolib_internal var isoY:Number = 0;
      
      protected var oldY:Number;
      
      as3isolib_internal var isoZ:Number = 0;
      
      protected var oldZ:Number;
      
      private var dist:Number;
      
      as3isolib_internal var isoWidth:Number = 0;
      
      protected var oldWidth:Number;
      
      as3isolib_internal var isoLength:Number = 0;
      
      protected var oldLength:Number;
      
      as3isolib_internal var isoHeight:Number = 0;
      
      protected var oldHeight:Number;
      
      private var bRenderAsOrphan:Boolean = false;
      
      public var autoUpdate:Boolean = false;
      
      as3isolib_internal var bInvalidateEventDispatched:Boolean = false;
      
      as3isolib_internal var bPositionInvalidated:Boolean = false;
      
      as3isolib_internal var bSizeInvalidated:Boolean = false;
      
      public function IsoDisplayObject(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.createObjectFromDescriptor(param1);
         }
      }
      
      public function getRenderData() : RenderData
      {
         var _loc2_:Boolean = false;
         var _loc3_:BitmapData = null;
         var _loc4_:RenderData = null;
         var _loc1_:Rectangle = mainContainer.getBounds(mainContainer);
         if(this.isInvalidated || !this.cachedRenderData)
         {
            _loc2_ = this.bRenderAsOrphan;
            this.bRenderAsOrphan = true;
            render(true);
            _loc3_ = new BitmapData(_loc1_.width + 1,_loc1_.height + 1,true,0);
            _loc3_.draw(mainContainer,new Matrix(1,0,0,1,-_loc1_.left,-_loc1_.top));
            _loc4_ = new RenderData();
            _loc4_.x = mainContainer.x + _loc1_.left;
            _loc4_.y = mainContainer.y + _loc1_.top;
            _loc4_.bitmapData = _loc3_;
            this.cachedRenderData = _loc4_;
            this.bRenderAsOrphan = _loc2_;
         }
         else
         {
            this.cachedRenderData.x = mainContainer.x + _loc1_.left;
            this.cachedRenderData.y = mainContainer.y + _loc1_.top;
         }
         return this.cachedRenderData;
      }
      
      public function get isAnimated() : Boolean
      {
         return this._isAnimated;
      }
      
      public function set isAnimated(param1:Boolean) : void
      {
         this._isAnimated = param1;
      }
      
      public function get isoBounds() : IBounds
      {
         if(!this.isoBoundsObject || this.isInvalidated)
         {
            this.isoBoundsObject = new PrimitiveBounds(this);
         }
         return this.isoBoundsObject;
      }
      
      public function get screenBounds() : Rectangle
      {
         var _loc1_:Rectangle = mainContainer.getBounds(mainContainer);
         _loc1_.x += mainContainer.x;
         _loc1_.y += mainContainer.y;
         return _loc1_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Rectangle = this.screenBounds;
         var _loc3_:Point = new Point(_loc2_.x,_loc2_.y);
         _loc3_ = IIsoContainer(parent).container.localToGlobal(_loc3_);
         _loc3_ = param1.globalToLocal(_loc3_);
         _loc2_.x = _loc3_.x;
         _loc2_.y = _loc3_.y;
         return _loc2_;
      }
      
      public function get inverseOriginX() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x + this.width,this.y + this.length,this.z)).x;
      }
      
      public function get inverseOriginY() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x + this.width,this.y + this.length,this.z)).y;
      }
      
      public function moveTo(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function moveBy(param1:Number, param2:Number, param3:Number) : void
      {
         this.x += param1;
         this.y += param2;
         this.z += param3;
      }
      
      [Bindable("move")]
      public function get x() : Number
      {
         return this.as3isolib_internal::isoX;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         if(this.as3isolib_internal::isoX != param1)
         {
            this.oldX = this.as3isolib_internal::isoX;
            this.as3isolib_internal::isoX = param1;
            this.invalidatePosition();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get screenX() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x,this.y,this.z)).x;
      }
      
      [Bindable("move")]
      public function get y() : Number
      {
         return this.as3isolib_internal::isoY;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         if(this.as3isolib_internal::isoY != param1)
         {
            this.oldY = this.as3isolib_internal::isoY;
            this.as3isolib_internal::isoY = param1;
            this.invalidatePosition();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get screenY() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x,this.y,this.z)).y;
      }
      
      [Bindable("move")]
      public function get z() : Number
      {
         return this.as3isolib_internal::isoZ;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         if(this.as3isolib_internal::isoZ != param1)
         {
            this.oldZ = this.as3isolib_internal::isoZ;
            this.as3isolib_internal::isoZ = param1;
            this.invalidatePosition();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get distance() : Number
      {
         return this.dist;
      }
      
      public function set distance(param1:Number) : void
      {
         this.dist = param1;
      }
      
      public function setSize(param1:Number, param2:Number, param3:Number) : void
      {
         this.width = param1;
         this.length = param2;
         this.height = param3;
      }
      
      [Bindable("resize")]
      public function get width() : Number
      {
         return this.as3isolib_internal::isoWidth;
      }
      
      public function set width(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         param1 = Math.abs(param1);
         if(this.as3isolib_internal::isoWidth != param1)
         {
            this.oldWidth = this.as3isolib_internal::isoWidth;
            this.as3isolib_internal::isoWidth = param1;
            this.invalidateSize();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      [Bindable("resize")]
      public function get length() : Number
      {
         return this.as3isolib_internal::isoLength;
      }
      
      public function set length(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         param1 = Math.abs(param1);
         if(this.as3isolib_internal::isoLength != param1)
         {
            this.oldLength = this.as3isolib_internal::isoLength;
            this.as3isolib_internal::isoLength = param1;
            this.invalidateSize();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      [Bindable("resize")]
      public function get height() : Number
      {
         return this.as3isolib_internal::isoHeight;
      }
      
      public function set height(param1:Number) : void
      {
         if(!this.usePreciseValues)
         {
            param1 = Math.round(param1);
         }
         param1 = Math.abs(param1);
         if(this.as3isolib_internal::isoHeight != param1)
         {
            this.oldHeight = this.as3isolib_internal::isoHeight;
            this.as3isolib_internal::isoHeight = param1;
            this.invalidateSize();
            if(this.autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get renderAsOrphan() : Boolean
      {
         return this.bRenderAsOrphan;
      }
      
      public function set renderAsOrphan(param1:Boolean) : void
      {
         this.bRenderAsOrphan = param1;
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         if(!hasParent && !this.renderAsOrphan)
         {
            return;
         }
         if(this.as3isolib_internal::bPositionInvalidated)
         {
            this.validatePosition();
            this.as3isolib_internal::bPositionInvalidated = false;
         }
         if(this.as3isolib_internal::bSizeInvalidated)
         {
            this.validateSize();
            this.as3isolib_internal::bSizeInvalidated = false;
         }
         this.as3isolib_internal::bInvalidateEventDispatched = false;
         super.renderLogic(param1);
      }
      
      protected function validatePosition() : void
      {
         var _loc1_:Pt = new Pt(this.x,this.y,this.z);
         IsoMath.isoToScreen(_loc1_);
         mainContainer.x = _loc1_.x;
         mainContainer.y = _loc1_.y;
         var _loc2_:IsoEvent = new IsoEvent(IsoEvent.MOVE,true);
         _loc2_.propName = "position";
         _loc2_.oldValue = {
            "x":this.oldX,
            "y":this.oldY,
            "z":this.oldZ
         };
         _loc2_.newValue = {
            "x":this.as3isolib_internal::isoX,
            "y":this.as3isolib_internal::isoY,
            "z":this.as3isolib_internal::isoZ
         };
         dispatchEvent(_loc2_);
      }
      
      protected function validateSize() : void
      {
         var _loc1_:IsoEvent = new IsoEvent(IsoEvent.RESIZE,true);
         _loc1_.propName = "size";
         _loc1_.oldValue = {
            "width":this.oldWidth,
            "length":this.oldLength,
            "height":this.oldHeight
         };
         _loc1_.newValue = {
            "width":this.as3isolib_internal::isoWidth,
            "length":this.as3isolib_internal::isoLength,
            "height":this.as3isolib_internal::isoHeight
         };
         dispatchEvent(_loc1_);
      }
      
      public function invalidatePosition() : void
      {
         this.as3isolib_internal::bPositionInvalidated = true;
         if(!this.as3isolib_internal::bInvalidateEventDispatched)
         {
            dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
            this.as3isolib_internal::bInvalidateEventDispatched = true;
         }
      }
      
      public function invalidateSize() : void
      {
         this.as3isolib_internal::bSizeInvalidated = true;
         if(!this.as3isolib_internal::bInvalidateEventDispatched)
         {
            dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
            this.as3isolib_internal::bInvalidateEventDispatched = true;
         }
      }
      
      override public function get isInvalidated() : Boolean
      {
         return this.as3isolib_internal::bPositionInvalidated || this.as3isolib_internal::bSizeInvalidated;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         mainContainer.cacheAsBitmap = this._isAnimated;
      }
      
      public function clone() : *
      {
         var _loc1_:Class = getDefinitionByName(getQualifiedClassName(this)) as Class;
         var _loc2_:IIsoDisplayObject = new _loc1_();
         _loc2_.setSize(this.as3isolib_internal::isoWidth,this.as3isolib_internal::isoLength,this.as3isolib_internal::isoHeight);
         return _loc2_;
      }
      
      private function createObjectFromDescriptor(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(this.hasOwnProperty(_loc2_))
            {
               this[_loc2_] = param1[_loc2_];
            }
         }
      }
   }
}

