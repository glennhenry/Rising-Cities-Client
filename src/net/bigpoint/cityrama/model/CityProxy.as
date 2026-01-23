package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityProxy extends Proxy
   {
      
      public static const NAME:String = "CityProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "CityProxy";
      }
      
      private var _city:CityDTO;
      
      public function CityProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
      
      private static function buildWheelModel(param1:CityWheelDTO, param2:GameConfigProxy) : CityWheelDTO
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:CityWheelRewardDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = param1.lottery;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_)
            {
               break;
            }
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc6_)
               {
                  addConfigsToRewardDTOs(_loc3_,param2);
               }
               continue;
            }
            if(_loc7_)
            {
               if(_loc7_)
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     _loc4_ = 0;
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc5_ = param1.drawnRewards;
                        while(true)
                        {
                           §§push(§§hasnext(_loc5_,_loc4_));
                           break loop0;
                        }
                        addr00c3:
                        addr00bc:
                     }
                     addr00c5:
                     if(!_loc6_)
                     {
                        param1.drawnbuff = param2.config.configCityWheelDTO.wheelBuffs[param1.drawnbuffId];
                     }
                  }
                  return param1;
               }
               §§goto(addr00c5);
            }
            §§goto(addr00c3);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc4_,_loc5_);
            if(_loc7_)
            {
               addConfigsToRewardDTOs(_loc3_,param2);
            }
            §§goto(addr00bc);
         }
         §§goto(addr00c3);
      }
      
      private static function addConfigsToRewardDTOs(param1:CityWheelRewardDTO, param2:GameConfigProxy) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            if(param2.config.tags[param1.rewardTypeTagId] as ConfigTagDTO != null)
            {
               if(_loc4_ || Boolean(_loc3_))
               {
                  param1.rewardType = (param2.config.tags[param1.rewardTypeTagId] as ConfigTagDTO).tagName;
                  if(_loc5_ && Boolean(param2))
                  {
                  }
               }
            }
            else
            {
               param1.rewardType = ServerTagConstants.WHEEL_REWARD_JACKPOT;
            }
         }
         var _loc3_:* = param1.type;
         if(_loc4_)
         {
            §§push(ServerOutputConstants.ASSIST);
            if(_loc4_ || Boolean(_loc3_))
            {
               if(§§pop() === _loc3_)
               {
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     §§push(0);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                     }
                  }
                  else
                  {
                     addr0244:
                     §§push(4);
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(ServerOutputConstants.GOOD);
                  if(!_loc5_)
                  {
                     if(§§pop() === _loc3_)
                     {
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr025b:
                           §§push(5);
                           if(_loc5_ && Boolean(param2))
                           {
                           }
                        }
                        §§goto(addr027b);
                     }
                     else
                     {
                        §§push(ServerOutputConstants.IMPROVEMENT);
                        if(_loc4_)
                        {
                           if(§§pop() === _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 addr01db:
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr025b);
                              }
                              §§goto(addr027b);
                           }
                           else
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(_loc4_)
                              {
                                 addr01f3:
                                 if(§§pop() === _loc3_)
                                 {
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr025b);
                                    }
                                    §§goto(addr027b);
                                 }
                                 else
                                 {
                                    §§push(ServerOutputConstants.PERMISSION);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       addr0226:
                                       if(§§pop() === _loc3_)
                                       {
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             §§goto(addr0244);
                                          }
                                          else
                                          {
                                             §§goto(addr025b);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0256);
                                       }
                                       §§goto(addr025b);
                                    }
                                    §§goto(addr0256);
                                 }
                              }
                              §§goto(addr0226);
                           }
                        }
                        §§goto(addr0256);
                     }
                  }
                  addr0256:
                  if(ServerOutputConstants.TAG === _loc3_)
                  {
                     §§goto(addr025b);
                  }
                  else
                  {
                     §§push(6);
                  }
                  §§goto(addr027b);
               }
               addr027b:
               switch(§§pop())
               {
                  case 0:
                     param1.assistConfig = param2.config.assists[param1.configId];
                     if(_loc4_ || Boolean(param2))
                     {
                     }
                     break;
                  case 1:
                     param1.goodConfig = param2.config.goods[param1.configId];
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                     break;
                  case 2:
                     param1.improvementConfig = param2.config.improvements[param1.configId];
                     if(_loc4_)
                     {
                     }
                     break;
                  case 3:
                     param1.resourceConfig = param2.config.resources[param1.configId];
                     if(_loc4_ || CityProxy)
                     {
                     }
                     break;
                  case 4:
                     param1.playfieldItemConfig = getConfigPlayfieldItemByPermissionId(param1.configId,param2);
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                     break;
                  case 5:
                     param1.tagConfig = param2.config.tags[param1.configId];
                     if(_loc5_ && Boolean(param1))
                     {
                     }
               }
               return;
            }
            §§goto(addr01f3);
         }
         §§goto(addr01db);
      }
      
      private static function getConfigPlayfieldItemByPermissionId(param1:Number, param2:GameConfigProxy) : ConfigPlayfieldItemDTO
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemDTO = null;
         if(!(_loc7_ && Boolean(param2)))
         {
            if(param2)
            {
               §§goto(addr002b);
            }
            return null;
         }
         addr002b:
         var _loc4_:int = 0;
         var _loc5_:* = param2.config.items;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_)
               {
                  continue;
               }
               §§push(_loc3_.permissionConfigId == param1);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc6_ || CityProxy)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(_loc3_.isUpgrade);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           addr00a7:
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr00a7);
            }
         }
         return _loc3_;
      }
      
      public function get city() : CityDTO
      {
         return this._city;
      }
      
      public function set city(param1:CityDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._city))
            {
               if(_loc2_ || _loc2_)
               {
                  this._city = param1;
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this._city);
                     if(!_loc3_)
                     {
                        if(§§pop().cityWheel != null)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0079:
                              this.updateWheel(this._city.cityWheel);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 sendNotification(ApplicationNotificationConstants.CITY_DATA_CHANGED);
                                 addr0092:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b6:
                                    addr00ba:
                                    if(this._city.cinema)
                                    {
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          addr00ce:
                                          sendNotification(ApplicationNotificationConstants.CINEMA_DATA_CHANGED);
                                       }
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr0079);
            }
         }
         addr00d8:
      }
      
      public function updateCinema(param1:CinemaDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(this._city.cinema,param1))
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._city.cinema = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     sendNotification(ApplicationNotificationConstants.CINEMA_DATA_CHANGED);
                  }
               }
            }
         }
      }
      
      public function updateWheel(param1:CityWheelDTO) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:CityWheelDTO = this.city.cityWheel;
         if(!_loc3_)
         {
            §§push(this.city);
            if(_loc4_)
            {
               §§pop().cityWheel = buildWheelModel(param1,facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push(RandomUtilities.isEqual(_loc2_,this.city.cityWheel));
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           addr0074:
                           §§push(this.city);
                           if(_loc4_ || Boolean(param1))
                           {
                              addr0094:
                              §§push(§§pop().cityWheel);
                              if(_loc4_ || Boolean(param1))
                              {
                                 §§push(Boolean(§§pop().drawnRewards));
                                 if(_loc4_ || Boolean(this))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(_loc4_)
                                       {
                                          addr00c2:
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             §§goto(addr00d6);
                                          }
                                          §§goto(addr00f5);
                                       }
                                    }
                                    addr00d6:
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00c2);
                              }
                              addr00d0:
                              §§goto(addr00cd);
                           }
                           addr00cd:
                           if(Boolean(this.city.cityWheel.drawnRewards.length))
                           {
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 addr00f5:
                                 sendNotification(ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              sendNotification(ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED);
                           }
                           §§goto(addr011b);
                        }
                        §§goto(addr00f5);
                     }
                     addr011b:
                     return;
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00f5);
            }
            §§goto(addr0094);
         }
         §§goto(addr0074);
      }
   }
}

