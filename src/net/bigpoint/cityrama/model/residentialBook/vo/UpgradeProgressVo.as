package net.bigpoint.cityrama.model.residentialBook.vo
{
   public class UpgradeProgressVo
   {
      
      private var _currentProgress:Number = 0;
      
      private var _neededProgress:Number = 0;
      
      private var _price:Number;
      
      private var _hasEnoughMoney:Boolean;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeCurrentLevel:int;
      
      private var _userRCStock:Number;
      
      private var _instaFinishRCCost:Number;
      
      public function UpgradeProgressVo()
      {
         super();
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function set upgradeNextLevel(param1:int) : void
      {
         this._upgradeNextLevel = param1;
      }
      
      public function get hasEnoughMoney() : Boolean
      {
         return this._hasEnoughMoney;
      }
      
      public function set hasEnoughMoney(param1:Boolean) : void
      {
         this._hasEnoughMoney = param1;
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get neededProgress() : int
      {
         return this._neededProgress;
      }
      
      public function set neededProgress(param1:int) : void
      {
         this._neededProgress = param1;
      }
      
      public function get currentProgress() : int
      {
         return this._currentProgress;
      }
      
      public function set currentProgress(param1:int) : void
      {
         this._currentProgress = param1;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function set upgradeMaxLevel(param1:int) : void
      {
         this._upgradeMaxLevel = param1;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function set upgradeCurrentLevel(param1:int) : void
      {
         this._upgradeCurrentLevel = param1;
      }
      
      public function get affordableByRc() : Boolean
      {
         return this._userRCStock >= this._instaFinishRCCost;
      }
      
      public function get instaFinishRCCost() : Number
      {
         return this._instaFinishRCCost;
      }
      
      public function set instaFinishRCCost(param1:Number) : void
      {
         this._instaFinishRCCost = param1;
      }
      
      public function get userRCStock() : Number
      {
         return this._userRCStock;
      }
      
      public function set userRCStock(param1:Number) : void
      {
         this._userRCStock = param1;
      }
   }
}

