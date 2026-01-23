package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   
   public class EmergencyRehireProfessionalMiniLayerVo
   {
      
      private var _libName:String;
      
      private var _bmpName:String;
      
      private var _swfName:String;
      
      private var _epCosts:Number;
      
      private var _hasEnoughEp:Boolean;
      
      private var _instantDextroCosts:Number;
      
      private var _hasEnoughDextro:Boolean;
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _header:String;
      
      private var _buttonText:String;
      
      private var _instantFinishText:String;
      
      private var _instantFinishToolTipBad:String;
      
      private var _professionalSlotVo:ProfessionalSlotVo;
      
      private var _luckProgress:Number;
      
      private var _perceptionProgress:Number;
      
      private var _efficencyProgress:Number;
      
      private var _profId:Number;
      
      public function EmergencyRehireProfessionalMiniLayerVo()
      {
         super();
      }
      
      public function get profId() : Number
      {
         return this._profId;
      }
      
      public function set profId(param1:Number) : void
      {
         this._profId = param1;
      }
      
      public function get efficencyProgress() : Number
      {
         return this._efficencyProgress;
      }
      
      public function set efficencyProgress(param1:Number) : void
      {
         this._efficencyProgress = param1;
      }
      
      public function get perceptionProgress() : Number
      {
         return this._perceptionProgress;
      }
      
      public function set perceptionProgress(param1:Number) : void
      {
         this._perceptionProgress = param1;
      }
      
      public function get luckProgress() : Number
      {
         return this._luckProgress;
      }
      
      public function set luckProgress(param1:Number) : void
      {
         this._luckProgress = param1;
      }
      
      public function get instantFinishToolTipBad() : String
      {
         return this._instantFinishToolTipBad;
      }
      
      public function set instantFinishToolTipBad(param1:String) : void
      {
         this._instantFinishToolTipBad = param1;
      }
      
      public function get hasEnoughDextro() : Boolean
      {
         return this._hasEnoughDextro;
      }
      
      public function set hasEnoughDextro(param1:Boolean) : void
      {
         this._hasEnoughDextro = param1;
      }
      
      public function get instantDextroCosts() : Number
      {
         return this._instantDextroCosts;
      }
      
      public function set instantDextroCosts(param1:Number) : void
      {
         this._instantDextroCosts = param1;
      }
      
      public function get hasEnoughEp() : Boolean
      {
         return this._hasEnoughEp;
      }
      
      public function set hasEnoughEp(param1:Boolean) : void
      {
         this._hasEnoughEp = param1;
      }
      
      public function get epCosts() : Number
      {
         return this._epCosts;
      }
      
      public function set epCosts(param1:Number) : void
      {
         this._epCosts = param1;
      }
      
      public function get professionalSlotVo() : ProfessionalSlotVo
      {
         return this._professionalSlotVo;
      }
      
      public function set professionalSlotVo(param1:ProfessionalSlotVo) : void
      {
         this._professionalSlotVo = param1;
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

