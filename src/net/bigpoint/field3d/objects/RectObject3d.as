package net.bigpoint.field3d.objects
{
   import as3isolib.display.primitive.IsoRectangle;
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import net.bigpoint.field3d.event.Object3dEvent;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.vo.Object3dVo;
   
   public class RectObject3d extends IsoRectangle implements IObject3D, IEventDispatcher
   {
      
      protected var _data:Object3dVo;
      
      protected var _presentation:DisplayObject;
      
      public function RectObject3d(param1:DisplayObject, param2:Object3dVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super();
            if(!(_loc3_ && Boolean(param2)))
            {
               this._data = param2;
               if(_loc4_ || Boolean(param1))
               {
                  addr0061:
                  this._presentation = param1;
                  if(_loc4_)
                  {
                     this._presentation.cacheAsBitmap = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0081:
                        this.container.mouseEnabled = true;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0081);
            }
            addr0089:
            return;
         }
         §§goto(addr0061);
      }
      
      public function get original2DPosition() : Point
      {
         return this._data.originalPosition;
      }
      
      public function set original2DPosition(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._data.originalPosition = param1;
            if(!(_loc3_ && _loc2_))
            {
               dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
            }
         }
      }
      
      public function positionUpdate(param1:Vector3D) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._presentation.x = param1.x - this._data.offset.x;
            if(!_loc3_)
            {
               §§goto(addr0047);
            }
            §§goto(addr0067);
         }
         addr0047:
         this._presentation.y = param1.y - this._data.offset.y;
         if(_loc2_ || Boolean(this))
         {
            addr0067:
            this._presentation.z = param1.z;
         }
      }
      
      public function updateOffset(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._data);
            if(!_loc2_)
            {
               §§pop().offset.x = param1.x;
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr0048:
                  this._data.offset.y = param1.y;
                  if(_loc3_)
                  {
                     addr0055:
                     dispatchEvent(new Object3dEvent(Object3dEvent.ON_OFFSET_UPDATE));
                  }
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0055);
      }
      
      public function updateOriginal2dPosition(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(this._data);
            if(!_loc3_)
            {
               §§pop().originalPosition.x = param1;
               if(!_loc3_)
               {
                  addr0040:
                  this._data.originalPosition.y = param2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0053:
                     dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
                  }
               }
               return;
            }
            §§goto(addr0040);
         }
         §§goto(addr0053);
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

