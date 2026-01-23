package eDpLib.events
{
   internal class ListenerHash
   {
      
      public var listeners:Array = [];
      
      public function ListenerHash()
      {
         super();
      }
      
      public function addListener(param1:Function) : void
      {
         if(!this.contains(param1))
         {
            this.listeners.push(param1);
         }
      }
      
      public function removeListener(param1:Function) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.contains(param1))
         {
            _loc3_ = int(this.listeners.length);
            while(_loc2_ < _loc3_)
            {
               if(param1 == this.listeners[_loc2_] as Function)
               {
                  break;
               }
               _loc2_++;
            }
            this.listeners.splice(_loc2_,1);
         }
      }
      
      public function contains(param1:Function) : Boolean
      {
         var _loc2_:Function = null;
         for each(_loc2_ in this.listeners)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

