package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNewsscreenSlideDTO
   {
      
      private var _gfxId:int;
      
      private var _locaId:String;
      
      private var _linkType:String;
      
      private var _linkValue:String;
      
      private var _orderId:int;
      
      public function ConfigNewsscreenSlideDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this._gfxId = int(param1.g);
               if(_loc2_ || _loc3_)
               {
                  this._orderId = int(param1.o);
                  if(_loc2_ || Boolean(this))
                  {
                     this._locaId = String(param1.l);
                     addr0062:
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr008a);
                     }
                     §§goto(addr009e);
                  }
                  addr008a:
                  this._linkType = String(param1.t);
                  if(!_loc3_)
                  {
                     addr009e:
                     this._linkValue = String(param1.v);
                  }
                  return;
               }
            }
         }
         §§goto(addr0062);
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get linkType() : String
      {
         return this._linkType;
      }
      
      public function get linkValue() : String
      {
         return this._linkValue;
      }
      
      public function get orderId() : int
      {
         return this._orderId;
      }
   }
}

