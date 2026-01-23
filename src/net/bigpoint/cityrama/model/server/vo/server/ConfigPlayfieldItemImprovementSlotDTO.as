package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPlayfieldItemImprovementSlotDTO
   {
      
      private var _id:Number;
      
      private var _orderId:int;
      
      public function ConfigPlayfieldItemImprovementSlotDTO(param1:Object)
      {
         super();
         this._id = param1.sid;
         this._orderId = param1.oid;
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

