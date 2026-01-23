package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class GoodUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _data:ConfigGoodDTO;
      
      private var _productionBuildingLocaleIds:Vector.<String>;
      
      private var _consumerBuildingLocaleIds:Vector.<String>;
      
      private var _currentEventLocaleId:String;
      
      private var _locked:Boolean = false;
      
      public function GoodUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigGoodDTO, param4:String)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param2)))
         {
            this._data = param3;
            if(!(_loc6_ && Boolean(param2)))
            {
               this._currentEventLocaleId = param4;
               if(_loc5_ || Boolean(param3))
               {
                  this._productionBuildingLocaleIds = new Vector.<String>();
                  if(!_loc6_)
                  {
                     this._consumerBuildingLocaleIds = new Vector.<String>();
                     if(_loc5_ || Boolean(param3))
                     {
                        addr0097:
                        super(param1,param2,"");
                     }
                     §§goto(addr009e);
                  }
               }
            }
            §§goto(addr0097);
         }
         addr009e:
      }
      
      override public function get headerString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.goodType);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() == ServerTagConstants.GOOD_EVENT)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0044:
                     §§push(LocaUtils);
                     §§push("rcl.citysquarequests.");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this._currentEventLocaleId);
                     }
                     §§push("rcl.citysquarequests.");
                     if(_loc1_)
                     {
                        §§push(this._currentEventLocaleId);
                        if(_loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(".goods.goodname.");
                              if(_loc1_)
                              {
                                 addr00b2:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr0096:
                                    §§push(§§pop() + this.goodLocaleId);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00b1:
                                       §§push(§§pop() + ".capital");
                                    }
                                 }
                                 §§push(§§pop().getString(§§pop(),§§pop()));
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr00b2);
                  }
                  else
                  {
                     addr00c3:
                     §§push(LocaUtils);
                     §§push("rcl.goods.goodname");
                     §§push("rcl.goods.goodname.");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this.goodLocaleId);
                        if(_loc1_)
                        {
                           §§push(§§pop() + ".capital");
                        }
                     }
                     §§push(§§pop().getString(§§pop(),§§pop()));
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00c3);
            }
            addr00e1:
            return §§pop();
         }
         §§goto(addr0044);
      }
      
      public function get productionBuildingLocaleIds() : Vector.<String>
      {
         return this._productionBuildingLocaleIds;
      }
      
      public function get goodType() : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         var _loc1_:* = "";
         var _loc3_:int = 0;
         var _loc4_:* = this._data.tagConfigs;
         while(true)
         {
            loop0:
            for each(_loc2_ in _loc4_)
            {
               if(_loc7_)
               {
                  §§push(_loc2_.tagName);
                  loop1:
                  do
                  {
                     var _loc5_:* = §§pop();
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§push(ServerTagConstants.GOOD_SPECIAL);
                        if(!_loc6_)
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    addr011c:
                                    §§push(0);
                                    if(_loc6_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr01c3:
                                    §§push(3);
                                    if(_loc6_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 addr01e3:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(ServerTagConstants.GOOD_SPECIAL);
                                       if(_loc7_)
                                       {
                                          return §§pop();
                                       }
                                       addr0070:
                                       §§push(§§pop());
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          addr007f:
                                          _loc1_ = §§pop();
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr0096:
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             break loop1;
                                          }
                                          _loc1_ = §§pop();
                                          if(!(_loc7_ || Boolean(_loc3_)))
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                    case 1:
                                       §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr0070);
                                       }
                                       §§goto(addr007f);
                                    case 2:
                                       §§push(ServerTagConstants.GOOD_NORMAL);
                                       if(_loc6_)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr0096);
                                    case 3:
                                       continue;
                                 }
                                 continue loop0;
                              }
                              §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    addr0153:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          §§push(1);
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0196:
                                          §§push(2);
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.GOOD_NORMAL);
                                       if(_loc7_)
                                       {
                                          addr0184:
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr0196);
                                                }
                                                else
                                                {
                                                   §§goto(addr01c3);
                                                }
                                             }
                                             else
                                             {
                                                addr01bf:
                                                addr01bd:
                                                if(ServerTagConstants.GOOD_EVENT === _loc5_)
                                                {
                                                   §§goto(addr01c3);
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                }
                                                §§goto(addr01e3);
                                             }
                                             §§goto(addr01c3);
                                          }
                                          §§goto(addr01bf);
                                       }
                                       §§goto(addr01bd);
                                    }
                                    §§goto(addr01e3);
                                 }
                                 §§goto(addr01bf);
                              }
                              §§goto(addr01bd);
                              §§goto(addr01c3);
                           }
                           §§goto(addr0153);
                        }
                        §§goto(addr0184);
                     }
                     §§goto(addr011c);
                  }
                  while(§§push(ServerTagConstants.GOOD_EVENT), _loc6_ && Boolean(_loc2_));
                  
                  break;
               }
            }
            return _loc1_;
         }
         return §§pop();
      }
      
      public function get consumerBuildingLocaleIds() : Vector.<String>
      {
         return this._consumerBuildingLocaleIds;
      }
      
      public function get goodLocaleId() : String
      {
         return this._data.localeId;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._locked = param1;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
   }
}

