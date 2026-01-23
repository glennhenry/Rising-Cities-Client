package net.bigpoint.cityrama.model.improvement.vo
{
   public class InventoryImprovementVo
   {
      
      private var _improvementVo:ImprovementVo;
      
      private var _stockAmount:int;
      
      public function InventoryImprovementVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._improvementVo = param1;
         }
      }
      
      public function get stockAmount() : int
      {
         return this._stockAmount;
      }
      
      public function set stockAmount(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._stockAmount = param1;
         }
      }
   }
}

