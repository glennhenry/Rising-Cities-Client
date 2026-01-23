package net.bigpoint.field3d.interfaces
{
   import as3isolib.core.IIsoDisplayObject;
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import net.bigpoint.field3d.vo.Object3dVo;
   
   public interface IObject3D extends IIsoDisplayObject, IEventDispatcher
   {
      
      function get original2DPosition() : Point;
      
      function set original2DPosition(param1:Point) : void;
      
      function positionUpdate(param1:Vector3D) : void;
      
      function get presentation() : DisplayObject;
      
      function get fieldObject3dVo() : Object3dVo;
      
      function updateOriginal2dPosition(param1:Number, param2:Number) : void;
   }
}

