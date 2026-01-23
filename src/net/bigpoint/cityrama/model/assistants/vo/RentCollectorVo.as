package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RentCollectorVo
   {
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _saleActive:Boolean;
      
      private var _realCurrencyStock:Number;
      
      private var _price:Number;
      
      private var _paymentPrice:String = "";
      
      private var _externalPackKey:String = "";
      
      public function RentCollectorVo(param1:ConfigAssistDTO)
      {
         super();
         if(param1)
         {
            this._configAssist = param1;
         }
      }
      
      public function get backgroundGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_rentCollector","collector_bg_" + this._configAssist.gfxId);
      }
      
      public function get isExternalPaymentPack() : Boolean
      {
         return this._paymentPrice != "" && this._externalPackKey != "";
      }
      
      public function get headerText() : String
      {
         var _loc1_:uint = LocaUtils.getDurationH(this.runtime / 1000);
         if(_loc1_ < 72)
         {
            return LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificHours.capital",[_loc1_]);
         }
         return LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays.capital",[LocaUtils.getDaysFromSeconds(this.runtime / 1000)]);
      }
      
      public function get iconGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_rentCollector","rentCollector_big_" + this._configAssist.gfxId);
      }
      
      public function get flavourText() : String
      {
         return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.flavour." + this._configAssist.locaId);
      }
      
      public function get isAffordable() : Boolean
      {
         return this.realCurrencyStock >= this.price;
      }
      
      public function get paymentHoverText() : String
      {
         if(this.saleActive)
         {
            return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.payment.hover.sale",[this.paymentPrice]);
         }
         return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.payment.hover",[this.paymentPrice]);
      }
      
      public function get assistConfigId() : Number
      {
         return this._configAssist.id;
      }
      
      public function get runtime() : Number
      {
         return this._configAssist.lifetime;
      }
      
      public function get saleActive() : Boolean
      {
         return this._saleActive;
      }
      
      public function set saleActive(param1:Boolean) : void
      {
         this._saleActive = param1;
      }
      
      public function get realCurrencyStock() : Number
      {
         return this._realCurrencyStock;
      }
      
      public function set realCurrencyStock(param1:Number) : void
      {
         this._realCurrencyStock = param1;
      }
      
      public function get paymentPrice() : String
      {
         return this._paymentPrice;
      }
      
      public function set paymentPrice(param1:String) : void
      {
         this._paymentPrice = param1;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function get externalPackKey() : String
      {
         return this._externalPackKey;
      }
      
      public function set externalPackKey(param1:String) : void
      {
         this._externalPackKey = param1;
      }
   }
}

