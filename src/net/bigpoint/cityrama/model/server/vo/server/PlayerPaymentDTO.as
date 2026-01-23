package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class PlayerPaymentDTO
   {
      
      private var _purchasedPaymentPacks:Vector.<PlayerPaymentPackDTO>;
      
      private var _upsellPaymentPack:PlayerPaymentUpsellDTO;
      
      public function PlayerPaymentDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(_loc5_ || Boolean(_loc2_))
         {
            super();
            if(_loc5_)
            {
               this._purchasedPaymentPacks = new Vector.<PlayerPaymentPackDTO>();
            }
         }
         for each(_loc2_ in param1.pp)
         {
            if(_loc5_)
            {
               this._purchasedPaymentPacks.push(new PlayerPaymentPackDTO(_loc2_));
            }
         }
         if(_loc5_)
         {
            ConfigFactory.updatePlayerPayment(this);
            if(_loc5_)
            {
               §§goto(addr00a3);
            }
            §§goto(addr00ba);
         }
         addr00a3:
         if(param1.up)
         {
            if(_loc5_ || Boolean(param1))
            {
               addr00ba:
               this._upsellPaymentPack = new PlayerPaymentUpsellDTO(param1.up);
            }
         }
      }
      
      public function get purchasedPaymentPacks() : Vector.<PlayerPaymentPackDTO>
      {
         return this._purchasedPaymentPacks;
      }
      
      public function set purchasedPaymentPacks(param1:Vector.<PlayerPaymentPackDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._purchasedPaymentPacks = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               ConfigFactory.updatePlayerPayment(this);
            }
         }
      }
      
      public function get upsellPaymentPack() : PlayerPaymentUpsellDTO
      {
         return this._upsellPaymentPack;
      }
      
      public function set upsellPaymentPack(param1:PlayerPaymentUpsellDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._upsellPaymentPack = param1;
         }
      }
   }
}

