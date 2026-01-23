package net.bigpoint.cityrama.model.field
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.ui.Mouse;
   import flash.utils.Timer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.util.RisingCursor;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldCursorProxy extends Proxy
   {
      
      public static const NAME:String = "FieldCursorProxy";
      
      public static const CURSOR_RESET:String = "refresh";
      
      public static const CURSOR_NORMAL:String = "cursor_normal";
      
      public static const CURSOR_MOVE:String = "cursor_move";
      
      public static const CURSOR_DEMOLISH:String = "cursor_demolish";
      
      public static const CURSOR_IMPROVEMENT:String = "cursor_improvement";
      
      public static const CURSOR_ATTACHED_ITEM:String = "cursor_improvement_small";
      
      private static var LIBNAME:String = "gui_infield_gui_mainmenue";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "FieldCursorProxy";
         if(_loc2_)
         {
            CURSOR_RESET = "refresh";
            if(!_loc1_)
            {
               CURSOR_NORMAL = "cursor_normal";
               if(!(_loc1_ && _loc2_))
               {
                  addr0059:
                  CURSOR_MOVE = "cursor_move";
                  if(!_loc1_)
                  {
                     CURSOR_DEMOLISH = "cursor_demolish";
                     if(_loc2_ || FieldCursorProxy)
                     {
                        addr0089:
                        CURSOR_IMPROVEMENT = "cursor_improvement";
                        if(_loc2_ || _loc2_)
                        {
                           addr00a0:
                           CURSOR_ATTACHED_ITEM = "cursor_improvement_small";
                           if(!_loc1_)
                           {
                              addr00af:
                              LIBNAME = "gui_infield_gui_mainmenue";
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00af);
                     }
                     addr00b8:
                     return;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00af);
            }
         }
         §§goto(addr00a0);
      }
      §§goto(addr0059);
      
      private var _currentCursor:String;
      
      private var watchDog:Timer;
      
      private var _risingCursors:Vector.<RisingCursor>;
      
      private var _loaded:Boolean;
      
      public function FieldCursorProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._risingCursors = new Vector.<RisingCursor>();
            if(_loc1_ || Boolean(this))
            {
               this._loaded = false;
               if(_loc1_)
               {
                  addr003b:
                  this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_NORMAL,CURSOR_NORMAL));
                  if(!_loc2_)
                  {
                     this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_MOVE,CURSOR_MOVE));
                     if(_loc1_)
                     {
                        this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_DEMOLISH,CURSOR_DEMOLISH));
                        addr0079:
                        if(_loc1_)
                        {
                           this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_IMPROVEMENT,CURSOR_IMPROVEMENT));
                           if(!_loc2_)
                           {
                              addr00c1:
                              this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_ATTACHED_ITEM,CURSOR_ATTACHED_ITEM));
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.watchDog = new Timer(1000,0);
                                 if(_loc1_)
                                 {
                                    addr0107:
                                    this.watchDog.addEventListener(TimerEvent.TIMER,this.onCheckRegisteredComplete);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr0126:
                                       this.watchDog.start();
                                    }
                                 }
                                 §§goto(addr012e);
                              }
                           }
                           §§goto(addr0126);
                        }
                     }
                     addr012e:
                     return;
                  }
                  §§goto(addr0107);
               }
               §§goto(addr0079);
            }
            §§goto(addr003b);
         }
         §§goto(addr00c1);
      }
      
      public function invokeCursor(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!this._loaded)
            {
               if(_loc2_)
               {
                  return;
               }
               addr004b:
               Mouse.cursor = param1;
               if(!_loc3_)
               {
                  addr0057:
                  this._currentCursor = param1;
               }
            }
            else
            {
               addr0035:
               if(this._currentCursor != param1)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr004b);
                  }
                  §§goto(addr0057);
               }
            }
            return;
         }
         §§goto(addr0035);
      }
      
      public function resetCursor() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            Mouse.cursor = CURSOR_NORMAL;
            if(!(_loc2_ && _loc2_))
            {
               this._currentCursor = CURSOR_NORMAL;
            }
         }
      }
      
      override public function onRemove() : void
      {
      }
      
      public function get currentCursor() : String
      {
         return this._currentCursor;
      }
      
      public function set currentCursor(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._currentCursor = param1;
         }
      }
      
      public function onCheckRegisteredComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:RisingCursor = null;
         var _loc2_:* = true;
         for each(_loc3_ in this._risingCursors)
         {
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(_loc3_.isRegistered);
               if(_loc7_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     continue;
                  }
                  if(!(_loc7_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  §§push(false);
               }
               _loc2_ = §§pop();
            }
            break;
         }
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(!_loc6_)
               {
                  this._loaded = true;
                  if(!(_loc6_ && Boolean(this)))
                  {
                     this.watchDog.stop();
                     if(_loc7_)
                     {
                        this.watchDog.removeEventListener(TimerEvent.TIMER,this.onCheckRegisteredComplete);
                        if(_loc7_ || Boolean(param1))
                        {
                           this.watchDog = null;
                           if(!_loc6_)
                           {
                              addr00ec:
                              sendNotification(ApplicationNotificationConstants.APPLICATION_CURSOR_INIT);
                           }
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr00ec);
            }
         }
         addr00f7:
      }
   }
}

