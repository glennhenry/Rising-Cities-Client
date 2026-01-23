package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   
   public class ShopDetailViewVo
   {
      
      private var _gfxID:int;
      
      private var _localeId:String;
      
      private var _storageInterests:Vector.<GoodObjectVo>;
      
      private var _storeStock:Vector.<ShopStockGoodVo>;
      
      private var _buildingID:Number;
      
      private var _currentLevel:int;
      
      private var _nextLevelData:ShopDetailViewVo;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeMMPrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _radiusX:int;
      
      private var _radiusY:int;
      
      private var _currentEnergy:int;
      
      private var _currentMood:int;
      
      private var _maxStock:Number;
      
      public function ShopDetailViewVo()
      {
         super();
      }
      
      private static function sortStorageInterests(param1:GoodObjectVo, param2:GoodObjectVo) : int
      {
         if(param1.userLevelRequired < param2.userLevelRequired)
         {
            return 1;
         }
         if(param1.userLevelRequired == param2.userLevelRequired)
         {
            return 0;
         }
         if(param1.userLevelRequired > param2.userLevelRequired)
         {
            return -1;
         }
         return 0;
      }
      
      private static function sortStoreStock(param1:ShopStockGoodVo, param2:ShopStockGoodVo) : int
      {
         if(param1.goodVo.userLevelRequired < param2.goodVo.userLevelRequired)
         {
            return 1;
         }
         if(param1.goodVo.userLevelRequired == param2.goodVo.userLevelRequired)
         {
            return 0;
         }
         if(param1.goodVo.userLevelRequired > param2.goodVo.userLevelRequired)
         {
            return -1;
         }
         return 0;
      }
      
      public function set gfxID(param1:int) : void
      {
         this._gfxID = param1;
      }
      
      public function get storeStock() : Vector.<ShopStockGoodVo>
      {
         return this._storeStock;
      }
      
      public function set storeStock(param1:Vector.<ShopStockGoodVo>) : void
      {
         this._storeStock = param1;
         this._storeStock.sort(sortStoreStock);
      }
      
      public function get storageInterests() : Vector.<GoodObjectVo>
      {
         return this._storageInterests;
      }
      
      public function set storageInterests(param1:Vector.<GoodObjectVo>) : void
      {
         this._storageInterests = param1;
         this._storageInterests.sort(sortStorageInterests);
      }
      
      public function get buildingID() : Number
      {
         return this._buildingID;
      }
      
      public function set buildingID(param1:Number) : void
      {
         this._buildingID = param1;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get currentLevel() : int
      {
         return this._currentLevel;
      }
      
      public function set currentLevel(param1:int) : void
      {
         this._currentLevel = param1;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get currentEnergy() : int
      {
         return this._currentEnergy;
      }
      
      public function get currentMood() : int
      {
         return this._currentMood;
      }
      
      public function get nextLevelData() : ShopDetailViewVo
      {
         return this._nextLevelData;
      }
      
      public function set nextLevelData(param1:ShopDetailViewVo) : void
      {
         this._nextLevelData = param1;
      }
      
      public function set localeId(param1:String) : void
      {
         this._localeId = param1;
      }
      
      public function set currentEnergy(param1:int) : void
      {
         this._currentEnergy = param1;
      }
      
      public function set currentMood(param1:int) : void
      {
         this._currentMood = param1;
      }
      
      public function get radiusX() : int
      {
         return this._radiusX;
      }
      
      public function set radiusX(param1:int) : void
      {
         this._radiusX = param1;
      }
      
      public function get radiusY() : int
      {
         return this._radiusY;
      }
      
      public function set radiusY(param1:int) : void
      {
         this._radiusY = param1;
      }
      
      public function set maxStock(param1:Number) : void
      {
         this._maxStock = param1;
      }
      
      public function get maxStock() : Number
      {
         return this._maxStock;
      }
      
      public function set nextLevel(param1:int) : void
      {
         this._upgradeNextLevel = param1;
      }
      
      public function set upgradeMaxLevel(param1:int) : void
      {
         this._upgradeMaxLevel = param1;
      }
      
      public function set upgradeMMPrice(param1:Number) : void
      {
         this._upgradeMMPrice = param1;
      }
      
      public function set hasEnoughDD(param1:Boolean) : void
      {
         this._hasEnoughDD = param1;
      }
      
      public function get upgradeMMPrice() : Number
      {
         return this._upgradeMMPrice;
      }
   }
}

