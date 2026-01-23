package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedDTO
   {
      
      private var _buffRangeX:int;
      
      private var _buffRangeY:int;
      
      private var _requiredGoods:Vector.<ConfigNeedStackDTO>;
      
      public function ConfigNeedDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._buffRangeX = param1.x;
         this._buffRangeY = param1.y;
         this._requiredGoods = new Vector.<ConfigNeedStackDTO>();
         for each(_loc2_ in param1.n)
         {
            this._requiredGoods.push(new ConfigNeedStackDTO(_loc2_));
         }
      }
      
      public function get requiredGoods() : Vector.<ConfigNeedStackDTO>
      {
         return this._requiredGoods;
      }
      
      public function get buffRangeY() : int
      {
         return this._buffRangeY;
      }
      
      public function get buffRangeX() : int
      {
         return this._buffRangeX;
      }
   }
}

