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
      
      private var _currentCursor:String;
      
      private var watchDog:Timer;
      
      private var _risingCursors:Vector.<RisingCursor>;
      
      private var _loaded:Boolean;
      
      public function FieldCursorProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._risingCursors = new Vector.<RisingCursor>();
         this._loaded = false;
         this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_NORMAL,CURSOR_NORMAL));
         this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_MOVE,CURSOR_MOVE));
         this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_DEMOLISH,CURSOR_DEMOLISH));
         this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_IMPROVEMENT,CURSOR_IMPROVEMENT));
         this._risingCursors.push(new RisingCursor(LIBNAME,LIBNAME,CURSOR_ATTACHED_ITEM,CURSOR_ATTACHED_ITEM));
         this.watchDog = new Timer(1000,0);
         this.watchDog.addEventListener(TimerEvent.TIMER,this.onCheckRegisteredComplete);
         this.watchDog.start();
      }
      
      public function invokeCursor(param1:String) : void
      {
         if(!this._loaded)
         {
            return;
         }
         if(this._currentCursor != param1)
         {
            Mouse.cursor = param1;
            this._currentCursor = param1;
         }
      }
      
      public function resetCursor() : void
      {
         Mouse.cursor = CURSOR_NORMAL;
         this._currentCursor = CURSOR_NORMAL;
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
         this._currentCursor = param1;
      }
      
      public function onCheckRegisteredComplete(param1:Event) : void
      {
         var _loc3_:RisingCursor = null;
         var _loc2_:Boolean = true;
         for each(_loc3_ in this._risingCursors)
         {
            if(!_loc3_.isRegistered)
            {
               _loc2_ = false;
               break;
            }
         }
         if(_loc2_)
         {
            this._loaded = true;
            this.watchDog.stop();
            this.watchDog.removeEventListener(TimerEvent.TIMER,this.onCheckRegisteredComplete);
            this.watchDog = null;
            sendNotification(ApplicationNotificationConstants.APPLICATION_CURSOR_INIT);
         }
      }
   }
}

