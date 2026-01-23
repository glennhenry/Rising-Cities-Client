package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.events.Event;
   
   public class BonusCodeEvent extends Event
   {
      
      public static const BONUS_CODE_SEND:String = "BONUS_CODE_SEND";
      
      private var _bonusCode:String;
      
      public function BonusCodeEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get bonusCode() : String
      {
         return this._bonusCode;
      }
      
      public function set bonusCode(param1:String) : void
      {
         this._bonusCode = param1;
      }
   }
}

