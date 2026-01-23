package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   
   public class ShowMasteryInfolayerEvent extends Event
   {
      
      public static const SHOW:String = "SHOW";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SHOW = "SHOW";
      }
      
      public var index:int = -1;
      
      public function ShowMasteryInfolayerEvent(param1:int)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.index = param1;
            if(_loc2_)
            {
               addr0028:
               super(SHOW,false,true);
            }
            return;
         }
         §§goto(addr0028);
      }
   }
}

