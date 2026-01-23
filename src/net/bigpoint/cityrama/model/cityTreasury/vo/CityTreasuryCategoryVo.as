package net.bigpoint.cityrama.model.cityTreasury.vo
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   
   public class CityTreasuryCategoryVo
   {
      
      private var _categoryMenu:CategoryMenuListVo;
      
      private var _contentVo:ICityTreasuryContentVo;
      
      private var _currentRCStock:Number = 0;
      
      private var _preSelectedPackIndex:int = 0;
      
      public function CityTreasuryCategoryVo()
      {
         super();
      }
      
      public function get skinStyle() : String
      {
         if(this.contentVo is CityTreasuryRealCurrencyPackVo)
         {
            return CityTreasuryContentComponent.TYPE_REAL_CURRENCY;
         }
         if(this.contentVo is CityTreasuryInternalPackVo)
         {
            return CityTreasuryContentComponent.TYPE_INTERNAL_PACK;
         }
         if(this.contentVo is CityTreasuryExternalPackVo)
         {
            return CityTreasuryContentComponent.TYPE_EXTERNAL_PACK;
         }
         if(this.contentVo is CityTreasuryBonusCodeVo)
         {
            return CityTreasuryContentComponent.TYPE_BONUS_CODE;
         }
         if(this.contentVo is CityTreasuryCashForActionVo)
         {
            return CityTreasuryContentComponent.TYPE_CASH_FOR_ACTION;
         }
         if(this.contentVo is CityTreasuryRentCollectorVo)
         {
            return CityTreasuryContentComponent.TYPE_RENTCOLLECTOR;
         }
         return "";
      }
      
      public function get categoryMenu() : CategoryMenuListVo
      {
         return this._categoryMenu;
      }
      
      public function set categoryMenu(param1:CategoryMenuListVo) : void
      {
         this._categoryMenu = param1;
      }
      
      public function get contentVo() : ICityTreasuryContentVo
      {
         return this._contentVo;
      }
      
      public function set contentVo(param1:ICityTreasuryContentVo) : void
      {
         this._contentVo = param1;
      }
      
      public function get currentRCStock() : Number
      {
         return this._currentRCStock;
      }
      
      public function set currentRCStock(param1:Number) : void
      {
         this._currentRCStock = param1;
      }
      
      public function get preSelectedPackIndex() : int
      {
         return this._preSelectedPackIndex;
      }
      
      public function set preSelectedPackIndex(param1:int) : void
      {
         this._preSelectedPackIndex = param1;
      }
   }
}

