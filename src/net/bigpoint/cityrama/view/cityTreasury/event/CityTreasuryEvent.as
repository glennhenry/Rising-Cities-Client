package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   
   public class CityTreasuryEvent extends Event
   {
      
      public static const TREASURY_BUTTON_CLICKED:String = "TREASURY_BUTTON_CLICKED";
      
      public static const USER_CANT_AFFORD:String = "USER_CANT_AFFORD";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         TREASURY_BUTTON_CLICKED = "TREASURY_BUTTON_CLICKED";
         if(!_loc1_)
         {
            USER_CANT_AFFORD = "USER_CANT_AFFORD";
         }
      }
      
      private var _contentType:String;
      
      private var _selectedPack:ConfigPaymentPackDTO;
      
      public function CityTreasuryEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:ConfigPaymentPackDTO = null)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            super(param1,param2,param3);
            if(_loc6_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0048);
         }
         addr0034:
         this._contentType = param4;
         if(_loc6_ || param3)
         {
            addr0048:
            this._selectedPack = param5;
         }
      }
      
      public function get contentType() : String
      {
         return this._contentType;
      }
      
      public function get selectedPack() : ConfigPaymentPackDTO
      {
         return this._selectedPack;
      }
   }
}

