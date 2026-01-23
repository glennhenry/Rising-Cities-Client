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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               addr002b:
               this._configGood = param1;
               if(_loc2_)
               {
                  §§goto(addr0035);
               }
               §§goto(addr0049);
            }
            addr0035:
            this._producer = new Vector.<ConfigPlayfieldItemDTO>();
            if(!_loc3_)
            {
               addr0049:
               this._consumer = new Vector.<ConfigPlayfieldItemDTO>();
            }
            return;
         }
         §§goto(addr002b);
      }
      
      private static function sortConsumerOrProducerVector(param1:ConfigPlayfieldItemDTO, param2:ConfigPlayfieldItemDTO) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1.localeId);
            if(!_loc4_)
            {
               §§push(param2.localeId);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr008b);
                     }
                  }
                  else
                  {
                     addr0072:
                     addr006e:
                     if(param1.localeId < param2.localeId)
                     {
                        if(_loc3_ || Boolean(param2))
                        {
                           addr0083:
                           §§push(-1);
                           if(!_loc4_)
                           {
                              addr008b:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr008c:
                           return 0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0072);
            }
            §§goto(addr006e);
         }
         §§goto(addr0083);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._playerStock = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._producer = param1;
            if(!_loc3_)
            {
               addr0029:
               this._producer.sort(sortConsumerOrProducerVector);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function get consumer() : Vector.<ConfigPlayfieldItemDTO>
      {
         return this._consumer;
      }
      
      public function set consumer(param1:Vector.<ConfigPlayfieldItemDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._consumer = param1;
            if(_loc2_)
            {
               addr0021:
               this._consumer.sort(sortConsumerOrProducerVector);
            }
            return;
         }
         §§goto(addr0021);
      }
      
      public function get groupType() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigTagDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._configGood.tagConfigs;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               §§push(_loc1_.tagName);
               if(!_loc5_)
               {
                  §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                  if(!_loc5_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc4_)
                     {
                        var _temp_1:* = §§pop();
                        §§push(_temp_1);
                        if(!_temp_1)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              addr0072:
                              §§pop();
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(_loc1_.tagName);
                              if(!(_loc4_ || Boolean(_loc1_)))
                              {
                                 return §§pop();
                              }
                              addr00a7:
                              addr00a6:
                              addr00a1:
                              if(§§pop() == ServerTagConstants.GOOD_NORMAL)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00a1);
            }
            return null;
         }
         §§goto(addr00bd);
         §§push(_loc1_.tagName);
      }
      
      public function get isEventGood() : Boolean
      {
         return this.config.isEventGood;
      }
   }
}

