package net.bigpoint.cityrama.model.server.vo.server
{
   public class CityWheelDTO
   {
      
      private var _lottery:Vector.<CityWheelRewardDTO>;
      
      private var _drawnRewards:Vector.<CityWheelRewardDTO>;
      
      private var _drawnbuffId:Number;
      
      private var _drawnbuff:ConfigCityWheelBuffDTO;
      
      public function CityWheelDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(_loc7_ || Boolean(_loc3_))
         {
            this._lottery = new Vector.<CityWheelRewardDTO>();
            if(_loc7_ || Boolean(_loc2_))
            {
               this._drawnRewards = new Vector.<CityWheelRewardDTO>();
               if(_loc7_)
               {
                  addr005b:
                  super();
               }
               var _loc4_:int = 0;
               var _loc5_:* = param1.l;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(!(_loc7_ || Boolean(param1)))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc4_,_loc5_);
                     if(_loc7_ || Boolean(this))
                     {
                        this._lottery.push(new CityWheelRewardDTO(_loc2_));
                     }
                     continue;
                  }
                  if(_loc7_ || Boolean(this))
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           _loc4_ = 0;
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              addr00e5:
                              _loc5_ = param1.r;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc5_,_loc4_));
                                 break loop0;
                              }
                              addr0121:
                              addr011a:
                           }
                           if(!_loc6_)
                           {
                              this._drawnbuffId = param1.b;
                           }
                        }
                        return;
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0121);
               }
               while(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc4_,_loc5_);
                  if(!_loc6_)
                  {
                     this._drawnRewards.push(new CityWheelRewardDTO(_loc3_));
                  }
                  §§goto(addr011a);
               }
               §§goto(addr0121);
            }
         }
         §§goto(addr005b);
      }
      
      public function get drawnRewards() : Vector.<CityWheelRewardDTO>
      {
         return this._drawnRewards;
      }
      
      public function get lottery() : Vector.<CityWheelRewardDTO>
      {
         return this._lottery;
      }
      
      public function get drawnbuffId() : Number
      {
         return this._drawnbuffId;
      }
      
      public function set drawnbuffId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._drawnbuffId = param1;
         }
      }
      
      public function get drawnbuff() : ConfigCityWheelBuffDTO
      {
         return this._drawnbuff;
      }
      
      public function set drawnbuff(param1:ConfigCityWheelBuffDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._drawnbuff = param1;
         }
      }
   }
}

