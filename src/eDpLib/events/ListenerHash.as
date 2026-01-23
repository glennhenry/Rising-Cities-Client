package eDpLib.events
{
   internal class ListenerHash
   {
      
      public var listeners:Array;
      
      public function ListenerHash()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.listeners = [];
            if(_loc2_ || _loc2_)
            {
               addr003b:
               super();
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function addListener(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(!this.contains(param1))
            {
               if(_loc3_ || Boolean(this))
               {
                  this.listeners.push(param1);
               }
            }
         }
      }
      
      public function removeListener(param1:Function) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!(_loc5_ && Boolean(this)))
         {
            if(this.contains(param1))
            {
               if(_loc4_ || Boolean(_loc3_))
               {
                  _loc3_ = int(this.listeners.length);
               }
               do
               {
                  if(_loc2_ >= _loc3_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     if(param1 != this.listeners[_loc2_] as Function)
                     {
                        continue;
                     }
                     if(!(_loc5_ && Boolean(this)))
                     {
                        break;
                     }
                  }
               }
               while(_loc2_++, !_loc5_);
               
               this.listeners.splice(_loc2_,1);
               addr008f:
            }
            return;
         }
         §§goto(addr008f);
      }
      
      public function contains(param1:Function) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Function = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.listeners;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && Boolean(_loc2_))
               {
                  break;
               }
               if(_loc2_ == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
   }
}

