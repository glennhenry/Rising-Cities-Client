package net.bigpoint.cityrama.init.event
{
   import flash.events.Event;
   import net.bigpoint.cityrama.init.ISystemManager;
   
   public class SystemManagerEvent extends Event
   {
      
      public static const FRAME_SUSPENDED:String = "frameSuspended";
      
      public var manager:ISystemManager;
      
      public function SystemManagerEvent(param1:ISystemManager)
      {
         super(SystemManagerEvent.FRAME_SUSPENDED);
         this.manager = param1;
      }
   }
}

