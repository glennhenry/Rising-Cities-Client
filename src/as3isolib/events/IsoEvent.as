package as3isolib.events
{
   import flash.events.Event;
   
   public class IsoEvent extends Event
   {
      
      public static const INVALIDATE:String = "as3isolib_invalidate";
      
      public static const RENDER:String = "as3isolib_render";
      
      public static const RENDER_COMPLETE:String = "as3isolib_renderComplete";
      
      public static const MOVE:String = "as3isolib_move";
      
      public static const RESIZE:String = "as3isolib_resize";
      
      public static const CHILD_ADDED:String = "as3isolib_childAdded";
      
      public static const CHILD_REMOVED:String = "as3isolib_childRemoved";
      
      public var propName:String;
      
      public var oldValue:Object;
      
      public var newValue:Object;
      
      public function IsoEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         var _loc1_:IsoEvent = new IsoEvent(type,bubbles,cancelable);
         _loc1_.propName = this.propName;
         _loc1_.oldValue = this.oldValue;
         _loc1_.newValue = this.newValue;
         return _loc1_;
      }
   }
}

