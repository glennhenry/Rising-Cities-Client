package net.bigpoint.cityrama.model.good.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   
   public class GoodObjectVo
   {
      
      private var _configGood:ConfigGoodDTO;
      
      private var _playerStock:int = 0;
      
      private var _producer:Vector.<ConfigPlayfieldItemDTO>;
      
      private var _consumer:Vector.<ConfigPlayfieldItemDTO>;
      
      public function GoodObjectVo(param1:ConfigGoodDTO)
      {
         super();
         this._configGood = param1;
         this._producer = new Vector.<ConfigPlayfieldItemDTO>();
         this._consumer = new Vector.<ConfigPlayfieldItemDTO>();
      }
      
      private static function sortConsumerOrProducerVector(param1:ConfigPlayfieldItemDTO, param2:ConfigPlayfieldItemDTO) : int
      {
         if(param1.localeId > param2.localeId)
         {
            return 1;
         }
         if(param1.localeId < param2.localeId)
         {
            return -1;
         }
         return 0;
      }
      
      public function get config() : ConfigGoodDTO
      {
         return this._configGood;
      }
      
      public function get playerStock() : int
      {
         return this._playerStock;
      }
      
      public function get gfxId() : int
      {
         return this._configGood.gfxId;
      }
      
      public function get localeId() : String
      {
         return this._configGood.localeId;
      }
      
      public function get userlevelIdRequired() : int
      {
         return this._configGood.levelId;
      }
      
      public function set playerStock(param1:int) : void
      {
         this._playerStock = param1;
      }
      
      public function get userLevelRequired() : int
      {
         return this._configGood.userLevelRequired;
      }
      
      public function get producer() : Vector.<ConfigPlayfieldItemDTO>
      {
         return this._producer;
      }
      
      public function set producer(param1:Vector.<ConfigPlayfieldItemDTO>) : void
      {
         this._producer = param1;
         this._producer.sort(sortConsumerOrProducerVector);
      }
      
      public function get consumer() : Vector.<ConfigPlayfieldItemDTO>
      {
         return this._consumer;
      }
      
      public function set consumer(param1:Vector.<ConfigPlayfieldItemDTO>) : void
      {
         this._consumer = param1;
         this._consumer.sort(sortConsumerOrProducerVector);
      }
      
      public function get groupType() : String
      {
         var _loc1_:ConfigTagDTO = null;
         for each(_loc1_ in this._configGood.tagConfigs)
         {
            if(_loc1_.tagName == ServerTagConstants.GOOD_CONSTRUCTION || _loc1_.tagName == ServerTagConstants.GOOD_NORMAL)
            {
               return _loc1_.tagName;
            }
         }
         return null;
      }
      
      public function get isEventGood() : Boolean
      {
         return this.config.isEventGood;
      }
   }
}

