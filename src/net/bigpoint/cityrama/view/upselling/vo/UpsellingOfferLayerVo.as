package net.bigpoint.cityrama.view.upselling.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   
   public class UpsellingOfferLayerVo
   {
      
      private var _packConfig:ConfigPaymentPackDTO;
      
      private var _currentUpsell:PlayerPaymentUpsellDTO;
      
      public function UpsellingOfferLayerVo()
      {
         super();
      }
      
      public function get packConfig() : ConfigPaymentPackDTO
      {
         return this._packConfig;
      }
      
      public function set packConfig(param1:ConfigPaymentPackDTO) : void
      {
         this._packConfig = param1;
      }
      
      public function get currentUpsell() : PlayerPaymentUpsellDTO
      {
         return this._currentUpsell;
      }
      
      public function set currentUpsell(param1:PlayerPaymentUpsellDTO) : void
      {
         this._currentUpsell = param1;
      }
      
      public function get locaID() : String
      {
         var _loc1_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:ConfigTagDTO = null;
         for each(_loc1_ in this.packConfig.upsellPackages)
         {
            if(_loc1_.key == this.currentUpsell.type)
            {
               return _loc1_.localeId;
            }
         }
         for each(_loc2_ in this.packConfig.configTags)
         {
            switch(_loc2_.tagName)
            {
               case ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK:
                  return "realCurrency";
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
                  return "pack";
            }
         }
         return "";
      }
   }
}

