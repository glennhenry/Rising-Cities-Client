package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   
   public class GoodRequireVo
   {
      
      private var _goodObjectVo:GoodObjectVo;
      
      private var _requiredAmount:int;
      
      public function GoodRequireVo(param1:GoodObjectVo, param2:int)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(_loc4_ || _loc3_)
            {
               this._goodObjectVo = param1;
               if(_loc4_)
               {
                  addr0043:
                  this._requiredAmount = param2;
               }
            }
            return;
         }
         §§goto(addr0043);
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

