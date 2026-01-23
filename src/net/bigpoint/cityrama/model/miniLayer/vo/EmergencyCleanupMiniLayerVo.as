package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   
   public class EmergencyCleanupMiniLayerVo
   {
      
      private var _libName:String;
      
      private var _bmpName:String;
      
      private var _swfName:String;
      
      private var _productionNeedVo:ProductionNeedVo;
      
      private var _instantRCCosts:Number;
      
      private var _hasEnoughRC:Boolean;
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _header:String;
      
      private var _buttonText:String;
      
      private var _instantFinishText:String;
      
      private var _instantFinishToolTipBad:String;
      
      private var _damagedBuildingId:Number;
      
      public function EmergencyCleanupMiniLayerVo()
      {
         super();
      }
      
      public function get instantFinishToolTipBad() : String
      {
         return this._instantFinishToolTipBad;
      }
      
      public function set instantFinishToolTipBad(param1:String) : void
      {
         this._instantFinishToolTipBad = param1;
      }
      
      public function get hasEnoughRC() : Boolean
      {
         return this._hasEnoughRC;
      }
      
      public function set hasEnoughRC(param1:Boolean) : void
      {
         this._hasEnoughRC = param1;
      }
      
      public function get instantRCCosts() : Number
      {
         return this._instantRCCosts;
      }
      
      public function set instantRCCosts(param1:Number) : void
      {
         this._instantRCCosts = param1;
      }
      
      public function get productionNeedVo() : ProductionNeedVo
      {
         return this._productionNeedVo;
      }
      
      public function set productionNeedVo(param1:ProductionNeedVo) : void
      {
         this._productionNeedVo = param1;
      }
      
      public function get damagedBuildingId() : Number
      {
         return this._damagedBuildingId;
      }
      
      public function set damagedBuildingId(param1:Number) : void
      {
         this._damagedBuildingId = param1;
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function set libName(param1:String) : void
      {
         this._libName = param1;
      }
      
      public function get bmpName() : String
      {
         return this._bmpName;
      }
      
      public function set bmpName(param1:String) : void
      {
         this._bmpName = param1;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function set title(param1:String) : void
      {
         this._title = param1;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function get header() : String
      {
         return this._header;
      }
      
      public function set header(param1:String) : void
      {
         this._header = param1;
      }
      
      public function get buttonText() : String
      {
         return this._buttonText;
      }
      
      public function set buttonText(param1:String) : void
      {
         this._buttonText = param1;
      }
      
      public function get instantFinishText() : String
      {
         return this._instantFinishText;
      }
      
      public function set instantFinishText(param1:String) : void
      {
         this._instantFinishText = param1;
      }
      
      public function get swfName() : String
      {
         return this._swfName;
      }
      
      public function set swfName(param1:String) : void
      {
         this._swfName = param1;
      }
   }
}

