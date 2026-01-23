package net.bigpoint.field3d.controlls.mousecontrol
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.field3d.interfaces.IFieldScroll;
   
   public class MouseClickFieldControl extends EventDispatcher
   {
      
      public static const ON_FIELD_CLICK:String = "ON_FIELD_CLICK";
      
      public static const ON_FIELD_DRAG_START:String = "ON_FIELD_DRAG_START";
      
      public static const ON_FIELD_DRAG_END:String = "ON_FIELD_DRAG_END";
      
      private var _field:IFieldScroll;
      
      private var _mouseContainer:DisplayObject;
      
      private var _active:Boolean = false;
      
      private var _mouseUpContainer:DisplayObject;
      
      private var _isDragging:Boolean = false;
      
      private var _captureStart:Point;
      
      public function MouseClickFieldControl(param1:DisplayObject, param2:DisplayObject)
      {
         super();
         this._mouseContainer = param1;
         this._mouseUpContainer = param2;
         this.active = true;
      }
      
      private function onMouseDownHandler(param1:MouseEvent) : void
      {
         if(this._active)
         {
            this._mouseContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
            this._mouseUpContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
         }
      }
      
      private function onMouseMoveHandler(param1:MouseEvent) : void
      {
         if(!this._isDragging)
         {
            this._isDragging = true;
            dispatchEvent(new Event(ON_FIELD_DRAG_START));
         }
      }
      
      private function onMouseUpHandler(param1:Event) : void
      {
         if(!this._isDragging)
         {
            this.dispatchEvent(new Event(ON_FIELD_CLICK));
         }
         else
         {
            this.dispatchEvent(new Event(ON_FIELD_DRAG_END));
         }
         this._isDragging = false;
         this._mouseContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
         this._mouseUpContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
      }
      
      public function destroy() : void
      {
         this.active = false;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         if(!this._active && param1)
         {
            this._mouseContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
         }
         else if(this._active && !param1)
         {
            this._mouseContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
         }
         this._active = param1;
      }
   }
}

