package net.bigpoint.cityrama.model.architecturalBook
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.core.FlexGlobals;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintSecuritygradeVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.IBlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPlayfieldRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ArchitecturalBookProxy extends Proxy
   {
      
      public static const NAME:String = "ArchitecturalBookProxy";
      
      public static const ITEM_LIB_RANGE:int = 5;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ArchitecturalBookProxy";
         if(!_loc1_)
         {
            addr0022:
            ITEM_LIB_RANGE = 5;
         }
         return;
      }
      §§goto(addr0022);
      
      private var _verifiedBlueprintVo:VerifiedBlueprintVo;
      
      private var _viewedArchitectureCategory:String;
      
      private var _greenColor:uint;
      
      private var _redColor:uint;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _restrictionProxy:RestrictionProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function ArchitecturalBookProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               §§goto(addr0027);
            }
            §§goto(addr009a);
         }
         addr0027:
         this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         if(!(_loc4_ && Boolean(this)))
         {
            this._playerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
            if(_loc5_ || _loc3_)
            {
               this._goodStockProxy = PlayerGoodsStockProxy(facade.retrieveProxy(PlayerGoodsStockProxy.NAME));
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr009a:
                  this._restrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
                  if(!_loc4_)
                  {
                     this._serverStorageProxy = ServerStorageProxy(facade.retrieveProxy(ServerStorageProxy.NAME));
                     if(!_loc4_)
                     {
                        §§goto(addr00d1);
                     }
                  }
               }
               §§goto(addr00e9);
            }
            §§goto(addr009a);
         }
         addr00d1:
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(!_loc4_)
         {
            addr00e9:
            this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         var _loc3_:CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration(".newValueColorFormats");
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            this._redColor = _loc3_.getStyle("red");
            if(_loc5_)
            {
               this._greenColor = _loc3_.getStyle("green");
               if(!_loc4_)
               {
                  addr0150:
                  this._verifiedBlueprintVo = new VerifiedBlueprintVo();
               }
               §§goto(addr015b);
            }
            §§goto(addr0150);
         }
         addr015b:
      }
      
      private static function sortBlueprintsByLevel(param1:IBlueprintVo, param2:IBlueprintVo) : int
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:Number = param1.unlockLvl;
         var _loc4_:Number = param2.unlockLvl;
         §§push(param1.price);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(param2.price);
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc3_);
            if(_loc7_ || Boolean(param2))
            {
               §§push(_loc4_);
               if(!_loc8_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc8_)
                     {
                        addr006f:
                        §§push(1);
                        if(_loc7_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr011e:
                        addr0122:
                        addr0120:
                        if(_loc5_ < _loc6_)
                        {
                           if(_loc7_)
                           {
                              addr012c:
                              §§push(-1);
                              if(!_loc8_)
                              {
                                 §§goto(addr0134);
                              }
                           }
                           else
                           {
                              addr0135:
                              §§push(0);
                           }
                           §§goto(addr0137);
                        }
                        §§goto(addr0135);
                     }
                     §§goto(addr0134);
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           addr00a8:
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc8_ && Boolean(param2)))
                              {
                                 §§push(-1);
                                 if(!_loc8_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr010f);
                              }
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(!_loc8_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr0120);
                           }
                           §§goto(addr0135);
                        }
                        addr00e1:
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              §§push(1);
                              if(!(_loc8_ && ArchitecturalBookProxy))
                              {
                                 addr010f:
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr012c);
                           }
                           addr0134:
                           return §§pop();
                        }
                        §§goto(addr011e);
                        addr0137:
                        return §§pop();
                     }
                  }
                  §§goto(addr0120);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0120);
         }
         §§goto(addr006f);
      }
      
      private static function isFirstLevelTownHall(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.tags.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
            {
               if(!_loc3_)
               {
                  §§push(param1.isUpgrade);
                  if(!(_loc3_ && ArchitecturalBookProxy))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || ArchitecturalBookProxy)
                        {
                           §§push(true);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0063:
                           §§push(false);
                        }
                        §§goto(addr0064);
                     }
                     §§goto(addr0063);
                  }
                  addr0064:
                  return §§pop();
               }
            }
         }
         §§goto(addr0063);
      }
      
      public static function sortResidents(param1:ResidentVo, param2:ResidentVo) : int
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1.type);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param2.type);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || Boolean(param2))
         {
            §§push(param1.minUserLevel);
            if(_loc6_)
            {
               §§push(param2.minUserLevel);
               if(_loc6_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(-1);
                        if(_loc6_ || Boolean(param2))
                        {
                           return §§pop();
                        }
                        §§goto(addr017c);
                     }
                     else
                     {
                        addr0198:
                        addr019f:
                        addr019a:
                        if(_loc4_ == ServerResConst.RESOURCE_ACADEMICS)
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(1);
                              if(!_loc5_)
                              {
                                 §§goto(addr01b9);
                              }
                           }
                           else
                           {
                              addr01ba:
                              §§push(0);
                           }
                           §§goto(addr01bc);
                        }
                        §§goto(addr01ba);
                     }
                  }
                  else
                  {
                     §§push(param1.minUserLevel);
                     if(_loc6_ || ArchitecturalBookProxy)
                     {
                        §§goto(addr008d);
                     }
                  }
                  addr01b9:
                  return §§pop();
               }
               addr008d:
               §§goto(addr0089);
            }
            addr0089:
            if(§§pop() > param2.minUserLevel)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(1);
                  if(_loc6_ || Boolean(param2))
                  {
                     return §§pop();
                  }
                  §§goto(addr00fd);
               }
               else
               {
                  addr0129:
                  §§push(1);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
            }
            else
            {
               addr00be:
               §§push(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  §§push(ServerResConst.RESOURCE_WORKERS);
                  if(_loc6_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(-1);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr00fd:
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr0198);
                        }
                        §§goto(addr01bc);
                     }
                     else
                     {
                        §§push(_loc4_);
                        if(_loc6_ || Boolean(param2))
                        {
                           §§push(ServerResConst.RESOURCE_WORKERS);
                           if(_loc6_)
                           {
                              addr011f:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr0129);
                                 }
                                 else
                                 {
                                    addr0140:
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       addr0147:
                                       §§push(ServerResConst.RESOURCE_ACADEMICS);
                                       if(_loc6_ || Boolean(param2))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(-1);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr017c:
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01ba);
                                             }
                                             §§goto(addr01bc);
                                          }
                                          else
                                          {
                                             §§goto(addr0198);
                                          }
                                       }
                                       §§goto(addr019f);
                                    }
                                    §§goto(addr019a);
                                 }
                              }
                              §§goto(addr0140);
                           }
                           §§goto(addr019f);
                        }
                        §§goto(addr0147);
                     }
                  }
                  §§goto(addr011f);
               }
               §§goto(addr019a);
            }
            addr01bc:
            return §§pop();
         }
         §§goto(addr00be);
      }
      
      public static function getItemIconLibByConfigPlayfieldItemDTO(param1:ConfigPlayfieldItemDTO) : String
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:uint = param1.gfxId;
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(uint(§§pop() % ITEM_LIB_RANGE));
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(_loc8_ || Boolean(param1))
         {
            §§push(uint(§§pop() / ITEM_LIB_RANGE));
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(_loc8_ || ArchitecturalBookProxy)
            {
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc7_ && ArchitecturalBookProxy))
                     {
                        addr0077:
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc8_)
                           {
                              addr00ad:
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 addr008d:
                                 _loc4_ = §§pop();
                                 addr008f:
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    addr00ac:
                                    addr009a:
                                    §§push(§§pop() * ITEM_LIB_RANGE);
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§push(§§pop());
                                 }
                              }
                              var _loc5_:* = §§pop();
                              §§push(_loc5_);
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(§§pop() + ITEM_LIB_RANGE);
                                 if(!(_loc7_ && ArchitecturalBookProxy))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 §§push(§§pop());
                              }
                              var _loc6_:* = §§pop();
                              §§push("gui_popups_architect_");
                              if(!_loc7_)
                              {
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + "_");
                                       if(!_loc7_)
                                       {
                                          addr0102:
                                          addr0104:
                                          return §§pop() + _loc6_;
                                       }
                                    }
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr0104);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00ad);
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr009a);
            }
            §§goto(addr008d);
         }
         §§goto(addr0077);
      }
      
      public function getBlueprintsByGroup(param1:String) : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc7_:IBlueprintVo = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc8_:* = param1;
         if(!_loc10_)
         {
            §§push(BlueprintGroupConstants.BLUEPRINT_POWERPLANT);
            if(!_loc10_)
            {
               §§push(_loc8_);
               if(!_loc10_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(0);
                        if(_loc11_)
                        {
                        }
                     }
                     else
                     {
                        addr01e2:
                        §§push(4);
                        if(_loc11_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(BlueprintGroupConstants.BLUEPRINT_PRODUCTION);
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc11_)
                              {
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr024b:
                                 §§push(6);
                                 if(_loc10_)
                                 {
                                 }
                              }
                              addr0263:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_.push(ServerTagConstants.POWERPLANT);
                                    if(_loc11_ || Boolean(_loc3_))
                                    {
                                    }
                                    break;
                                 case 1:
                                    _loc2_.push(ServerTagConstants.PRODUCTION);
                                    if(_loc10_)
                                    {
                                    }
                                    break;
                                 case 2:
                                    _loc2_.push(ServerTagConstants.SHOP);
                                    if(_loc11_ || Boolean(_loc3_))
                                    {
                                       break;
                                    }
                                    addr009f:
                                    _loc3_.push(ServerTagConstants.SPECIAL);
                                    if(_loc10_)
                                    {
                                    }
                                    break;
                                 case 3:
                                    _loc2_.push(ServerTagConstants.DECORATION);
                                    if(_loc10_ && Boolean(_loc3_))
                                    {
                                       break;
                                    }
                                    §§goto(addr009f);
                                    break;
                                 case 4:
                                    _loc2_.push(ServerTagConstants.GROUND);
                                    if(_loc10_)
                                    {
                                    }
                                    break;
                                 case 5:
                                    _loc2_.push(ServerTagConstants.SPECIAL);
                                    if(_loc11_)
                                    {
                                    }
                                    break;
                                 case 6:
                                 default:
                                    _loc2_.push(ServerTagConstants.RESIDENTIAL);
                                    if(_loc11_)
                                    {
                                    }
                              }
                              var _loc4_:ArrayCollection = new ArrayCollection();
                              var _loc5_:Vector.<IBlueprintVo> = this.getBluePrintsByTags(_loc2_,_loc3_);
                              var _loc6_:ArrayCollection = new ArrayCollection();
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 _loc8_ = 0;
                                 if(_loc11_ || Boolean(this))
                                 {
                                    for each(_loc7_ in _loc5_)
                                    {
                                       if(_loc11_)
                                       {
                                          §§push(this.itemCanBePlacedOnPlayfield(_loc7_));
                                          if(_loc11_ || Boolean(param1))
                                          {
                                             §§push(§§pop());
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                if(_temp_10)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      addr030c:
                                                      §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         addr032f:
                                                         addr0313:
                                                         §§push(_loc7_.state == BlueprintVo.STATE_NOT_AVAILABLE);
                                                         if(!(_loc10_ && Boolean(this)))
                                                         {
                                                            addr032e:
                                                            §§push(!§§pop());
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_ && Boolean(param1))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc6_.addItem(_loc7_);
                                                      continue;
                                                   }
                                                   §§goto(addr032e);
                                                }
                                                §§goto(addr032f);
                                             }
                                             §§goto(addr030c);
                                          }
                                          §§goto(addr032e);
                                       }
                                       §§goto(addr0313);
                                    }
                                 }
                                 if(_loc11_)
                                 {
                                    _loc6_.source.sort(sortBlueprintsByLevel);
                                    if(_loc11_)
                                    {
                                       _loc6_.refresh();
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    loop1:
                                    do
                                    {
                                       §§push(_loc6_.length % 10 == 0);
                                       if(!(_loc10_ && Boolean(_loc2_)))
                                       {
                                          §§push(!§§pop());
                                          if(_loc11_ || Boolean(_loc2_))
                                          {
                                             addr03c2:
                                             var _temp_17:* = §§pop();
                                             §§push(_temp_17);
                                             if(!_temp_17)
                                             {
                                                if(!(_loc10_ && Boolean(_loc3_)))
                                                {
                                                   §§pop();
                                                   if(!(_loc10_ && Boolean(param1)))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.length == 0);
                                                         addr03f8:
                                                         while(!§§pop())
                                                         {
                                                            if(_loc10_ && Boolean(param1))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      break;
                                                      addr03f1:
                                                   }
                                                   _loc4_.addAll(_loc6_);
                                                   break;
                                                }
                                             }
                                          }
                                          §§goto(addr03f8);
                                       }
                                       §§goto(addr03c2);
                                    }
                                    while(_loc6_.addItem(null), !(_loc10_ && Boolean(param1)));
                                    
                                    return _loc4_;
                                 }
                              }
                              §§goto(addr03f1);
                           }
                           else
                           {
                              §§push(BlueprintGroupConstants.BLUEPRINT_SHOP);
                              if(!_loc10_)
                              {
                                 addr0164:
                                 §§push(_loc8_);
                                 if(_loc11_ || Boolean(this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc11_ || Boolean(_loc2_))
                                       {
                                          §§push(2);
                                          if(_loc10_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr01e2);
                                       }
                                    }
                                    else
                                    {
                                       §§push(BlueprintGroupConstants.BLUEPRINT_DECORATION);
                                       if(_loc11_)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc10_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc11_ || Boolean(param1))
                                                {
                                                   §§push(3);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr024b);
                                                }
                                                §§goto(addr0263);
                                             }
                                             else
                                             {
                                                §§push(BlueprintGroupConstants.BLUEPRINT_GROUNDS);
                                                if(_loc11_)
                                                {
                                                   addr01d0:
                                                   §§push(_loc8_);
                                                   if(_loc11_)
                                                   {
                                                      addr01d8:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr01e2);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr024b);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(BlueprintGroupConstants.BLUEPRINT_SPECIAL);
                                                         if(_loc11_ || Boolean(param1))
                                                         {
                                                            addr0211:
                                                            §§push(_loc8_);
                                                            if(_loc11_ || Boolean(this))
                                                            {
                                                               addr0221:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc11_ || Boolean(_loc2_))
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr024b);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0247:
                                                                  addr0245:
                                                                  if(BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL === _loc8_)
                                                                  {
                                                                     §§goto(addr024b);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(7);
                                                                  }
                                                               }
                                                               §§goto(addr0263);
                                                            }
                                                            §§goto(addr0247);
                                                         }
                                                         §§goto(addr0245);
                                                      }
                                                      §§goto(addr024b);
                                                   }
                                                   §§goto(addr0247);
                                                }
                                                §§goto(addr0245);
                                             }
                                          }
                                          §§goto(addr01d8);
                                       }
                                       §§goto(addr01d0);
                                    }
                                    §§goto(addr0263);
                                 }
                                 §§goto(addr0221);
                              }
                              §§goto(addr0211);
                           }
                        }
                        §§goto(addr0247);
                     }
                     §§goto(addr0211);
                  }
                  §§goto(addr0263);
               }
               §§goto(addr01d8);
            }
            §§goto(addr0164);
         }
         §§goto(addr024b);
      }
      
      private function itemCanBePlacedOnPlayfield(param1:IBlueprintVo) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemPlayfieldRestrictionDTO = null;
         §§push(this._playfieldProxy.config.id);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.configObj.playfieldRestrictions)
         {
            if(_loc6_)
            {
               if(_loc3_.configPlayfieldId == _loc2_)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function getBluePrintsByTags(param1:Vector.<String>, param2:Vector.<String>) : Vector.<IBlueprintVo>
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:ConfigPlayfieldItemDTO = null;
         var _loc6_:BlueprintVo = null;
         var _loc7_:ConfigPlayfieldItemDTO = null;
         var _loc3_:Vector.<IBlueprintVo> = new Vector.<IBlueprintVo>();
         var _loc4_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc8_:int = 0;
         var _loc9_:* = this._gameConfigProxy.getConfigPlayfieldItemsByTags(param1,param2);
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(!_loc11_)
            {
               break;
            }
            if(§§pop())
            {
               _loc5_ = §§nextvalue(_loc8_,_loc9_);
               if(_loc11_)
               {
                  _loc4_.push(_loc5_);
               }
               continue;
            }
            if(!(_loc10_ && Boolean(param2)))
            {
               if(!(_loc10_ && Boolean(this)))
               {
                  if(_loc11_)
                  {
                     _loc8_ = 0;
                     if(_loc11_ || Boolean(param1))
                     {
                        _loc9_ = _loc4_;
                        while(true)
                        {
                           §§push(§§hasnext(_loc9_,_loc8_));
                           break loop0;
                        }
                        addr0163:
                        addr015c:
                     }
                     addr0165:
                  }
                  return _loc3_;
               }
               §§goto(addr0165);
            }
            §§goto(addr0163);
         }
         while(§§pop())
         {
            _loc7_ = §§nextvalue(_loc8_,_loc9_);
            if(!_loc10_)
            {
               if(this.shouldShowPermissionInBook(_loc7_))
               {
                  addr00eb:
                  _loc6_ = this.getBluePrint(_loc7_);
                  if(!_loc10_)
                  {
                     if(this._eventProxy.mayShowItem(_loc6_.permission.config))
                     {
                        if(!(_loc10_ && Boolean(this)))
                        {
                           §§push(_loc6_);
                           §§push(this._eventProxy.mayBuyItem(_loc6_.permission.config));
                           if(_loc11_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().permissionLockedByEvent = §§pop();
                           if(_loc11_ || Boolean(param1))
                           {
                              addr0156:
                              _loc3_.push(_loc6_);
                           }
                           §§goto(addr015c);
                        }
                        §§goto(addr0156);
                     }
                     §§goto(addr015c);
                  }
                  §§goto(addr0156);
               }
               §§goto(addr015c);
            }
            §§goto(addr00eb);
         }
         §§goto(addr0163);
      }
      
      public function getBluePrint(param1:ConfigPlayfieldItemDTO) : BlueprintVo
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemPermissionDTO = null;
         var _loc6_:ConfigNeedDTO = null;
         var _loc7_:ConfigNeedStackDTO = null;
         var _loc8_:ConfigGoodDTO = null;
         if(_loc14_)
         {
            §§push(this._goodStockProxy);
            if(_loc14_)
            {
               if(§§pop() == null)
               {
                  if(_loc14_)
                  {
                     this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0059:
               §§push(this._goodStockProxy);
            }
            _loc2_ = §§pop().getPermissionByConfigId(param1.permissionConfigId);
            if(_loc14_ || Boolean(this))
            {
               §§push(this._restrictionProxy);
               if(!_loc13_)
               {
                  if(§§pop() == null)
                  {
                     if(_loc14_ || Boolean(param1))
                     {
                        this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
                     }
                  }
                  addr00a6:
                  §§push(this._restrictionProxy);
               }
               var _loc3_:Vector.<ConfigGroundRestrictionDTO> = §§pop().getWhiteListRestrictionsForItem(param1);
               var _loc4_:Vector.<ConfigGoodDTO> = new Vector.<ConfigGoodDTO>();
               if(_loc14_)
               {
                  if(param1.tags.indexOf(ServerTagConstants.SHOP) != -1)
                  {
                     addr00dc:
                     for each(_loc6_ in param1.needShopConfigs)
                     {
                        if(_loc14_)
                        {
                           var _loc11_:int = 0;
                           if(!_loc13_)
                           {
                              for each(_loc7_ in _loc6_.requiredGoods)
                              {
                                 §§push(_loc7_.configOutout);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(_loc14_ || Boolean(this))
                                       {
                                          addr0154:
                                          if(_loc7_.configOutout.type != ServerOutputConstants.GOOD)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc8_ = this._gameConfigProxy.config.goods[_loc7_.configOutout.configId];
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          _loc4_.push(_loc8_);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr0154);
                              }
                           }
                        }
                     }
                  }
                  §§push(this._serverStorageProxy.isPlayfieldItemConfigIdViewed(param1.id));
                  if(_loc14_)
                  {
                     §§push(!§§pop());
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc13_ && Boolean(param1)))
                  {
                     if(param1.unlockLevel > this._playerResourceProxy.userLevel)
                     {
                        if(_loc14_ || Boolean(_loc3_))
                        {
                           _loc5_ = false;
                        }
                     }
                  }
                  return new BlueprintVo(param1,_loc2_,this._playerResourceProxy.userLevel,_loc3_,this._playerResourceProxy.ingameCurrency,this._playerResourceProxy.realCurrency,_loc4_,_loc5_);
               }
               §§goto(addr00dc);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0059);
      }
      
      public function blueprintSelected(param1:IBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{
               "config":param1.configObj,
               "buyPermission":param1.permission.permissionsLeft <= 0
            });
         }
      }
      
      private function shouldShowPermissionInBook(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.buyable);
            if(_loc4_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0044);
                  }
               }
               §§goto(addr0045);
            }
            addr0044:
            return true;
         }
         addr0045:
         var _loc2_:PlayfieldItemPermissionDTO = this._goodStockProxy.getPermissionByConfigId(param1.permissionConfigId,false);
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  §§goto(addr0070);
               }
               §§goto(addr0159);
            }
            §§goto(addr0182);
         }
         addr0070:
         §§push(_loc2_.permissionsLeft == 0);
         if(!_loc3_)
         {
            var _temp_6:* = §§pop();
            §§push(_temp_6);
            §§push(_temp_6);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§pop();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(_loc2_.config.buyCap);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(-1);
                           if(_loc4_ || Boolean(param1))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00e8:
                                    var _temp_12:* = §§pop();
                                    addr00e9:
                                    §§push(_temp_12);
                                    if(_temp_12)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             addr010b:
                                             addr0105:
                                             §§push(_loc2_.permissionsBought >= _loc2_.config.buyCap);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§goto(addr011a);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr0172);
                                       }
                                    }
                                    addr011a:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr0124:
                                          §§push(false);
                                          if(_loc4_)
                                          {
                                             §§goto(addr012b);
                                          }
                                       }
                                       else
                                       {
                                          addr0172:
                                          §§push(true);
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             §§goto(addr0183);
                                          }
                                       }
                                       §§goto(addr0181);
                                    }
                                    else
                                    {
                                       §§push(param1.isUpgrade);
                                       if(!_loc3_)
                                       {
                                          addr013a:
                                          if(!§§pop())
                                          {
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr0159:
                                                §§push(isFirstLevelTownHall(param1));
                                                if(_loc4_)
                                                {
                                                   addr0169:
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr0172);
                                                      }
                                                      else
                                                      {
                                                         addr0182:
                                                         §§push(false);
                                                      }
                                                      §§goto(addr0183);
                                                   }
                                                   §§goto(addr0182);
                                                }
                                                §§goto(addr0181);
                                             }
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr0182);
                                       }
                                       §§goto(addr0169);
                                    }
                                 }
                                 addr0183:
                                 return §§pop();
                              }
                              §§goto(addr012b);
                           }
                           §§goto(addr010b);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr0124);
                  }
                  addr012b:
                  return §§pop();
               }
               §§goto(addr00e8);
            }
            §§goto(addr00e9);
         }
         addr0181:
         return §§pop();
      }
      
      public function subData_RefillCCOutcome(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._verifiedBlueprintVo);
            if(_loc2_)
            {
               §§pop().outcomeCCVOList.removeAll();
               if(_loc2_)
               {
                  §§push(this._verifiedBlueprintVo);
                  if(!_loc3_)
                  {
                     §§push(§§pop().outcomeCCVO);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push("gui_popups_paperPopup");
                        if(_loc2_ || _loc3_)
                        {
                           §§pop().visualLibName = §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(this._verifiedBlueprintVo);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop().outcomeCCVO);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push("cc_icon_medium");
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§pop().visualName = §§pop();
                                       if(!_loc3_)
                                       {
                                          if(param1.output < 0)
                                          {
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                addr00b5:
                                                §§push(this._verifiedBlueprintVo);
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   addr00c6:
                                                   §§push(§§pop().outcomeCCVO);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      §§push(this._redColor);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().valueColor = §§pop();
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§goto(addr0102);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0171:
                                                         §§pop().valueColor = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr0179);
                                                         }
                                                      }
                                                      §§goto(addr01bd);
                                                   }
                                                   §§goto(addr011b);
                                                }
                                                §§goto(addr010b);
                                             }
                                             addr0102:
                                             §§push(this._verifiedBlueprintVo);
                                             if(!_loc3_)
                                             {
                                                addr010b:
                                                §§push(§§pop().outcomeCCVO);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr011b:
                                                   §§push("- ");
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr012b:
                                                      §§push(LocaUtils.getThousendSeperatedNumber(param1.output));
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            §§pop().textLabel = §§pop();
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               addr0179:
                                                               §§push(this._verifiedBlueprintVo);
                                                               if(!(_loc3_ && Boolean(param1)))
                                                               {
                                                                  §§goto(addr01b5);
                                                               }
                                                               §§goto(addr01c1);
                                                            }
                                                            §§goto(addr01bd);
                                                         }
                                                         addr01b5:
                                                         §§goto(addr018d);
                                                      }
                                                      §§goto(addr01b4);
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                                addr018d:
                                                §§goto(addr018a);
                                             }
                                             addr018a:
                                             §§push(§§pop().outcomeCCVO);
                                             §§push("+ ");
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr01b4:
                                                addr01aa:
                                                §§push(§§pop() + LocaUtils.getThousendSeperatedNumber(param1.output));
                                             }
                                             §§pop().textLabel = §§pop();
                                             if(_loc2_)
                                             {
                                                addr01c1:
                                                this._verifiedBlueprintVo.outcomeCCVOList.addItem(this._verifiedBlueprintVo.outcomeCCVO.clone());
                                                addr01bd:
                                             }
                                             return;
                                          }
                                          §§push(this._verifiedBlueprintVo);
                                          if(!_loc3_)
                                          {
                                             addr0165:
                                             §§push(§§pop().outcomeCCVO);
                                             if(!_loc3_)
                                             {
                                                addr016d:
                                                §§goto(addr0171);
                                                §§push(this._greenColor);
                                             }
                                             §§goto(addr018d);
                                          }
                                          §§goto(addr01c1);
                                       }
                                       §§goto(addr01bd);
                                    }
                                    §§goto(addr012b);
                                 }
                                 §§goto(addr011b);
                              }
                              §§goto(addr0165);
                           }
                           §§goto(addr01bd);
                        }
                        §§goto(addr01b5);
                     }
                     §§goto(addr016d);
                  }
                  §§goto(addr01c1);
               }
               §§goto(addr0179);
            }
            §§goto(addr00c6);
         }
         §§goto(addr00b5);
      }
      
      public function subData_RefillOutcome(param1:BlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigGoodDTO = null;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(this._verifiedBlueprintVo);
            if(_loc7_ || Boolean(param1))
            {
               §§pop().outcomeVOList.removeAll();
               if(_loc7_ || _loc2_)
               {
                  addr0054:
                  this._verifiedBlueprintVo.outcomeVO.cleanAll();
                  addr0050:
               }
               var _loc2_:Vector.<ConfigGoodDTO> = param1.products;
               for each(_loc3_ in _loc2_)
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§push(this._verifiedBlueprintVo);
                     if(_loc7_)
                     {
                        §§push(§§pop().outcomeVO);
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push("gui_popups_smallGoodIcons");
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§pop().visualLibName = §§pop();
                              if(_loc7_)
                              {
                                 §§push(this._verifiedBlueprintVo);
                                 if(!_loc6_)
                                 {
                                    addr00d6:
                                    §§push(§§pop().outcomeVO);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       addr00fd:
                                       addr00e7:
                                       §§push("small_");
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() + _loc3_.gfxId);
                                       }
                                       §§pop().visualName = §§pop();
                                       if(_loc7_ || Boolean(this))
                                       {
                                          addr010e:
                                          §§push(this._verifiedBlueprintVo);
                                          if(!_loc6_)
                                          {
                                             addr011b:
                                             addr0118:
                                             §§push(§§pop().outcomeVO);
                                             §§push(LocaUtils);
                                             §§push("rcl.goods.goodname");
                                             §§push("rcl.goods.goodname.");
                                             if(_loc7_ || Boolean(param1))
                                             {
                                                §§push(§§pop() + _loc3_.gfxId);
                                             }
                                             §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                                             if(!(_loc7_ || Boolean(this)))
                                             {
                                                continue;
                                             }
                                             addr0156:
                                             §§push(this._verifiedBlueprintVo);
                                          }
                                          §§pop().outcomeVOList.addItem(this._verifiedBlueprintVo.outcomeVO.clone());
                                       }
                                       continue;
                                    }
                                    §§goto(addr011b);
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr00e7);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr0156);
               }
               return;
            }
            §§goto(addr0054);
         }
         §§goto(addr0050);
      }
      
      public function subData_RefillMaterial(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(_loc10_)
         {
            §§push(this._verifiedBlueprintVo);
            if(!_loc11_)
            {
               §§pop().materialVOList.removeAll();
               if(_loc10_)
               {
                  addr004b:
                  this._verifiedBlueprintVo.materialVO.cleanAll();
               }
               §§goto(addr0052);
            }
            §§goto(addr004b);
         }
         addr0052:
         var _loc2_:Vector.<ConfigOutputDTO> = param1.material;
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!_loc11_)
            {
               _loc3_++;
               if(!(_loc11_ && Boolean(this)))
               {
                  §§push(this._verifiedBlueprintVo);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     §§push(§§pop().materialVO);
                     if(!_loc11_)
                     {
                        §§push("gui_popups_smallGoodIcons");
                        if(_loc10_)
                        {
                           §§pop().visualLibName = §§pop();
                           if(!_loc11_)
                           {
                              addr00b7:
                              §§push(this._verifiedBlueprintVo);
                              if(!_loc11_)
                              {
                                 addr00c1:
                                 §§push(§§pop().materialVO);
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    addr00df:
                                    §§push("small_");
                                    if(!(_loc11_ && Boolean(_loc3_)))
                                    {
                                       addr00f0:
                                       §§push(§§pop() + _loc4_.goodConfig.gfxId);
                                    }
                                    §§pop().visualName = §§pop();
                                    if(!(_loc10_ || Boolean(_loc2_)))
                                    {
                                       continue;
                                    }
                                    addr010a:
                                    §§push(_loc3_);
                                    if(_loc10_ || Boolean(param1))
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc10_)
                                       {
                                          addr012e:
                                          _loc6_ = Math.abs(_loc4_.outputAmount);
                                          if(_loc11_ && Boolean(_loc2_))
                                          {
                                             continue;
                                          }
                                          §§push(LocaUtils);
                                          §§push("rcl.goods.goodname");
                                          §§push("rcl.goods.goodname.");
                                          if(_loc10_ || Boolean(_loc3_))
                                          {
                                             §§push(§§pop() + _loc4_.goodConfig.gfxId);
                                          }
                                          §§push(§§pop().getString(§§pop(),§§pop()));
                                          if(_loc10_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc7_ = §§pop();
                                          if(_loc11_ && Boolean(param1))
                                          {
                                             continue;
                                          }
                                       }
                                       addr0177:
                                       §§push(this._verifiedBlueprintVo);
                                       if(_loc10_)
                                       {
                                          addr0190:
                                          §§pop().materialVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.needs",[_loc5_,_loc6_,_loc7_]);
                                          if(_loc11_)
                                          {
                                             continue;
                                          }
                                          §§push(this._verifiedBlueprintVo);
                                       }
                                       addr01b0:
                                       §§pop().materialVOList.addItem(this._verifiedBlueprintVo.materialVO.clone());
                                       continue;
                                    }
                                    §§goto(addr012e);
                                 }
                                 §§goto(addr0190);
                              }
                              §§goto(addr01b0);
                           }
                           §§goto(addr0177);
                        }
                        §§goto(addr00f0);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr010a);
            }
            §§goto(addr00b7);
         }
      }
      
      public function subData_RefillEffects(param1:BlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:ConfigGroundRestrictionDTO = null;
         var _loc3_:Vector.<BlueprintImageValueVO> = null;
         var _loc4_:Vector.<BlueprintImageValueVO> = null;
         var _loc5_:Vector.<BlueprintImageValueVO> = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:BlueprintImageValueVO = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:BlueprintImageValueVO = null;
         var _loc11_:Vector.<BlueprintImageValueVO> = null;
         if(_loc15_ || Boolean(_loc3_))
         {
            §§push(this._verifiedBlueprintVo);
            if(_loc15_)
            {
               §§pop().buildableLandVOList.removeAll();
               if(!(_loc14_ && Boolean(_loc3_)))
               {
                  §§push(this._verifiedBlueprintVo);
                  if(_loc15_ || Boolean(_loc2_))
                  {
                     §§push(§§pop().buildableLandVO);
                     if(_loc15_ || Boolean(param1))
                     {
                        §§pop().cleanAll();
                        if(_loc15_)
                        {
                           addr00a9:
                           this._verifiedBlueprintVo.buildableLandVO.visualLibName = "gui_popups_paperPopup";
                           addr00a6:
                           addr00a2:
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00a2);
            }
            §§goto(addr00a6);
         }
         addr00af:
         var _loc12_:int = 0;
         var _loc13_:* = param1.restrictions;
         for each(_loc2_ in _loc13_)
         {
            if(_loc15_)
            {
               §§push(_loc2_.groundType);
               if(!_loc14_)
               {
                  §§push(ServerRestrictionConstants.FARMLAND);
                  if(!(_loc14_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc15_)
                        {
                           §§push(this._verifiedBlueprintVo);
                           if(!_loc14_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(!_loc14_)
                              {
                                 §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.farmland"));
                                 if(_loc15_ || Boolean(_loc3_))
                                 {
                                    §§pop().toolTip = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§push(this._verifiedBlueprintVo);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop().buildableLandVO);
                                          if(_loc15_)
                                          {
                                             §§push("restriction_icon_farmland");
                                             if(_loc15_)
                                             {
                                                §§pop().visualName = §§pop();
                                                if(_loc15_ || Boolean(_loc2_))
                                                {
                                                   addr0158:
                                                   §§push(_loc2_.groundType);
                                                   if(!(_loc14_ && Boolean(param1)))
                                                   {
                                                      §§push(ServerRestrictionConstants.CLAYPIT);
                                                      if(_loc15_ || Boolean(_loc3_))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc14_ && Boolean(this)))
                                                            {
                                                               §§push(this._verifiedBlueprintVo);
                                                               if(!(_loc14_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop().buildableLandVO);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.claypit"));
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§pop().toolTip = §§pop();
                                                                        if(!(_loc14_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(this._verifiedBlueprintVo);
                                                                           if(_loc15_ || Boolean(this))
                                                                           {
                                                                              addr01df:
                                                                              §§push(§§pop().buildableLandVO);
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push("restriction_icon_claypit");
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§pop().visualName = §§pop();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr01fb:
                                                                                       §§push(_loc2_.groundType);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(ServerRestrictionConstants.RIVER);
                                                                                          if(_loc15_ || Boolean(_loc2_))
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(this._verifiedBlueprintVo);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop().buildableLandVO);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.river"));
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr0248:
                                                                                                            §§pop().toolTip = §§pop();
                                                                                                            if(_loc15_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr0258:
                                                                                                               §§push(this._verifiedBlueprintVo);
                                                                                                               if(_loc15_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop().buildableLandVO);
                                                                                                                  if(_loc15_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     §§push("restriction_icon_river");
                                                                                                                     if(!(_loc14_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        addr028d:
                                                                                                                        §§pop().visualName = §§pop();
                                                                                                                        if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           addr029e:
                                                                                                                           §§push(_loc2_.groundType);
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§push(ServerRestrictionConstants.SPRING);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr02b4:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(this._verifiedBlueprintVo);
                                                                                                                                       if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                       {
                                                                                                                                          addr02d0:
                                                                                                                                          §§push(§§pop().buildableLandVO);
                                                                                                                                          if(_loc15_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.spring"));
                                                                                                                                             if(_loc15_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                §§pop().toolTip = §§pop();
                                                                                                                                                if(_loc15_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   addr030b:
                                                                                                                                                   §§push(this._verifiedBlueprintVo);
                                                                                                                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().buildableLandVO);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr0326:
                                                                                                                                                         §§push("restriction_icon_spring");
                                                                                                                                                         if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                         {
                                                                                                                                                            addr0338:
                                                                                                                                                            §§pop().visualName = §§pop();
                                                                                                                                                            if(_loc15_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               addr0349:
                                                                                                                                                               §§push(_loc2_.groundType);
                                                                                                                                                               if(!(_loc14_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  addr035b:
                                                                                                                                                                  §§push(ServerRestrictionConstants.BUILDINGLAND);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0367:
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this._verifiedBlueprintVo);
                                                                                                                                                                           if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                                                           {
                                                                                                                                                                              addr038b:
                                                                                                                                                                              §§push(§§pop().buildableLandVO);
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.grass"));
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03a6:
                                                                                                                                                                                    §§pop().toolTip = §§pop();
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03ae:
                                                                                                                                                                                       §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().buildableLandVO);
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push("restriction_icon_grass");
                                                                                                                                                                                             if(_loc15_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr03d3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0653);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0464);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0640);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0670);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04d4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05a2);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04ee);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03e4);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0666);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0524);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03ae);
                                                                                                                                                         }
                                                                                                                                                         addr03d3:
                                                                                                                                                         §§pop().visualName = §§pop();
                                                                                                                                                         if(_loc15_ || Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr03e4:
                                                                                                                                                            §§push(_loc2_.groundType);
                                                                                                                                                            if(_loc15_ || Boolean(_loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(ServerRestrictionConstants.COAST);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr0402:
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this._verifiedBlueprintVo);
                                                                                                                                                                        if(_loc15_ || Boolean(param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().buildableLandVO);
                                                                                                                                                                           if(_loc15_ || Boolean(_loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.coast"));
                                                                                                                                                                              if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().toolTip = §§pop();
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().buildableLandVO);
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0464:
                                                                                                                                                                                          §§push("restriction_icon_coast");
                                                                                                                                                                                          if(_loc15_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().visualName = §§pop();
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr047f:
                                                                                                                                                                                                §§push(_loc2_.groundType);
                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0489:
                                                                                                                                                                                                   §§push(ServerRestrictionConstants.SEA);
                                                                                                                                                                                                   if(_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                            if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr04b1:
                                                                                                                                                                                                               §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                               if(_loc15_ || Boolean(this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr04c2:
                                                                                                                                                                                                                  §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.sea"));
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr04d4:
                                                                                                                                                                                                                     §§pop().toolTip = §§pop();
                                                                                                                                                                                                                     if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr04e4:
                                                                                                                                                                                                                        §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr04ee:
                                                                                                                                                                                                                           §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr04f7:
                                                                                                                                                                                                                              §§push("restriction_icon_sea");
                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().visualName = §§pop();
                                                                                                                                                                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0512:
                                                                                                                                                                                                                                    §§push(_loc2_.groundType);
                                                                                                                                                                                                                                    if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0524:
                                                                                                                                                                                                                                       §§push(ServerRestrictionConstants.FISHINGGROUND);
                                                                                                                                                                                                                                       if(_loc15_ || Boolean(_loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0538:
                                                                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0554:
                                                                                                                                                                                                                                                   §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                                                   if(_loc15_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr0565:
                                                                                                                                                                                                                                                      §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.fish_grounds"));
                                                                                                                                                                                                                                                      if(_loc15_ || Boolean(this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().toolTip = §§pop();
                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0587:
                                                                                                                                                                                                                                                            §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                                                            if(!(_loc14_ && Boolean(param1)))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0599:
                                                                                                                                                                                                                                                               §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr05a2:
                                                                                                                                                                                                                                                                  §§push("restriction_icon_fishery");
                                                                                                                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr05ac:
                                                                                                                                                                                                                                                                     §§pop().visualName = §§pop();
                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr05c1:
                                                                                                                                                                                                                                                                        §§push(_loc2_.groundType);
                                                                                                                                                                                                                                                                        if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr05d3:
                                                                                                                                                                                                                                                                           §§push(ServerRestrictionConstants.MOUNTAIN);
                                                                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr05e9:
                                                                                                                                                                                                                                                                                    §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                                                                                    if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                                                                                       if(_loc15_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr060c:
                                                                                                                                                                                                                                                                                          §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.mountain"));
                                                                                                                                                                                                                                                                                          if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0626:
                                                                                                                                                                                                                                                                                             §§pop().toolTip = §§pop();
                                                                                                                                                                                                                                                                                             if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0636:
                                                                                                                                                                                                                                                                                                §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0640:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr0649:
                                                                                                                                                                                                                                                                                                      §§push("restriction_icon_mountain");
                                                                                                                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr0653:
                                                                                                                                                                                                                                                                                                         §§pop().visualName = §§pop();
                                                                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr065c);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr06a7);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr06b2);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0693);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0682);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr065c);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr069f);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr06ae);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr0640);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr06a7);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr065c:
                                                                                                                                                                                                                                                                              §§goto(addr0666);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr0666:
                                                                                                                                                                                                                                                                           §§goto(addr0660);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr0660:
                                                                                                                                                                                                                                                                        if(_loc2_.groundType == ServerRestrictionConstants.SNOW)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr0670:
                                                                                                                                                                                                                                                                              §§push(this._verifiedBlueprintVo);
                                                                                                                                                                                                                                                                              if(_loc15_ || Boolean(this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0682:
                                                                                                                                                                                                                                                                                 §§push(§§pop().buildableLandVO);
                                                                                                                                                                                                                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr069f:
                                                                                                                                                                                                                                                                                    §§pop().toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.snow");
                                                                                                                                                                                                                                                                                    addr0693:
                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr06b2:
                                                                                                                                                                                                                                                                                       this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_snow";
                                                                                                                                                                                                                                                                                       addr06ae:
                                                                                                                                                                                                                                                                                       addr06ab:
                                                                                                                                                                                                                                                                                       addr06a7:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr06c0);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr06ae);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr06ab);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr06c0);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr06a7);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0653);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0693);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0682);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr06c0);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0626);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr05a2);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr06ab);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr065c);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr05c1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0666);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr05d3);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr05e9);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr05ac);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0649);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr06ab);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr05c1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr069f);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0565);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0554);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04e4);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0512);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0666);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr05d3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr06a7);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr05ac);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0565);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0599);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06a7);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04d4);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04f7);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04ee);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0670);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr047f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0666);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr05d3);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr06c0);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0649);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr038b);
                                                                                                                                                }
                                                                                                                                                §§goto(addr06c0);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03a6);
                                                                                                                                          }
                                                                                                                                          §§goto(addr05a2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04ee);
                                                                                                                                    }
                                                                                                                                    §§goto(addr065c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0349);
                                                                                                                              }
                                                                                                                              §§goto(addr0367);
                                                                                                                           }
                                                                                                                           §§goto(addr0660);
                                                                                                                        }
                                                                                                                        §§goto(addr0587);
                                                                                                                     }
                                                                                                                     §§goto(addr0338);
                                                                                                                  }
                                                                                                                  §§goto(addr0326);
                                                                                                               }
                                                                                                               §§goto(addr04b1);
                                                                                                            }
                                                                                                            §§goto(addr030b);
                                                                                                         }
                                                                                                         §§goto(addr0626);
                                                                                                      }
                                                                                                      §§goto(addr04c2);
                                                                                                   }
                                                                                                   §§goto(addr038b);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr029e);
                                                                                          }
                                                                                          §§goto(addr0402);
                                                                                       }
                                                                                       §§goto(addr035b);
                                                                                    }
                                                                                    §§goto(addr06c0);
                                                                                 }
                                                                                 §§goto(addr05ac);
                                                                              }
                                                                              §§goto(addr0565);
                                                                           }
                                                                           §§goto(addr02d0);
                                                                        }
                                                                        §§goto(addr0636);
                                                                     }
                                                                     §§goto(addr0248);
                                                                  }
                                                                  §§goto(addr0693);
                                                               }
                                                               §§goto(addr06ab);
                                                            }
                                                            §§goto(addr0670);
                                                         }
                                                         §§goto(addr01fb);
                                                      }
                                                      §§goto(addr02b4);
                                                   }
                                                   §§goto(addr0660);
                                                }
                                                §§goto(addr0258);
                                             }
                                             §§goto(addr028d);
                                          }
                                          §§goto(addr060c);
                                       }
                                       §§goto(addr01df);
                                    }
                                    §§goto(addr047f);
                                 }
                                 §§goto(addr0626);
                              }
                              §§goto(addr0326);
                           }
                           §§goto(addr04ee);
                        }
                        §§goto(addr0258);
                     }
                     §§goto(addr0158);
                  }
                  §§goto(addr0538);
               }
               §§goto(addr0489);
            }
            §§goto(addr03e4);
         }
         addr06c0:
         if(!_loc14_)
         {
            this._verifiedBlueprintVo.buildableLandVO.descriptionText = this._verifiedBlueprintVo.buildableLandVO.toolTip;
         }
         _loc3_ = new Vector.<BlueprintImageValueVO>();
         _loc4_ = new Vector.<BlueprintImageValueVO>();
         _loc5_ = new Vector.<BlueprintImageValueVO>();
         if(!(_loc14_ && Boolean(_loc3_)))
         {
            _loc12_ = 0;
            if(_loc15_ || Boolean(param1))
            {
               for each(_loc6_ in param1.consequences)
               {
                  if(_loc6_.resourceConfig == null)
                  {
                     continue;
                  }
                  _loc7_ = new BlueprintImageValueVO();
                  if(!(_loc14_ && Boolean(_loc3_)))
                  {
                     §§push(_loc6_.resourceConfig.id);
                     if(!(_loc14_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                        if(!_loc14_)
                        {
                           _loc8_ = §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc6_.outputAmount);
                              if(!_loc14_)
                              {
                                 §§push(§§pop());
                                 if(_loc15_)
                                 {
                                    _loc9_ = §§pop();
                                    §§push(_loc9_);
                                    if(_loc15_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() < 0);
                                       if(!_loc14_)
                                       {
                                          var _temp_62:* = §§pop();
                                          §§push(_temp_62);
                                          §§push(_temp_62);
                                          if(_loc15_ || Boolean(this))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc14_ && Boolean(param1)))
                                                {
                                                   §§pop();
                                                   if(_loc15_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]));
                                                         if(!(_loc14_ && Boolean(_loc2_)))
                                                         {
                                                            addr0809:
                                                            var _temp_66:* = §§pop();
                                                            §§push(_temp_66);
                                                            §§push(_temp_66);
                                                            if(_loc15_)
                                                            {
                                                               addr0810:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc15_ || Boolean(this))
                                                                  {
                                                                     addr0822:
                                                                     §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc15_ || Boolean(_loc3_))
                                                                        {
                                                                           addr0839:
                                                                           §§push(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]));
                                                                           if(_loc15_ || Boolean(param1))
                                                                           {
                                                                              addr085c:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc7_.valueColor = this._redColor;
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       §§push("- ");
                                                                                       if(!(_loc14_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§pop() + _loc9_);
                                                                                       }
                                                                                       §§pop().textLabel = §§pop();
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr08d6:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr08de:
                                                                                             if(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_POPULATION]))
                                                                                             {
                                                                                                if(_loc15_ || Boolean(param1))
                                                                                                {
                                                                                                   _loc7_.visualLibName = "gui_popups_paperPopup";
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      _loc7_.visualName = "postit_icon_population";
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr0921:
                                                                                                      _loc3_.push(_loc7_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0a1a:
                                                                                                      _loc7_.visualLibName = "gui_popups_paperPopup";
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         _loc7_.effectType = MainLayerProxy.MOOD;
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr0a39:
                                                                                                            _loc7_.visualName = "postit_icon_sadmood";
                                                                                                            if(!(_loc15_ || Boolean(_loc2_)))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            _loc5_.push(_loc7_);
                                                                                                            if(_loc15_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0a65:
                                                                                                               addr0a67:
                                                                                                               if(_loc8_ != Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr0a85:
                                                                                                                  _loc7_.visualLibName = "gui_popups_paperPopup";
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr0a93:
                                                                                                                     _loc7_.effectType = MainLayerProxy.MOOD;
                                                                                                                     if(_loc15_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        addr0aac:
                                                                                                                        _loc7_.visualName = "postit_icon_happymood";
                                                                                                                        if(!(_loc15_ || Boolean(param1)))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr0ac3:
                                                                                                                     _loc5_.push(_loc7_);
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0aac);
                                                                                                            }
                                                                                                            §§goto(addr0a85);
                                                                                                         }
                                                                                                         §§goto(addr0ac3);
                                                                                                      }
                                                                                                      §§goto(addr0a85);
                                                                                                   }
                                                                                                   §§goto(addr0aac);
                                                                                                }
                                                                                                §§goto(addr0a93);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr0941:
                                                                                                   §§push(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]));
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr095c:
                                                                                                      var _temp_77:* = §§pop();
                                                                                                      addr095d:
                                                                                                      §§push(_temp_77);
                                                                                                      if(!_temp_77)
                                                                                                      {
                                                                                                         if(_loc15_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr099b:
                                                                                                                  addr0986:
                                                                                                                  if(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]))
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     _loc7_.effectType = MainLayerProxy.ENERGY;
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr09b6:
                                                                                                                     _loc7_.visualLibName = "gui_popups_paperPopup";
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        addr09c4:
                                                                                                                        _loc7_.visualName = "postit_icon_energy";
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           addr09d3:
                                                                                                                           _loc4_.push(_loc7_);
                                                                                                                           if(_loc15_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr0a39);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0a1a);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0a39);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc15_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr09fc:
                                                                                                                        if(§§pop() == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]))
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§goto(addr0a1a);
                                                                                                                           }
                                                                                                                           §§goto(addr0a39);
                                                                                                                        }
                                                                                                                        §§goto(addr0a65);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0a67);
                                                                                                               }
                                                                                                               §§goto(addr09fc);
                                                                                                            }
                                                                                                            §§goto(addr09d3);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr099b);
                                                                                                }
                                                                                                §§goto(addr09fc);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr09fc);
                                                                                       }
                                                                                       §§goto(addr0921);
                                                                                    }
                                                                                    §§goto(addr0aac);
                                                                                 }
                                                                                 §§goto(addr0ac3);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc7_.valueColor = this._greenColor;
                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    §§push("+ ");
                                                                                    if(!(_loc14_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§push(§§pop() + _loc9_);
                                                                                    }
                                                                                    §§pop().textLabel = §§pop();
                                                                                    if(_loc15_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr08d6);
                                                                                    }
                                                                                    §§goto(addr0a85);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0a93);
                                                                           }
                                                                           §§goto(addr095c);
                                                                        }
                                                                        §§goto(addr08de);
                                                                     }
                                                                     §§goto(addr09c4);
                                                                  }
                                                               }
                                                               §§goto(addr085c);
                                                            }
                                                            §§goto(addr095d);
                                                         }
                                                         §§goto(addr085c);
                                                      }
                                                      §§goto(addr0839);
                                                   }
                                                   §§goto(addr09b6);
                                                }
                                             }
                                             §§goto(addr0809);
                                          }
                                          §§goto(addr0810);
                                       }
                                       §§goto(addr0822);
                                    }
                                    §§goto(addr0839);
                                 }
                                 §§goto(addr09fc);
                              }
                              §§goto(addr08de);
                           }
                           §§goto(addr0ac3);
                        }
                        §§goto(addr0941);
                     }
                     §§goto(addr0986);
                  }
                  §§goto(addr09c4);
               }
            }
            if(_loc15_ || Boolean(this))
            {
               §§push(this._verifiedBlueprintVo);
               if(_loc15_ || Boolean(this))
               {
                  §§pop().consequenceVOList.removeAll();
                  if(_loc15_ || Boolean(_loc3_))
                  {
                     addr0b0e:
                     this._verifiedBlueprintVo.consequenceVO.cleanAll();
                  }
                  §§goto(addr0b15);
               }
               §§goto(addr0b0e);
            }
         }
         addr0b15:
         _loc11_ = _loc3_.concat(_loc4_,_loc5_);
         if(_loc15_)
         {
            _loc12_ = 0;
            if(!_loc14_)
            {
               for each(_loc10_ in _loc11_)
               {
                  if(_loc15_ || Boolean(_loc3_))
                  {
                     §§push(this._verifiedBlueprintVo);
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        §§pop().consequenceVO = _loc10_;
                        if(_loc14_)
                        {
                           continue;
                        }
                        §§push(this._verifiedBlueprintVo);
                     }
                     §§pop().consequenceVOList.addItem(this._verifiedBlueprintVo.consequenceVO.clone());
                  }
               }
            }
         }
      }
      
      public function subData_RefillDescription(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this._verifiedBlueprintVo);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop().descriptionVo);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().cleanAll();
                  if(_loc2_)
                  {
                     addr0041:
                     §§push(this._verifiedBlueprintVo);
                     if(!_loc3_)
                     {
                        §§push(§§pop().descriptionVo);
                        if(_loc2_)
                        {
                           §§push(LocaUtils);
                           §§push("rcl.playfielditems.positdescription");
                           §§push("rcl.playfielditems.positdescription.");
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(§§pop() + param1.configObj.localeId);
                           }
                           §§push(§§pop().getString(§§pop(),§§pop()));
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§pop().descriptionText = §§pop();
                              if(!_loc3_)
                              {
                                 §§push(this._verifiedBlueprintVo);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a7:
                                    §§push(§§pop().descriptionVo);
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       §§goto(addr00c1);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00ee);
                        }
                        addr00c1:
                        if(§§pop().descriptionText == "")
                        {
                           if(_loc2_)
                           {
                              addr00d6:
                              addr00d3:
                              addr00cf:
                              addr00ee:
                              §§push(this._verifiedBlueprintVo.descriptionVo);
                              §§push(LocaUtils);
                              §§push("rcl.playfielditems.shortdescription");
                              §§push("rcl.playfielditems.shortdescription.");
                              if(_loc2_)
                              {
                                 §§push(§§pop() + param1.configObj.localeId);
                              }
                              §§pop().descriptionText = §§pop().getString(§§pop(),§§pop());
                           }
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr00a7);
                  }
                  addr00f1:
                  return;
               }
               §§goto(addr00c1);
            }
            §§goto(addr00a7);
         }
         §§goto(addr0041);
      }
      
      public function subData_RefillSecuritygrade(param1:BlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:BlueprintSecuritygradeVO = null;
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc5_:SecurityStatusVo = null;
         if(_loc9_ || Boolean(this))
         {
            §§push(this._verifiedBlueprintVo);
            if(_loc9_ || Boolean(_loc3_))
            {
               §§pop().securityVoList.removeAll();
               if(!_loc8_)
               {
                  addr0058:
                  this._verifiedBlueprintVo.securityVo.cleanAll();
               }
               addr005f:
               var _loc2_:Dictionary = new Dictionary();
               var _loc6_:int = 0;
               var _loc7_:* = param1.configObj.configSecurityGrades;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc7_,_loc6_));
                  if(!(_loc9_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        if(_loc9_ || Boolean(param1))
                        {
                           if(!_loc8_)
                           {
                              _loc6_ = 0;
                              if(_loc9_)
                              {
                                 _loc7_ = _loc2_;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc7_,_loc6_));
                                    break loop0;
                                 }
                                 addr022b:
                                 addr0224:
                              }
                              addr022d:
                           }
                           return;
                        }
                        §§goto(addr022d);
                     }
                     §§goto(addr022b);
                  }
                  else
                  {
                     _loc4_ = §§nextvalue(_loc6_,_loc7_);
                     _loc5_ = new SecurityStatusVo(0,0,_loc4_.type,-1,_loc4_.orderId);
                     §§push(_loc5_);
                     §§push(_loc4_.rangeX * 2);
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() + param1.configObj.sizeX);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc5_);
                        §§push(_loc4_.rangeY * 2);
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           §§push(§§pop() + param1.configObj.sizeY);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc8_ && Boolean(this)))
                        {
                           addr00f5:
                           if(_loc2_[_loc4_.type] == null)
                           {
                              addr010f:
                              _loc3_ = new BlueprintSecuritygradeVO();
                              if(_loc9_)
                              {
                                 _loc3_.departmentVisualSourceName = String(EmergencyLayerProxy.getGfxIdByDepartment(_loc4_.type));
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    _loc3_.departmentVisualLibName = "small_badges";
                                    if(_loc9_ || Boolean(_loc3_))
                                    {
                                       addr0157:
                                       _loc3_.departmentVisualSWFName = "gui_ui_emergencyDepartmentsIcons";
                                       if(!_loc8_)
                                       {
                                          _loc2_[_loc4_.type] = _loc3_;
                                       }
                                    }
                                    addr016d:
                                    _loc3_ = _loc2_[_loc4_.type];
                                    if(_loc9_)
                                    {
                                       _loc3_.gradeVoList.push(_loc5_);
                                    }
                                    continue;
                                 }
                                 §§goto(addr0157);
                              }
                           }
                           §§goto(addr016d);
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr00f5);
                  }
               }
               while(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc6_,_loc7_);
                  if(_loc9_ || Boolean(this))
                  {
                     §§push(this._verifiedBlueprintVo);
                     if(_loc9_)
                     {
                        §§pop().securityVo = _loc3_;
                        if(!(_loc8_ && Boolean(this)))
                        {
                           addr0212:
                           this._verifiedBlueprintVo.securityVoList.addItem(this._verifiedBlueprintVo.securityVo.clone());
                           addr020e:
                        }
                        §§goto(addr0224);
                     }
                     §§goto(addr0212);
                  }
                  §§goto(addr020e);
               }
               §§goto(addr022b);
            }
            §§goto(addr0058);
         }
         §§goto(addr005f);
      }
      
      public function subData_RefillCost(param1:BlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this._verifiedBlueprintVo);
            if(!_loc2_)
            {
               §§pop().costVOList.removeAll();
               if(!_loc2_)
               {
                  §§push(this._verifiedBlueprintVo);
                  if(_loc3_)
                  {
                     addr003f:
                     §§push(§§pop().costVO);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().textLabel = LocaUtils.getThousendSeperatedNumber(param1.price);
                        if(_loc3_)
                        {
                           §§push(this._verifiedBlueprintVo);
                           if(_loc3_ || _loc3_)
                           {
                              addr0072:
                              §§push(§§pop().costVO);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push("gui_popups_paperPopup");
                                 if(!_loc2_)
                                 {
                                    §§pop().visualLibName = §§pop();
                                    if(_loc3_)
                                    {
                                       addr0092:
                                       §§push(this._verifiedBlueprintVo);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(§§pop().costVO);
                                          if(!_loc2_)
                                          {
                                             addr00b7:
                                             §§push("cc_icon_medium");
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr00c7:
                                                §§pop().visualName = §§pop();
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(this._verifiedBlueprintVo);
                                                   if(!_loc2_)
                                                   {
                                                      addr00e0:
                                                      §§push(§§pop().costVO);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00f0:
                                                         §§push("");
                                                         if(!_loc2_)
                                                         {
                                                            addr00f7:
                                                            §§pop().visualOKLibName = §§pop();
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§push(this._verifiedBlueprintVo);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr011d);
                                                               }
                                                               §§goto(addr0157);
                                                            }
                                                            §§goto(addr0153);
                                                         }
                                                         addr011d:
                                                         §§pop().costVO.visualOKName = "";
                                                         §§goto(addr011b);
                                                      }
                                                      addr011b:
                                                      §§goto(addr0118);
                                                   }
                                                   addr0118:
                                                   if(!_loc2_)
                                                   {
                                                      addr0125:
                                                      §§push(this._verifiedBlueprintVo);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§pop().bluePrintVO.userVC = this._playerResourceProxy.ingameCurrency;
                                                         if(_loc3_)
                                                         {
                                                            addr0157:
                                                            this._verifiedBlueprintVo.costVOList.addItem(this._verifiedBlueprintVo.costVO.clone());
                                                            addr0153:
                                                         }
                                                         §§goto(addr0169);
                                                      }
                                                      §§goto(addr0157);
                                                   }
                                                   §§goto(addr0169);
                                                }
                                                §§goto(addr0125);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr00f0);
                                       }
                                       §§goto(addr0157);
                                    }
                                    §§goto(addr0153);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr0169);
                     }
                     §§goto(addr00f0);
                  }
                  §§goto(addr0072);
               }
               addr0169:
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr0092);
      }
      
      public function subData_refillResidents(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ResidentVo = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc8_ || Boolean(_loc3_))
         {
            §§push(this._verifiedBlueprintVo);
            if(!_loc9_)
            {
               §§pop().residentVoList.removeAll();
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  addr0051:
                  this._verifiedBlueprintVo.residentVo.cleanAll();
                  if(_loc8_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0074);
               }
               addr005e:
               if(param1.residents)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     addr0074:
                     if(param1.residents.length > 1)
                     {
                        if(_loc8_ || Boolean(this))
                        {
                           addr008e:
                           param1.residents.sort(sortResidents);
                        }
                     }
                     loop0:
                     for each(_loc2_ in param1.residents)
                     {
                        if(!_loc9_)
                        {
                           §§push("");
                           if(!(_loc9_ && Boolean(this)))
                           {
                              _loc3_ = §§pop();
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 addr00d9:
                                 _loc4_ = "";
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc2_.type);
                                    loop11:
                                    while(true)
                                    {
                                       var _loc7_:* = §§pop();
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          §§push(ServerResConst.RESOURCE_WORKERS);
                                          if(_loc8_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc7_);
                                             if(_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(0);
                                                      if(_loc9_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0483:
                                                      §§push(1);
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_RICHMEN);
                                                   if(_loc8_)
                                                   {
                                                      addr0469:
                                                      §§push(_loc7_);
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         addr0479:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr0483);
                                                            }
                                                            else
                                                            {
                                                               addr049a:
                                                               §§push(2);
                                                               if(_loc9_ && Boolean(this))
                                                               {
                                                               }
                                                            }
                                                            addr04c8:
                                                            loop18:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(this._verifiedBlueprintVo);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop().residentVo);
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push("gui_popups_residentialPopupNEW");
                                                                        if(!(_loc9_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§pop().visualLibName = §§pop();
                                                                           if(_loc8_ || Boolean(_loc2_))
                                                                           {
                                                                              §§push(this._verifiedBlueprintVo);
                                                                              if(_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().residentVo);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr013e:
                                                                                 §§push("resident_icon_worker");
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop().visualName = §§pop();
                                                                                    if(!(_loc8_ || Boolean(this)))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker"));
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          if(!(_loc9_ && Boolean(this)))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this._verifiedBlueprintVo);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                §§push(§§pop().residentVo);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr02fc:
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§pop().toolTip = §§pop();
                                                                                                      if(_loc9_ && Boolean(_loc2_))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr03f9:
                                                                                                      §§pop().toolTip = §§pop();
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push("resident_icon_prof");
                                                                                                      addr038a:
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().visualName = §§pop();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics"));
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]));
                                                                                                                           if(_loc9_ && Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc9_ && Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break loop8;
                                                                                                                        addr03b2:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr03ea:
                                                                                                                  §§push(this._verifiedBlueprintVo);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     break loop18;
                                                                                                                  }
                                                                                                                  §§goto(addr03f9);
                                                                                                                  §§push(§§pop().residentVo);
                                                                                                                  §§push(_loc4_);
                                                                                                                  addr03ab:
                                                                                                               }
                                                                                                            }
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr03ea);
                                                                                                         }
                                                                                                         §§goto(addr03b2);
                                                                                                      }
                                                                                                   }
                                                                                                   addr0386:
                                                                                                }
                                                                                             }
                                                                                             addr02e9:
                                                                                          }
                                                                                          addr04e1:
                                                                                          §§push(this._verifiedBlueprintVo);
                                                                                          break loop18;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr02d2:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().visualName = §§pop();
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this._verifiedBlueprintVo);
                                                                                          if(!(_loc8_ || Boolean(_loc2_)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          do
                                                                                          {
                                                                                             §§push(§§pop().residentVo);
                                                                                          }
                                                                                          while(!(_loc9_ && Boolean(this)));
                                                                                          
                                                                                          §§goto(addr03f7);
                                                                                       }
                                                                                       break;
                                                                                       addr0363:
                                                                                    }
                                                                                    §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen"));
                                                                                    if(_loc8_ || Boolean(this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc8_ || Boolean(this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]));
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr02d2);
                                                                                                }
                                                                                                §§goto(addr03ab);
                                                                                             }
                                                                                             §§goto(addr03ea);
                                                                                          }
                                                                                          addr02b2:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02d2);
                                                                                    §§goto(addr0386);
                                                                                 }
                                                                                 §§goto(addr03f4);
                                                                                 addr0281:
                                                                              }
                                                                              §§goto(addr02fc);
                                                                           }
                                                                           §§goto(addr02e9);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().visualLibName = §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr0363);
                                                                           }
                                                                           §§goto(addr04e1);
                                                                        }
                                                                        addr035a:
                                                                     }
                                                                     §§goto(addr013e);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr021b:
                                                                     §§push(§§pop().residentVo);
                                                                     if(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push("gui_popups_residentialPopupNEW");
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              §§pop().visualLibName = §§pop();
                                                                              if(!(_loc9_ && Boolean(this)))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this._verifiedBlueprintVo);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                    §§push(§§pop().residentVo);
                                                                                    if(_loc8_ || Boolean(this))
                                                                                    {
                                                                                       §§push("resident_icon_richman");
                                                                                       if(!(_loc9_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          §§goto(addr0281);
                                                                                       }
                                                                                       §§goto(addr038a);
                                                                                    }
                                                                                    §§goto(addr02fc);
                                                                                 }
                                                                                 break loop18;
                                                                                 addr0246:
                                                                              }
                                                                              §§goto(addr04e1);
                                                                           }
                                                                           §§goto(addr0281);
                                                                        }
                                                                        addr0224:
                                                                     }
                                                                  }
                                                                  §§goto(addr0386);
                                                               case 1:
                                                                  §§push(this._playerResourceProxy);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§pop().richMenEnabled);
                                                                     if(!(_loc9_ && Boolean(_loc2_)))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._verifiedBlueprintVo);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§goto(addr021b);
                                                                           }
                                                                           §§goto(addr0375);
                                                                        }
                                                                        §§goto(addr04e1);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0320:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr03ea);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._verifiedBlueprintVo);
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().residentVo);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push("gui_popups_residentialPopupNEW");
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr035a);
                                                                                    }
                                                                                    §§goto(addr038a);
                                                                                 }
                                                                                 §§goto(addr0386);
                                                                              }
                                                                              addr0348:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr03f4);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr031d:
                                                                     §§push(§§pop().academicsEnabled);
                                                                  }
                                                                  §§goto(addr0320);
                                                               case 2:
                                                                  §§goto(addr031d);
                                                                  §§push(this._playerResourceProxy);
                                                               default:
                                                                  §§goto(addr04e1);
                                                            }
                                                            §§pop().residentVoList.addItem(this._verifiedBlueprintVo.residentVo.clone());
                                                            continue loop0;
                                                         }
                                                         addr0496:
                                                         addr0494:
                                                         if(ServerResConst.RESOURCE_ACADEMICS === _loc7_)
                                                         {
                                                            §§goto(addr049a);
                                                         }
                                                         else
                                                         {
                                                            §§push(3);
                                                         }
                                                         §§goto(addr04c8);
                                                         §§goto(addr049a);
                                                      }
                                                      §§goto(addr0496);
                                                   }
                                                   §§goto(addr0494);
                                                }
                                                §§goto(addr04c8);
                                             }
                                             §§goto(addr0479);
                                          }
                                          §§goto(addr0469);
                                       }
                                       §§goto(addr0483);
                                    }
                                    §§push(§§pop());
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]));
                                          if(_loc8_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                      §§push(this._verifiedBlueprintVo);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop().residentVo);
                                                         if(_loc8_ || Boolean(_loc3_))
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc9_)
                                                            {
                                                               §§pop().toolTip = §§pop();
                                                               if(_loc9_ && Boolean(_loc3_))
                                                               {
                                                                  §§goto(addr0246);
                                                               }
                                                               §§goto(addr04e1);
                                                            }
                                                            §§goto(addr03f9);
                                                         }
                                                         §§goto(addr0224);
                                                      }
                                                      §§goto(addr0348);
                                                   }
                                                   §§goto(addr04e1);
                                                }
                                                addr01a0:
                                             }
                                             §§goto(addr02d2);
                                          }
                                          §§goto(addr02b2);
                                       }
                                       addr0180:
                                    }
                                    §§goto(addr01a0);
                                 }
                                 §§goto(addr04e1);
                              }
                              §§goto(addr0180);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr03ea);
                     }
                     §§goto(addr0502);
                  }
                  §§goto(addr008e);
               }
               addr0502:
               return;
            }
            §§goto(addr0051);
         }
         §§goto(addr008e);
      }
      
      public function subData_RealCurrencyAmount() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._verifiedBlueprintVo.currentRealCurrencyAmount = this._playerResourceProxy.realCurrency;
         }
      }
      
      public function get verifiedBlueprintVo() : VerifiedBlueprintVo
      {
         return this._verifiedBlueprintVo;
      }
      
      public function get viewedArchitectureCategory() : String
      {
         return this._viewedArchitectureCategory;
      }
      
      public function set viewedArchitectureCategory(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._viewedArchitectureCategory = param1;
         }
      }
      
      public function getCategoryByConfigId(param1:Number) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ConfigPlayfieldItemDTO = this._gameConfigProxy.config.items[param1];
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  if(_loc2_.tags.indexOf(ServerTagConstants.SPECIAL) != -1)
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(BlueprintGroupConstants.BLUEPRINT_SPECIAL);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr01b0);
                  }
                  addr006a:
                  if(_loc2_.tags.indexOf(ServerTagConstants.GROUND) != -1)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(BlueprintGroupConstants.BLUEPRINT_GROUNDS);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§goto(addr0111);
                     }
                     §§goto(addr0184);
                  }
                  else
                  {
                     if(_loc2_.tags.indexOf(ServerTagConstants.DECORATION) != -1)
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr00be:
                           §§push(BlueprintGroupConstants.BLUEPRINT_DECORATION);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              return §§pop();
                           }
                           §§goto(addr0184);
                        }
                     }
                     else if(_loc2_.tags.indexOf(ServerTagConstants.POWERPLANT) != -1)
                     {
                        if(!_loc3_)
                        {
                           §§push(BlueprintGroupConstants.BLUEPRINT_POWERPLANT);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr01aa);
                        }
                        §§goto(addr01b0);
                     }
                     else
                     {
                        §§goto(addr0111);
                     }
                     §§goto(addr01aa);
                  }
                  §§goto(addr01b1);
               }
               §§goto(addr00be);
            }
            addr01b1:
            return "";
         }
         §§goto(addr0131);
      }
      
      public function getItemIndexByCatAndConfigId(param1:String, param2:Number) : int
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:IBlueprintVo = null;
         var _loc3_:ArrayCollection = this.getBlueprintsByGroup(param1);
         if(!(_loc8_ && Boolean(this)))
         {
            §§push(Boolean(_loc3_));
            if(!_loc8_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr0066);
                  }
               }
            }
            addr0062:
            §§goto(addr005e);
         }
         addr005e:
         if(Boolean(_loc3_.length))
         {
            addr0066:
            for each(_loc4_ in _loc3_.source)
            {
               if(_loc4_)
               {
                  if(!(_loc8_ && Boolean(param2)))
                  {
                     if(_loc4_.configObj.id == param2)
                     {
                        if(!(_loc8_ && Boolean(param2)))
                        {
                           return _loc3_.source.indexOf(_loc4_);
                        }
                     }
                  }
               }
            }
         }
         return -1;
      }
   }
}

