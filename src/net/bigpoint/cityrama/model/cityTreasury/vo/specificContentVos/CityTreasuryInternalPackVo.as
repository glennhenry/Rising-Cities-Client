package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryInternalPackVo implements ICityTreasuryContentVo
   {
      
      private var _categoryId:String;
      
      private var _packs:Vector.<CityTreasuryInternalPackItemVo>;
      
      private var _packsAsArrayCollection:ArrayCollection;
      
      public function CityTreasuryInternalPackVo()
      {
         super();
      }
      
      public function set packs(param1:Vector.<CityTreasuryInternalPackItemVo>) : void
      {
         this._packs = param1;
      }
      
      public function get packs() : Vector.<CityTreasuryInternalPackItemVo>
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
      
      public function get packListHeader() : String
      {
         switch(this._categoryId)
         {
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.packageheader.uppercase");
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.packageheader.uppercase");
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.packageheader.uppercase");
            default:
               return LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.availableItems.capital");
         }
      }
      
      public function set categoryId(param1:String) : void
      {
         this._categoryId = param1;
      }
   }
}

