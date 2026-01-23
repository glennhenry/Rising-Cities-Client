package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPlayfieldItemImprovementSlotDTO
   {
      
      private var _id:Number;
      
      private var _orderId:int;
      
      public function ConfigPlayfieldItemImprovementSlotDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr003d);
            }
            §§goto(addr0054);
         }
         addr003d:
         this._id = param1.sid;
         if(_loc3_ || _loc2_)
         {
            addr0054:
            this._orderId = param1.oid;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get orderId() : int
      {
         return this._orderId;
      }
   }
}

