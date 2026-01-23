package net.bigpoint.field3d.vo
{
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import net.bigpoint.field3d.interfaces.IObject3dVo;
   
   public class Object3dVo extends EventDispatcher implements IObject3dVo
   {
      
      private var _zsort:Boolean;
      
      private var _zsortLayer:uint;
      
      private var _originalPosition:Point = new Point();
      
      private var _offset:Point = new Point();
      
      public function Object3dVo()
      {
         super();
      }
      
      public function get zsort() : Boolean
      {
         return this._zsort;
      }
      
      public function set zsort(param1:Boolean) : void
      {
         this._zsort = param1;
      }
      
      public function get originalPosition() : Point
      {
         return this._originalPosition;
      }
      
      public function set originalPosition(param1:Point) : void
      {
         this._originalPosition = param1;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
      }
      
      public function get zsortLayer() : uint
      {
         return this._zsortLayer;
      }
      
      public function set zsortLayer(param1:uint) : void
      {
         this._zsortLayer = param1;
      }
   }
}

