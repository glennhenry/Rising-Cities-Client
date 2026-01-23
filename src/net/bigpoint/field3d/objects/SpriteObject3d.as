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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this._data = param2;
               if(!(_loc3_ && _loc3_))
               {
                  this._presentation = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     this._presentation.cacheAsBitmap = true;
                     if(_loc4_)
                     {
                        sprites = [this._presentation];
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0081:
                           this.render();
                        }
                        §§goto(addr0086);
                     }
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0042);
         }
         addr0086:
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
         if(!_loc3_)
         {
            this._data.originalPosition = param1;
            if(!_loc3_)
            {
               dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
            }
         }
      }
      
      public function positionUpdate(param1:Vector3D) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._presentation.x = param1.x - this._data.offset.x;
            if(_loc3_)
            {
               §§goto(addr0051);
            }
            §§goto(addr0069);
         }
         addr0051:
         this._presentation.y = param1.y - this._data.offset.y;
         if(_loc3_)
         {
            addr0069:
            this._presentation.z = param1.z;
         }
      }
      
      public function updateOffset(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._data);
            if(_loc2_)
            {
               §§pop().offset.x = param1.x;
               if(!_loc3_)
               {
                  addr003b:
                  this._data.offset.y = param1.y;
                  addr0037:
                  if(!_loc3_)
                  {
                     dispatchEvent(new Object3dEvent(Object3dEvent.ON_OFFSET_UPDATE));
                  }
               }
               return;
            }
            §§goto(addr003b);
         }
         §§goto(addr0037);
      }
      
      public function updateOriginal2dPosition(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            §§push(this._data);
            if(!_loc4_)
            {
               §§pop().originalPosition.x = param1;
               if(!(_loc4_ && _loc3_))
               {
                  addr005b:
                  this._data.originalPosition.y = param2;
                  addr0057:
                  if(!_loc4_)
                  {
                     dispatchEvent(new Object3dEvent(Object3dEvent.ON_POSITION_UPDATE));
                  }
               }
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0057);
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

