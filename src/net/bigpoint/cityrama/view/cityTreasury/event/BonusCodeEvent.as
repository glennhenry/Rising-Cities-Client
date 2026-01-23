package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.events.Event;
   
   public class BonusCodeEvent extends Event
   {
      
      public static const BONUS_CODE_SEND:String = "BONUS_CODE_SEND";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && BonusCodeEvent))
      {
         BONUS_CODE_SEND = "BONUS_CODE_SEND";
      }
      
      private var _bonusCode:String;
      
      public function BonusCodeEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get bonusCode() : String
      {
         return this._bonusCode;
      }
      
      public function set bonusCode(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._bonusCode = param1;
         }
      }
   }
}

