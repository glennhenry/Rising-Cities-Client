package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class PlayerPaymentUpsellDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _startTime:Number;
      
      private var _duration:Number;
      
      public function PlayerPaymentUpsellDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._type = param1.c;
         this._startTime = param1.st;
         this._duration = param1.d;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function get discount() : Number
      {
         switch(this.type)
         {
            case ServerTagConstants.PAYMENT_UPSELL:
               return 0.2;
            case ServerTagConstants.PAYMENT_REACTIVATION:
               return 0.3;
            case ServerTagConstants.PAYMENT_NON_PAY:
            case ServerTagConstants.PAYMENT_NEW_NON_PAY:
               return 0.6;
            default:
               return 0;
         }
      }
   }
}

