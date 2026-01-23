package net.bigpoint.cityrama.model.cityWheel
{
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityWheelProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityWheelProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "CityWheelProxy";
      }
      
      private var _cp:CityProxy;
      
      private var _lastCollectedRewards:Vector.<RewardItemComponentVo>;
      
      public function CityWheelProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super(NAME);
         }
      }
      
      public function get possibleRewards() : Vector.<CityWheelRewardDTO>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.cityProxy);
            if(!_loc2_)
            {
               §§push(§§pop().city);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop().cityWheel);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0075:
                           return this.cityProxy.city.cityWheel.lottery;
                           addr0072:
                           addr006f:
                           addr006b:
                        }
                     }
                     return null;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0072);
            }
            §§goto(addr006f);
         }
         §§goto(addr006b);
      }
      
      public function get drawnBuff() : ConfigCityWheelBuffDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.cityProxy);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop().city);
               if(_loc2_)
               {
                  §§push(§§pop().cityWheel);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr006e:
                           return this.cityProxy.city.cityWheel.drawnbuff;
                           addr006b:
                           addr0068:
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006b);
            }
            §§goto(addr0068);
         }
         addr0072:
         return null;
      }
      
      public function get drawnRewards() : Vector.<CityWheelRewardDTO>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.cityProxy);
            if(_loc1_)
            {
               §§push(§§pop().city);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().cityWheel);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           addr0053:
                           return this.cityProxy.city.cityWheel.drawnRewards;
                           addr0050:
                           addr004d:
                        }
                     }
                     §§goto(addr0057);
                  }
                  §§goto(addr0053);
               }
               §§goto(addr0050);
            }
            §§goto(addr004d);
         }
         addr0057:
         return null;
      }
      
      public function get rewardsReadyToCollect() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.cityProxy);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop().city);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop().cityWheel);
                  if(!_loc1_)
                  {
                     §§push(§§pop() == null);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(!§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0066);
                        }
                        §§goto(addr00c0);
                     }
                     addr0066:
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(!_loc1_)
                              {
                                 addr007b:
                                 §§push(this.cityProxy);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop().city);
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr009c:
                                       §§push(§§pop().cityWheel);
                                       if(!_loc1_)
                                       {
                                          addr00a4:
                                          §§push(§§pop().drawnRewards == null);
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             addr00c0:
                                             §§push(!§§pop());
                                             if(_loc2_)
                                             {
                                                §§goto(addr00c6);
                                             }
                                          }
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr00c0);
                        }
                        addr00c6:
                        var _temp_10:* = §§pop();
                        §§goto(addr00c7);
                     }
                     addr00c7:
                     §§push(_temp_10);
                     if(_temp_10)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr00d8:
                           §§pop();
                           addr00e3:
                           addr00e0:
                           addr00dd:
                           addr00d9:
                           return this.cityProxy.city.cityWheel.drawnRewards.length > 0;
                        }
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr009c);
            }
            §§goto(addr00dd);
         }
         §§goto(addr007b);
      }
      
      private function get cityProxy() : CityProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._cp);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._cp = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
                  }
               }
               addr0055:
               return this._cp;
            }
         }
         §§goto(addr0055);
      }
      
      public function get lastCollectedRewards() : Vector.<RewardItemComponentVo>
      {
         return this._lastCollectedRewards;
      }
      
      public function set lastCollectedRewards(param1:Vector.<RewardItemComponentVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._lastCollectedRewards = param1;
         }
      }
   }
}

