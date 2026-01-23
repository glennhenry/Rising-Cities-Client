package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   
   public class ImprovementBoosterpackVo extends BoosterpackVo
   {
      
      private var _currencyType:String = "CURR_VIRT";
      
      private var _orderID:Number;
      
      public function ImprovementBoosterpackVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get currencyType() : String
      {
         return this._currencyType;
      }
      
      public function set currencyType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currencyType = param1;
         }
      }
      
      public function get orderID() : Number
      {
         return this._orderID;
      }
      
      public function set orderID(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._orderID = param1;
         }
      }
   }
}

