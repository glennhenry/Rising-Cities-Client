package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryRentCollectorVo implements ICityTreasuryContentVo
   {
      
      private var _pack:ConfigPaymentPackDTO;
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _price:Number = 0;
      
      private var _currency:String = "€";
      
      private var _icon:String;
      
      private var _discountedPrice:Number = -1;
      
      public function CityTreasuryRentCollectorVo()
      {
         super();
      }
      
      public function get configAssist() : ConfigAssistDTO
      {
         if(!this._configAssist)
         {
            if(this._pack)
            {
               if(Boolean(this._pack.assists) && Boolean(this._pack.assists.length))
               {
                  if(ConfigOutputDTO(this._pack.assists[0]).assistConfig)
                  {
                     this._configAssist = ConfigOutputDTO(this._pack.assists[0]).assistConfig;
                  }
               }
            }
         }
         return this._configAssist;
      }
      
      public function get packGfx() : BriskDynaVo
      {
         if(this.configAssist)
         {
            return new BriskDynaVo("gui_popups_rentCollector","rentCollector_big_" + this.configAssist.gfxId);
         }
         return null;
      }
      
      public function get headerText() : String
      {
         return LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
      }
      
      public function get topText() : String
      {
         if(this.configAssist)
         {
            return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.flavour." + this.configAssist.locaId);
         }
         return "";
      }
      
      public function get bottomText() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.stackText");
      }
      
      public function get runtimeText() : String
      {
         var _loc1_:uint = 0;
         if(this.configAssist)
         {
            _loc1_ = LocaUtils.getDurationH(this.configAssist.lifetime / 1000);
            if(_loc1_ < 72)
            {
               return LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificHours.capital",[_loc1_]);
            }
            return LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays.capital",[LocaUtils.getDaysFromSeconds(this.configAssist.lifetime / 1000)]);
         }
         return "";
      }
      
      public function get purchaseLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.buyText");
      }
      
      public function get buttonLabel() : String
      {
         if(this.hasDiscount)
         {
            return this._discountedPrice.toFixed(2) + " " + this._currency;
         }
         return this._price.toFixed(2) + " " + this._currency;
      }
      
      public function get discountLabel() : String
      {
         if(this.hasDiscount)
         {
            return this._price.toFixed(2) + " " + this._currency;
         }
         return "";
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.button.enabled.tooltip");
      }
      
      public function get hasDiscount() : Boolean
      {
         return this._discountedPrice != -1;
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_medium");
         }
         return null;
      }
      
      public function get smallPackIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
         }
         return null;
      }
      
      public function get pack() : ConfigPaymentPackDTO
      {
         return this._pack;
      }
      
      public function set pack(param1:ConfigPaymentPackDTO) : void
      {
         this._pack = param1;
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get discountedPrice() : Number
      {
         return this._discountedPrice;
      }
      
      public function set discountedPrice(param1:Number) : void
      {
         this._discountedPrice = param1;
      }
      
      public function get currency() : String
      {
         return this._currency;
      }
      
      public function set currency(param1:String) : void
      {
         this._currency = param1;
      }
      
      public function set icon(param1:String) : void
      {
         this._icon = param1;
      }
   }
}

