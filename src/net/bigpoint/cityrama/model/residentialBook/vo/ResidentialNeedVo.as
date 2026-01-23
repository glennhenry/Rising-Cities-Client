package net.bigpoint.cityrama.model.residentialBook.vo
{
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   
   public class ResidentialNeedVo extends ProductionNeedVo
   {
      
      private var _locked:Boolean;
      
      private var _levelToUnlock:int;
      
      private var _shopLocaleId:Number;
      
      private var _tooltip:String;
      
      private var _maxAmount:int = 0;
      
      private var _available:Boolean = false;
      
      public function ResidentialNeedVo(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:int = 0, param6:String = null)
      {
         super(param1,param1,param2,0,0,"");
         this._locked = param4;
         this._levelToUnlock = param5;
         this._tooltip = param6;
         this._available = param3;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get levelToUnlock() : int
      {
         return this._levelToUnlock;
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function get maxAmount() : int
      {
         return this._maxAmount;
      }
      
      public function set maxAmount(param1:int) : void
      {
         this._maxAmount = param1;
      }
      
      public function set available(param1:Boolean) : void
      {
         this._available = param1;
      }
      
      override public function get available() : Boolean
      {
         return this._available;
      }
   }
}

