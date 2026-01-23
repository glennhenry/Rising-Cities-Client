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
         super();
      }
      
      public function connectWith(param1:BillboardObject) : void
      {
         this._connectedBillboard = param1;
         this.registerEvents();
      }
      
      private function registerEvents() : void
      {
         this.container.addEventListener(MouseEvent.ROLL_OVER,this.onMouseRollOver,false,0,true);
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         if(!this._enable)
         {
            return;
         }
         this.container.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this.container.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.container.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.container.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.container.addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._connectedBillboard.dispatchRollOver();
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
         this.container.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.container.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.container.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
         this._connectedBillboard.dispatchRollOut();
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.container.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         this._connectedBillboard.dispatchMouseClick();
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this._tolerancePoint = new Point(param1.stageX,param1.stageY);
         this.container.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(Point.distance(this._tolerancePoint,_loc2_) > 30)
         {
            this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         }
      }
      
      public function get enable() : Boolean
      {
         return this._enable;
      }
      
      public function set enable(param1:Boolean) : void
      {
         this._enable = param1;
      }
   }
}

