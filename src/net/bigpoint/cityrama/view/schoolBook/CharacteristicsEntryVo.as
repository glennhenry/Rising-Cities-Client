package net.bigpoint.cityrama.view.schoolBook
{
   public class CharacteristicsEntryVo
   {
      
      private var _localeId:String;
      
      private var _amountSum:Number;
      
      private var _gender:String;
      
      public function CharacteristicsEntryVo(param1:String, param2:Number, param3:String)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            super();
            if(_loc4_ || Boolean(param2))
            {
               this._localeId = param1;
               if(!(_loc5_ && Boolean(this)))
               {
                  addr0060:
                  this._amountSum = param2;
                  if(_loc4_ || Boolean(param3))
                  {
                     addr0073:
                     this._gender = param3;
                  }
               }
               return;
            }
            §§goto(addr0073);
         }
         §§goto(addr0060);
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get amountSum() : Number
      {
         return this._amountSum;
      }
      
      public function set amountSum(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._amountSum = param1;
         }
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
   }
}

