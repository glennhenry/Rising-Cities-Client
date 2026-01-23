package net.bigpoint.field3d.objects
{
   import as3isolib.display.IsoSprite;
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import net.bigpoint.field3d.event.Object3dEvent;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.vo.Object3dVo;
   
   public class SpriteObject3d extends IsoSprite implements IObject3D, IEventDispatcher
   {
      
      protected var _data:Object3dVo;
      
      protected var _presentation:DisplayObject;
      
      public function SpriteObject3d(param1:DisplayObject, param2:Object3dVo)
      {
         super();
         this._data = param2;
         this._presentation = param1;
         this._presentation.cacheAsBitmap = true;
         sprites = [this._presentation];
         this.render();
      }
      
      public function get original2DPosition() : Point
      {
         return this._data.originalPosition;
      }
      
      public function set original2DPosition(param1:Point) : void
      {
         this._data.originalPosition = param1;
         dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
      }
      
      public function positionUpdate(param1:Vector3D) : void
      {
         this._presentation.x = param1.x - this._data.offset.x;
         this._presentation.y = param1.y - this._data.offset.y;
         this._presentation.z = param1.z;
      }
      
      public function updateOffset(param1:Point) : void
      {
         this._data.offset.x = param1.x;
         this._data.offset.y = param1.y;
         dispatchEvent(new Object3dEvent(Object3dEvent.ON_OFFSET_UPDATE));
      }
      
      public function updateOriginal2dPosition(param1:Number, param2:Number) : void
      {
         this._data.originalPosition.x = param1;
         this._data.originalPosition.y = param2;
         dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
      }
      
      public function get presentation() : DisplayObject
      {
         return this._presentation;
      }
      
      public function get fieldObject3dVo() : Object3dVo
      {
         return this._data as Object3dVo;
      }
   }
}

