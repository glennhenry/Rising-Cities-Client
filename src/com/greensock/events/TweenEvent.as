package com.greensock.events
{
   import flash.events.Event;
   
   public class TweenEvent extends Event
   {
      
      public static const COMPLETE:String = "complete";
      
      public static const START:String = "start";
      
      public static const UPDATE:String = "change";
      
      public static const REVERSE_COMPLETE:String = "reverseComplete";
      
      public static const INIT:String = "init";
      
      public static const VERSION:Number = 1.1;
      
      public static const REPEAT:String = "repeat";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         VERSION = 1.1;
         if(!(_loc2_ && _loc1_))
         {
            START = "start";
            if(_loc1_ || _loc2_)
            {
               UPDATE = "change";
               if(!(_loc2_ && _loc1_))
               {
                  COMPLETE = "complete";
                  if(!_loc2_)
                  {
                     addr0080:
                     REVERSE_COMPLETE = "reverseComplete";
                     if(!_loc2_)
                     {
                        addr008f:
                        REPEAT = "repeat";
                        if(!_loc2_)
                        {
                           addr009d:
                           INIT = "init";
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr009d);
                  }
               }
               addr00a6:
               return;
            }
            §§goto(addr0080);
         }
      }
      §§goto(addr008f);
      
      public function TweenEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new TweenEvent(this.type,this.bubbles,this.cancelable);
      }
   }
}

