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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function set packs(param1:Vector.<CityTreasuryRealCurrencyPackItemVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._packs = param1;
         }
      }
      
      public function get packs() : Vector.<CityTreasuryRealCurrencyPackItemVo>
      {
         return this._packs;
      }
      
      public function get packsAsListCollection() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:CityTreasuryInternalPackItemVo = null;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(!this._packsAsArrayCollection)
            {
               if(_loc5_)
               {
                  this._packsAsArrayCollection = new ArrayCollection();
               }
               for each(_loc1_ in this._packs)
               {
                  if(!_loc4_)
                  {
                     this._packsAsArrayCollection.addItem(_loc1_);
                  }
               }
               addr004b:
            }
            return this._packsAsArrayCollection;
         }
         §§goto(addr004b);
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

