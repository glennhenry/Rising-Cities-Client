package net.bigpoint.eventstream.vo
{
   public class ESCRequestVo
   {
      
      public var time:Number;
      
      public var context:Object;
      
      public var events:Array;
      
      public function ESCRequestVo(param1:Number = 0, param2:Object = null, param3:Array = null)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this.time = param1;
               if(_loc5_)
               {
                  this.context = param2;
                  if(_loc5_ || Boolean(this))
                  {
                     addr0050:
                     this.events = param3;
                  }
                  §§goto(addr0056);
               }
            }
            §§goto(addr0050);
         }
         addr0056:
      }
   }
}

