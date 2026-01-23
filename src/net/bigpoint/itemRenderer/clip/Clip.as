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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super();
            if(_loc3_)
            {
               this._viewComponent = param1;
               if(!(_loc4_ && Boolean(this)))
               {
                  if(param2 == null)
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this._offset = new Point();
                        if(_loc3_)
                        {
                        }
                     }
                     addr008a:
                     this.generateMatrix();
                  }
                  else
                  {
                     this._offset = param2;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr008a);
            }
            addr008f:
            return;
         }
         §§goto(addr008a);
      }
      
      public function renderClip(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.draw(this._viewComponent,this._matrix);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0045);
            }
            §§goto(addr004f);
         }
         addr0045:
         this._hasChanged = false;
         if(_loc3_)
         {
            addr004f:
            this._forceNewRender = false;
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._hasChanged = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._offset.x = param1;
            if(_loc3_ || _loc2_)
            {
               this.generateMatrix();
            }
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._offset.y = param1;
            if(_loc3_ || Boolean(param1))
            {
               addr002c:
               this.generateMatrix();
            }
            return;
         }
         §§goto(addr002c);
      }
      
      private function generateMatrix() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._matrix = new Matrix(1,0,0,1,this._offset.x,this._offset.y);
         }
      }
      
      public function get viewComponent() : DisplayObject
      {
         return this._viewComponent;
      }
      
      public function set forceNewRender(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._forceNewRender = param1;
         }
      }
      
      public function get forceNewRender() : Boolean
      {
         return this._forceNewRender;
      }
   }
}

