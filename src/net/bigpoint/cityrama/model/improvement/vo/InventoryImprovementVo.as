package net.bigpoint.cityrama.model.improvement.vo
{
   public class InventoryImprovementVo
   {
      
      private var _improvementVo:ImprovementVo;
      
      private var _stockAmount:int;
      
      public function InventoryImprovementVo()
      {
         super();
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         this._improvementVo = param1;
      }
      
      public function get stockAmount() : int
      {
         return this._stockAmount;
      }
      
      public function set stockAmount(param1:int) : void
      {
         this._stockAmount = param1;
      }
   }
}

