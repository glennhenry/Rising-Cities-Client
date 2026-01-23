package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryRealCurrencyPackVo implements ICityTreasuryContentVo
   {
      
      private var _packs:Vector.<CityTreasuryRealCurrencyPackItemVo>;
      
      private var _packsAsArrayCollection:ArrayCollection;
      
      public function CityTreasuryRealCurrencyPackVo()
      {
         super();
      }
      
      public function set packs(param1:Vector.<CityTreasuryRealCurrencyPackItemVo>) : void
      {
         this._packs = param1;
      }
      
      public function get packs() : Vector.<CityTreasuryRealCurrencyPackItemVo>
      {
         return this._packs;
      }
      
      public function get packsAsListCollection() : ArrayCollection
      {
         var _loc1_:CityTreasuryInternalPackItemVo = null;
         if(!this._packsAsArrayCollection)
         {
            this._packsAsArrayCollection = new ArrayCollection();
            for each(_loc1_ in this._packs)
            {
               this._packsAsArrayCollection.addItem(_loc1_);
            }
         }
         return this._packsAsArrayCollection;
      }
      
      public function get buttonLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.button.capital");
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.button.enabled.tooltip");
      }
      
      public function get headerLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.title.uppercase");
      }
      
      public function get mainText() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.flavor");
      }
      
      public function get packListHeader() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.packageheader.uppercase");
      }
   }
}

