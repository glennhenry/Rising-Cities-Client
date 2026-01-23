package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPaymentPackUpsellingDTO
   {
      
      private var _id:int;
      
      private var _category:String;
      
      private var _key:String;
      
      private var _gfxId:int;
      
      private var _localeId:String;
      
      public function ConfigPaymentPackUpsellingDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this._id = param1.id;
               if(!_loc3_)
               {
                  addr0044:
                  this._category = param1.c;
                  if(_loc2_)
                  {
                     this._key = param1.k;
                     if(!_loc3_)
                     {
                        addr006d:
                        this._gfxId = param1.gf;
                        if(_loc2_ || Boolean(param1))
                        {
                           addr0083:
                           this._localeId = param1.fl;
                        }
                     }
                     return;
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0083);
            }
         }
         §§goto(addr0044);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
   }
}

