package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   
   public class ImprovementBoosterpackVo extends BoosterpackVo
   {
      
      private var _currencyType:String = "CURR_VIRT";
      
      private var _orderID:Number;
      
      public function ImprovementBoosterpackVo()
      {
         super();
      }
      
      public function get currencyType() : String
      {
         return this._currencyType;
      }
      
      public function set currencyType(param1:String) : void
      {
         this._currencyType = param1;
      }
      
      public function get orderID() : Number
      {
         return this._orderID;
      }
      
      public function set orderID(param1:Number) : void
      {
         this._orderID = param1;
      }
   }
}

