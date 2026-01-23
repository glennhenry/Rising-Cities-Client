package net.bigpoint.cityrama.init.event
{
   import flash.events.Event;
   import net.bigpoint.cityrama.init.ISystemManager;
   
   public class SystemManagerEvent extends Event
   {
      
      public static const FRAME_SUSPENDED:String = "frameSuspended";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         FRAME_SUSPENDED = "frameSuspended";
      }
      
      public var manager:ISystemManager;
      
      public function SystemManagerEvent(param1:ISystemManager)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super(SystemManagerEvent.FRAME_SUSPENDED);
            if(_loc3_ || Boolean(param1))
            {
               this.manager = param1;
            }
         }
      }
   }
}

