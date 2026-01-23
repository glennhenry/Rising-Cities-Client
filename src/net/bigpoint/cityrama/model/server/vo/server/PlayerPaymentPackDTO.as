package net.bigpoint.cityrama.model.server.vo.server
{
   public class PlayerPaymentPackDTO
   {
      
      private var _id:Number;
      
      private var _purchaseDate:Number;
      
      private var _initTime:Number;
      
      private var _used:Boolean;
      
      private var _showLayer:Boolean = false;
      
      private var _config:ConfigPaymentPackDTO;
      
      public function PlayerPaymentPackDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               this._id = param1.id;
               if(!(_loc2_ && _loc3_))
               {
                  this._purchaseDate = param1.pd;
                  if(_loc3_)
                  {
                     addr0065:
                     this._initTime = param1.it;
                     if(_loc3_ || _loc2_)
                     {
                        this._used = param1.u;
                        if(!_loc2_)
                        {
                           addr008b:
                           this._showLayer = param1.sl;
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr008b);
               }
               addr0094:
               return;
            }
         }
         §§goto(addr0065);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get purchaseDate() : Number
      {
         return this._purchaseDate;
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function get used() : Boolean
      {
         return this._used;
      }
      
      public function get showLayer() : Boolean
      {
         return this._showLayer;
      }
      
      public function get config() : ConfigPaymentPackDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPaymentPackDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._config = param1;
         }
      }
      
      public function set showLayer(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._showLayer = param1;
         }
      }
   }
}

