package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedDTO
   {
      
      private var _buffRangeX:int;
      
      private var _buffRangeY:int;
      
      private var _requiredGoods:Vector.<ConfigNeedStackDTO>;
      
      public function ConfigNeedDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            super();
            if(_loc5_ || _loc3_)
            {
               this._buffRangeX = param1.x;
               if(_loc5_)
               {
                  this._buffRangeY = param1.y;
                  §§goto(addr0040);
               }
               §§goto(addr005b);
            }
         }
         addr0040:
         if(!_loc6_)
         {
            addr005b:
            this._requiredGoods = new Vector.<ConfigNeedStackDTO>();
         }
         for each(_loc2_ in param1.n)
         {
            if(_loc5_ || Boolean(_loc2_))
            {
               this._requiredGoods.push(new ConfigNeedStackDTO(_loc2_));
            }
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

