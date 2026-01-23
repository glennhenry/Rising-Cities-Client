package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   
   public class GoodRequireVo
   {
      
      private var _goodObjectVo:GoodObjectVo;
      
      private var _requiredAmount:int;
      
      public function GoodRequireVo(param1:GoodObjectVo, param2:int)
      {
         super();
         this._goodObjectVo = param1;
         this._requiredAmount = param2;
      }
      
      public function get goodObjectVo() : GoodObjectVo
      {
         return this._goodObjectVo;
      }
      
      public function get requiredAmount() : int
      {
         return Math.abs(this._requiredAmount);
      }
   }
}

