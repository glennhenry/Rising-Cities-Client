package as3isolib.graphics
{
   import as3isolib.enum.IsoOrientation;
   import as3isolib.utils.IsoDrawingUtil;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class BitmapFill implements IBitmapFill
   {
      
      private var bitmapData:BitmapData;
      
      private var sourceObject:Object;
      
      private var _orientation:Object;
      
      private var _orientationMatrix:Matrix;
      
      private var cTransform:ColorTransform;
      
      private var matrixObject:Matrix;
      
      private var bRepeat:Boolean;
      
      public var smooth:Boolean;
      
      public function BitmapFill(param1:Object, param2:Object = null, param3:Matrix = null, param4:ColorTransform = null, param5:Boolean = true, param6:Boolean = false)
      {
         super();
         this.source = param1;
         this.orientation = param2;
         if(param3)
         {
            this.matrix = param3;
         }
         this.colorTransform = param4;
         this.repeat = param5;
         this.smooth = param6;
      }
      
      public function get source() : Object
      {
         return this.sourceObject;
      }
      
      public function set source(param1:Object) : void
      {
         this.sourceObject = param1;
         if(this.bitmapData)
         {
            this.bitmapData.dispose();
            this.bitmapData = null;
         }
         if(param1 is BitmapData)
         {
            this.bitmapData = BitmapData(param1);
            return;
         }
         if(param1 is Class)
         {
            var _loc3_:Class = Class(param1);
            if(getQualifiedSuperclassName(null) == "flash.display::BitmapData")
            {
               this.bitmapData = new null(1,1);
               return;
            }
            var _loc2_:DisplayObject = new null();
         }
         else if(param1 is Bitmap)
         {
            this.bitmapData = Bitmap(param1).bitmapData;
         }
         else if(param1 is DisplayObject)
         {
            _loc2_ = DisplayObject(param1);
         }
         else
         {
            if(!(param1 is String))
            {
               return;
            }
            _loc3_ = Class(getDefinitionByName(String(param1)));
         }
         if(!this.bitmapData && Boolean(null))
         {
            if(null.width > 0 && null.height > 0)
            {
               this.bitmapData = new BitmapData(null.width,null.height);
               this.bitmapData.draw(null,new Matrix(),this.cTransform);
            }
         }
         if(this.cTransform)
         {
            this.bitmapData.colorTransform(this.bitmapData.rect,this.cTransform);
         }
      }
      
      public function get orientation() : Object
      {
         return this._orientation;
      }
      
      public function set orientation(param1:Object) : void
      {
         this._orientation = param1;
         if(!param1)
         {
            return;
         }
         if(param1 is String)
         {
            if(param1 == IsoOrientation.XY || param1 == IsoOrientation.XZ || param1 == IsoOrientation.YZ)
            {
               this._orientationMatrix = IsoDrawingUtil.getIsoMatrix(param1 as String);
            }
            else
            {
               this._orientationMatrix = null;
            }
         }
         else
         {
            if(!(param1 is Matrix))
            {
               throw new Error("value is not of type String or Matrix");
            }
            this._orientationMatrix = Matrix(param1);
         }
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.cTransform;
      }
      
      public function set colorTransform(param1:ColorTransform) : void
      {
         this.cTransform = param1;
         if(Boolean(this.bitmapData) && Boolean(this.cTransform))
         {
            this.bitmapData.colorTransform(this.bitmapData.rect,this.cTransform);
         }
      }
      
      public function get matrix() : Matrix
      {
         return this.matrixObject;
      }
      
      public function set matrix(param1:Matrix) : void
      {
         this.matrixObject = param1;
      }
      
      public function get repeat() : Boolean
      {
         return this.bRepeat;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.bRepeat = param1;
      }
      
      public function begin(param1:Graphics) : void
      {
         var _loc2_:Matrix = new Matrix();
         if(this._orientationMatrix)
         {
            _loc2_.concat(this._orientationMatrix);
         }
         if(this.matrix)
         {
            _loc2_.concat(this.matrix);
         }
         param1.beginBitmapFill(this.bitmapData,_loc2_,this.repeat,this.smooth);
      }
      
      public function end(param1:Graphics) : void
      {
         param1.endFill();
      }
      
      public function clone() : IFill
      {
         return new BitmapFill(this.source,this.orientation,this.matrix,this.colorTransform,this.repeat,this.smooth);
      }
   }
}

