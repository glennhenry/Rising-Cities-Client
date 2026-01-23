package as3isolib.display.primitive
{
   import as3isolib.core.IsoDisplayObject;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.events.IsoEvent;
   import as3isolib.graphics.IFill;
   import as3isolib.graphics.IStroke;
   import as3isolib.graphics.SolidColorFill;
   import as3isolib.graphics.Stroke;
   
   use namespace as3isolib_internal;
   
   public class IsoPrimitive extends IsoDisplayObject implements IIsoPrimitive
   {
      
      public static const DEFAULT_WIDTH:Number = 25;
      
      public static const DEFAULT_LENGTH:Number = 25;
      
      public static const DEFAULT_HEIGHT:Number = 25;
      
      protected static const DEFAULT_FILL:IFill = new SolidColorFill(16777215,1);
      
      protected static const DEFAULT_STROKE:IStroke = new Stroke(0,0);
      
      private var renderStyle:String = "solid";
      
      private var pStroke:IStroke;
      
      private var fillsArray:Vector.<IFill> = new Vector.<IFill>();
      
      private var edgesArray:Vector.<IStroke> = new Vector.<IStroke>();
      
      as3isolib_internal var bSytlesInvalidated:Boolean = false;
      
      public function IsoPrimitive(param1:Object = null)
      {
         super(param1);
         if(!param1)
         {
            width = DEFAULT_WIDTH;
            length = DEFAULT_LENGTH;
            height = DEFAULT_HEIGHT;
         }
      }
      
      public function get styleType() : String
      {
         return this.renderStyle;
      }
      
      public function set styleType(param1:String) : void
      {
         if(this.renderStyle != param1)
         {
            this.renderStyle = param1;
            this.invalidateStyles();
            if(autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get profileStroke() : IStroke
      {
         return this.pStroke;
      }
      
      public function set profileStroke(param1:IStroke) : void
      {
         if(this.pStroke != param1)
         {
            this.pStroke = param1;
            this.invalidateStyles();
            if(autoUpdate)
            {
               render();
            }
         }
      }
      
      public function get fill() : IFill
      {
         return IFill(this.fills[0]);
      }
      
      public function set fill(param1:IFill) : void
      {
         this.fills = [param1,param1,param1,param1,param1,param1];
      }
      
      public function get fills() : Array
      {
         var _loc2_:IFill = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.fillsArray)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function set fills(param1:Array) : void
      {
         if(param1)
         {
            this.fillsArray = Vector.<IFill>(param1);
         }
         else
         {
            this.fillsArray = new Vector.<IFill>();
         }
         this.invalidateStyles();
         if(autoUpdate)
         {
            render();
         }
      }
      
      public function get stroke() : IStroke
      {
         return IStroke(this.strokes[0]);
      }
      
      public function set stroke(param1:IStroke) : void
      {
         this.strokes = [param1,param1,param1,param1,param1,param1];
      }
      
      public function get strokes() : Array
      {
         var _loc2_:IStroke = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.edgesArray)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function set strokes(param1:Array) : void
      {
         if(param1)
         {
            this.edgesArray = Vector.<IStroke>(param1);
         }
         else
         {
            this.edgesArray = new Vector.<IStroke>();
         }
         this.invalidateStyles();
         if(autoUpdate)
         {
            render();
         }
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         if(!hasParent && !renderAsOrphan)
         {
            return;
         }
         if(Boolean(as3isolib_internal::bSizeInvalidated) || this.as3isolib_internal::bSytlesInvalidated)
         {
            if(!this.validateGeometry())
            {
               throw new Error("validation of geometry failed.");
            }
            this.drawGeometry();
            validateSize();
            as3isolib_internal::bSizeInvalidated = false;
            this.as3isolib_internal::bSytlesInvalidated = false;
         }
         super.renderLogic(param1);
      }
      
      protected function validateGeometry() : Boolean
      {
         return true;
      }
      
      protected function drawGeometry() : void
      {
      }
      
      public function invalidateStyles() : void
      {
         this.as3isolib_internal::bSytlesInvalidated = true;
         if(!as3isolib_internal::bInvalidateEventDispatched)
         {
            dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
            as3isolib_internal::bInvalidateEventDispatched = true;
         }
      }
      
      override public function get isInvalidated() : Boolean
      {
         return Boolean(as3isolib_internal::bSizeInvalidated) || Boolean(as3isolib_internal::bPositionInvalidated) || this.as3isolib_internal::bSytlesInvalidated;
      }
      
      override public function clone() : *
      {
         var _loc1_:IIsoPrimitive = super.clone() as IIsoPrimitive;
         _loc1_.fills = this.fills;
         _loc1_.strokes = this.strokes;
         _loc1_.styleType = this.styleType;
         return _loc1_;
      }
   }
}

