package net.bigpoint.cityrama.model.evoucher.vo
{
   public class EvoucherResultVo
   {
      
      private var _success:Boolean;
      
      private var _localisedMessage:String;
      
      private var _paymentURL:String;
      
      public function EvoucherResultVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this._success = param1.success;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0042);
               }
               §§goto(addr0051);
            }
            addr0042:
            this._localisedMessage = param1.message;
            if(_loc3_)
            {
               addr0051:
               this._paymentURL = param1.paymentURL;
            }
            §§goto(addr005b);
         }
         addr005b:
      }
      
      public function get localisedMessage() : String
      {
         return this._localisedMessage;
      }
   }
}

