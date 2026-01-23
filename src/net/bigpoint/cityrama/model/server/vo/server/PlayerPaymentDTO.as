package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class PlayerPaymentDTO
   {
      
      private var _purchasedPaymentPacks:Vector.<PlayerPaymentPackDTO>;
      
      private var _upsellPaymentPack:PlayerPaymentUpsellDTO;
      
      public function PlayerPaymentDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._purchasedPaymentPacks = new Vector.<PlayerPaymentPackDTO>();
         for each(_loc2_ in param1.pp)
         {
            this._purchasedPaymentPacks.push(new PlayerPaymentPackDTO(_loc2_));
         }
         ConfigFactory.updatePlayerPayment(this);
         if(param1.up)
         {
            this._upsellPaymentPack = new PlayerPaymentUpsellDTO(param1.up);
         }
      }
      
      public function get purchasedPaymentPacks() : Vector.<PlayerPaymentPackDTO>
      {
         return this._purchasedPaymentPacks;
      }
      
      public function set purchasedPaymentPacks(param1:Vector.<PlayerPaymentPackDTO>) : void
      {
         this._purchasedPaymentPacks = param1;
         ConfigFactory.updatePlayerPayment(this);
      }
      
      public function get upsellPaymentPack() : PlayerPaymentUpsellDTO
      {
         return this._upsellPaymentPack;
      }
      
      public function set upsellPaymentPack(param1:PlayerPaymentUpsellDTO) : void
      {
         this._upsellPaymentPack = param1;
      }
   }
}

