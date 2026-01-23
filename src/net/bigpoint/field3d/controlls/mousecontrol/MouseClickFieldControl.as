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
      
      public static const ON_FIELD_DRAG_END:String = "ON_FIELD_DRAG_END";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || MouseClickFieldControl)
      {
         ON_FIELD_CLICK = "ON_FIELD_CLICK";
         if(!_loc1_)
         {
            §§goto(addr0036);
         }
         §§goto(addr004c);
      }
      addr0036:
      
      public static const ON_FIELD_DRAG_START:String = "ON_FIELD_DRAG_START";
      
      if(_loc2_ || _loc1_)
      {
         addr004c:
         ON_FIELD_DRAG_END = "ON_FIELD_DRAG_END";
      }
      
      private var _field:IFieldScroll;
      
      private var _mouseContainer:DisplayObject;
      
      private var _active:Boolean = false;
      
      private var _mouseUpContainer:DisplayObject;
      
      private var _isDragging:Boolean = false;
      
      private var _captureStart:Point;
      
      public function MouseClickFieldControl(param1:DisplayObject, param2:DisplayObject)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this._mouseContainer = param1;
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._mouseUpContainer = param2;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0057:
                     this.active = true;
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0057);
            }
            addr005c:
            return;
         }
         §§goto(addr0057);
      }
      
      private function onMouseDownHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._active)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._mouseContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                  if(!_loc2_)
                  {
                     addr004f:
                     this._mouseUpContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr004f);
            }
         }
         addr0060:
      }
      
      private function onMouseMoveHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!this._isDragging)
            {
               if(!_loc2_)
               {
                  addr0026:
                  this._isDragging = true;
                  if(_loc3_)
                  {
                     dispatchEvent(new Event(ON_FIELD_DRAG_START));
                  }
               }
            }
            return;
         }
         §§goto(addr0026);
      }
      
      private function onMouseUpHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!this._isDragging)
            {
               if(_loc3_)
               {
                  this.dispatchEvent(new Event(ON_FIELD_CLICK));
                  §§goto(addr0025);
               }
               §§goto(addr0062);
            }
            else
            {
               this.dispatchEvent(new Event(ON_FIELD_DRAG_END));
               if(!_loc2_)
               {
                  §§goto(addr0062);
               }
            }
            §§goto(addr0081);
         }
         addr0025:
         if(!_loc2_)
         {
            addr0062:
            this._isDragging = false;
            if(!_loc2_)
            {
               this._mouseContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
               if(_loc3_)
               {
                  addr0081:
                  this._mouseUpContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
               }
               §§goto(addr0092);
            }
            §§goto(addr0081);
         }
         addr0092:
      }
      
      public function destroy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.active = false;
         }
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._active);
            if(!(_loc3_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(_loc2_ || _loc3_)
                              {
                                 addr0051:
                                 §§push(§§pop());
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr005f:
                                    if(§§pop())
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          this._mouseContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                                          if(!(_loc2_ || param1))
                                          {
                                             §§goto(addr00f7);
                                          }
                                       }
                                       else
                                       {
                                          addr00cb:
                                          addr00da:
                                          §§push(param1);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00d9:
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr00f7:
                                                this._mouseContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr0114:
                                                   this._active = param1;
                                                }
                                                §§goto(addr0119);
                                             }
                                          }
                                       }
                                       §§goto(addr0114);
                                    }
                                    else
                                    {
                                       §§push(this._active);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(_loc2_)
                                          {
                                             addr00b3:
                                             var _temp_11:* = §§pop();
                                             addr00b4:
                                             §§push(_temp_11);
                                             if(_temp_11)
                                             {
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr00cb);
                                                   }
                                                   addr0119:
                                                   return;
                                                }
                                             }
                                             §§goto(addr00da);
                                          }
                                       }
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00da);
                              }
                              §§goto(addr005f);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr0051);
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00b3);
            }
            §§goto(addr00da);
         }
         §§goto(addr00cb);
      }
   }
}

