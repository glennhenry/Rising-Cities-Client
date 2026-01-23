package net.bigpoint.field3d.vo
{
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import net.bigpoint.field3d.interfaces.IObject3dVo;
   
   public class Object3dVo extends EventDispatcher implements IObject3dVo
   {
      
      private var _zsort:Boolean;
      
      private var _zsortLayer:uint;
      
      private var _originalPosition:Point;
      
      private var _offset:Point;
      
      public function Object3dVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._originalPosition = new Point();
            if(_loc1_ || _loc1_)
            {
               this._offset = new Point();
               if(_loc1_)
               {
                  super();
               }
            }
         }
      }
      
      public function get zsort() : Boolean
      {
         return this._zsort;
      }
      
      public function set zsort(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._zsort = param1;
         }
      }
      
      public function get originalPosition() : Point
      {
         return this._originalPosition;
      }
      
      public function set originalPosition(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._originalPosition = param1;
         }
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function set offset(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._offset = param1;
         }
      }
      
      public function get zsortLayer() : uint
      {
         return this._zsortLayer;
      }
      
      public function set zsortLayer(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._zsortLayer = param1;
         }
      }
   }
}

