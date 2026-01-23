package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.display.primitive.IsoRectangle;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   
   public class BgPrimitive extends IsoRectangle
   {
      
      private var _enable:Boolean = true;
      
      private var _connectedBillboard:BillboardObject;
      
      private var _tolerancePoint:Point;
      
      public function BgPrimitive()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function connectWith(param1:BillboardObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._connectedBillboard = param1;
            if(_loc2_)
            {
               this.registerEvents();
            }
         }
      }
      
      private function registerEvents() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.container.addEventListener(MouseEvent.ROLL_OVER,this.onMouseRollOver,false,0,true);
         }
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!this._enable)
            {
               if(_loc3_)
               {
                  return;
               }
               addr007a:
               this.container.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
               if(!_loc2_)
               {
                  this.container.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                  if(_loc3_ || Boolean(this))
                  {
                     addr00b8:
                     this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                     if(!_loc2_)
                     {
                        §§goto(addr00cd);
                     }
                  }
                  §§goto(addr00e2);
               }
               §§goto(addr00b8);
            }
            else
            {
               this.container.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
               if(!(_loc2_ && _loc3_))
               {
                  this.container.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr007a);
                  }
                  addr00cd:
                  this.container.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                  if(_loc3_)
                  {
                     addr00e2:
                     this._connectedBillboard.dispatchRollOver();
                  }
                  return;
               }
            }
         }
         §§goto(addr00e2);
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc3_)
            {
               this.container.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(!(_loc2_ && Boolean(param1)))
               {
                  this.container.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  addr0060:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.container.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc3_)
                     {
                        addr009f:
                        this._connectedBillboard.dispatchRollOut();
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr009f);
               }
               addr00a7:
               return;
            }
            §§goto(addr0060);
         }
         §§goto(addr009f);
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.container.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._connectedBillboard.dispatchMouseClick();
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._tolerancePoint = new Point(param1.stageX,param1.stageY);
            if(!_loc2_)
            {
               addr003d:
               this.container.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            }
            return;
         }
         §§goto(addr003d);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(!(_loc4_ && Boolean(this)))
         {
            if(Point.distance(this._tolerancePoint,_loc2_) > 30)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
               }
            }
         }
      }
      
      public function get enable() : Boolean
      {
         return this._enable;
      }
      
      public function set enable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._enable = param1;
         }
      }
   }
}

