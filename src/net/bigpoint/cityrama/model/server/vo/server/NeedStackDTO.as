package net.bigpoint.cityrama.model.server.vo.server
{
   public class NeedStackDTO
   {
      
      private var _configId:Number;
      
      private var _amount:Number;
      
      public function NeedStackDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               this._configId = param1.cid;
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr004b:
                  this._amount = param1.a;
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._amount = param1;
         }
      }
   }
}

