package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   
   public class CityTreasuryEvent extends Event
   {
      
      public static const TREASURY_BUTTON_CLICKED:String = "TREASURY_BUTTON_CLICKED";
      
      public static const USER_CANT_AFFORD:String = "USER_CANT_AFFORD";
      
      private var _contentType:String;
      
      private var _selectedPack:ConfigPaymentPackDTO;
      
      public function CityTreasuryEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:ConfigPaymentPackDTO = null)
      {
         super(param1,param2,param3);
         this._contentType = param4;
         this._selectedPack = param5;
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

