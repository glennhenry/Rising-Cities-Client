package net.bigpoint.cityrama.model.miniLayer.vo
{
   public class ConstructionMiniLayerVo
   {
      
      private var _amountNeeded:int;
      
      private var _amountOwned:int = 0;
      
      private var _assetGfxId:int;
      
      private var _assetLibName:String;
      
      private var _assetImageName:String;
      
      private var _assetLocaleName:String;
      
      private var _materialAvailable:Boolean;
      
      private var _showStartButton:Boolean = true;
      
      private var _hasStarted:Boolean;
      
      private var _constructionStepLength:Number = 0;
      
      private var _constructionCurrentTime:Number = 0;
      
      private var _constructionStepEndTime:Number = 0;
      
      private var _realCurrencyCosts:Number;
      
      private var _hasEnoughRC:Boolean;
      
      public function ConstructionMiniLayerVo()
      {
         super();
      }
      
      public function get hasStarted() : Boolean
      {
         return this._hasStarted;
      }
      
      public function set hasStarted(param1:Boolean) : void
      {
         this._hasStarted = param1;
      }
      
      public function get constructionStepLength() : Number
      {
         return this._constructionStepLength;
      }
      
      public function set constructionStepLength(param1:Number) : void
      {
         this._constructionStepLength = param1;
      }
      
      public function get constructionCurrentTime() : Number
      {
         return this._constructionCurrentTime;
      }
      
      public function set constructionCurrentTime(param1:Number) : void
      {
         this._constructionCurrentTime = param1;
      }
      
      public function get constructionStepEndTime() : Number
      {
         return this._constructionStepEndTime;
      }
      
      public function set constructionStepEndTime(param1:Number) : void
      {
         this._constructionStepEndTime = param1;
      }
      
      public function get assetLibName() : String
      {
         return this._assetLibName;
      }
      
      public function set assetLibName(param1:String) : void
      {
         this._assetLibName = param1;
      }
      
      public function get assetImageName() : String
      {
         return this._assetImageName;
      }
      
      public function set assetImageName(param1:String) : void
      {
         this._assetImageName = param1;
      }
      
      public function get materialAvailable() : Boolean
      {
         return this._materialAvailable;
      }
      
      public function set materialAvailable(param1:Boolean) : void
      {
         this._materialAvailable = param1;
      }
      
      public function get amountNeeded() : int
      {
         return this._amountNeeded;
      }
      
      public function set amountNeeded(param1:int) : void
      {
         this._amountNeeded = param1;
      }
      
      public function get realCurrencyCosts() : Number
      {
         return this._realCurrencyCosts;
      }
      
      public function set realCurrencyCosts(param1:Number) : void
      {
         this._realCurrencyCosts = param1;
      }
      
      public function get assetGfxId() : int
      {
         return this._assetGfxId;
      }
      
      public function set assetGfxId(param1:int) : void
      {
         this._assetGfxId = param1;
      }
      
      public function set hasEnoughRC(param1:Boolean) : void
      {
         this._hasEnoughRC = param1;
      }
      
      public function get hasEnoughRC() : Boolean
      {
         return this._hasEnoughRC;
      }
      
      public function get amountOwned() : int
      {
         return this._amountOwned;
      }
      
      public function set amountOwned(param1:int) : void
      {
         this._amountOwned = param1;
      }
      
      public function get assetLocaleName() : String
      {
         return this._assetLocaleName;
      }
      
      public function set assetLocaleName(param1:String) : void
      {
         this._assetLocaleName = param1;
      }
      
      public function get showStartButton() : Boolean
      {
         return this._showStartButton;
      }
      
      public function set showStartButton(param1:Boolean) : void
      {
         this._showStartButton = param1;
      }
   }
}

