package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   
   public class ShowMasteryInfolayerEvent extends Event
   {
      
      public static const SHOW:String = "SHOW";
      
      public var index:int = -1;
      
      public function ShowMasteryInfolayerEvent(param1:int)
      {
         this.index = param1;
         super(SHOW,false,true);
      }
   }
}

