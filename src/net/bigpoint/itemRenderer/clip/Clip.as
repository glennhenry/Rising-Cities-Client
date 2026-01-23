package net.bigpoint.itemRenderer.clip
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import net.bigpoint.itemRenderer.interfaces.IClip;
   
   public class Clip implements IClip
   {
      
      private var _offset:Point;
      
      private var _matrix:Matrix;
      
      protected var _hasChanged:Boolean = true;
      
      protected var _forceNewRender:Boolean = false;
      
      protected var _viewComponent:DisplayObject;
      
      public function Clip(param1:DisplayObject, param2:Point = null)
      {
         super();
         this._viewComponent = param1;
         if(param2 == null)
         {
            this._offset = new Point();
         }
         else
         {
            this._offset = param2;
         }
         this.generateMatrix();
      }
      
      public function renderClip(param1:BitmapData) : void
      {
         param1.draw(this._viewComponent,this._matrix);
         this._hasChanged = false;
         this._forceNewRender = false;
      }
      
      public function get x() : Number
      {
         return this._offset.x;
      }
      
      public function get y() : Number
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this._viewComponent.width;
      }
      
      public function get height() : int
      {
         return this._viewComponent.height;
      }
      
      public function get hasChanged() : Boolean
      {
         return this._hasChanged;
      }
      
      public function set hasChanged(param1:Boolean) : void
      {
         this._hasChanged = param1;
      }
      
      public function set x(param1:Number) : void
      {
         this._offset.x = param1;
         this.generateMatrix();
      }
      
      public function set y(param1:Number) : void
      {
         this._offset.y = param1;
         this.generateMatrix();
      }
      
      private function generateMatrix() : void
      {
         this._matrix = new Matrix(1,0,0,1,this._offset.x,this._offset.y);
      }
      
      public function get viewComponent() : DisplayObject
      {
         return this._viewComponent;
      }
      
      public function set forceNewRender(param1:Boolean) : void
      {
         this._forceNewRender = param1;
      }
      
      public function get forceNewRender() : Boolean
      {
         return this._forceNewRender;
      }
   }
}

