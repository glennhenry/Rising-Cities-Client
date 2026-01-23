package net.bigpoint.cityrama.model.storage
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.storage.vo.StorageObjectVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class StorageProxy extends Proxy
   {
      
      public static const NAME:String = "StorageProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "StorageProxy";
      }
      
      private var _stockProxy:PlayerGoodsStockProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function StorageProxy(param1:String, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(!(_loc2_ && _loc1_))
            {
               this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               addr002f:
               if(!(_loc2_ && Boolean(this)))
               {
                  this._stockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0081:
                     this._eventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                     if(_loc1_)
                     {
                        addr0099:
                        this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                     }
                  }
                  return;
               }
               §§goto(addr0081);
            }
            §§goto(addr0099);
         }
         §§goto(addr002f);
      }
      
      public function getStorageData(param1:String) : ArrayCollection
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc4_:GoodObjectVo = null;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:GoodObjectVo = null;
         var _loc8_:StorageObjectVo = null;
         var _loc11_:Object = null;
         var _loc12_:* = NaN;
         var _loc13_:InventoryImprovementVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
         for each(_loc4_ in this._stockProxy.getAllGoodsByTag(param1))
         {
            if(_loc18_)
            {
               if(this.addGoodToCollection(_loc4_))
               {
                  if(!(_loc19_ && Boolean(this)))
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         _loc5_ = [];
         if(_loc18_ || Boolean(_loc3_))
         {
            §§push(0);
            if(_loc18_)
            {
               var _loc14_:* = §§pop();
               if(!(_loc19_ && Boolean(_loc2_)))
               {
                  var _loc15_:* = _loc3_;
                  loop1:
                  while(true)
                  {
                     §§push(§§hasnext(_loc15_,_loc14_));
                     if(_loc19_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        if(_loc18_)
                        {
                           if(_loc18_ || Boolean(_loc3_))
                           {
                              if(!_loc19_)
                              {
                                 _loc5_.sort(this.sortByLevelAndMedal);
                                 if(!_loc19_)
                                 {
                                    addr022b:
                                    if(param1 == ServerImprovementConstants.IMPROVEMENT)
                                    {
                                       if(!_loc19_)
                                       {
                                          addr023e:
                                          _loc14_ = 0;
                                          addr023c:
                                          if(!_loc19_)
                                          {
                                             _loc15_ = this._stockProxy.currentImprovementStock();
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc15_,_loc14_));
                                                break loop1;
                                             }
                                          }
                                          addr027f:
                                          if(_loc18_ || Boolean(param1))
                                          {
                                             _loc5_.sort(this.sortImprovements);
                                          }
                                       }
                                    }
                                    §§push(this._eventProxy.currentRunningEventQuestGfxId);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop());
                                    }
                                    var _loc9_:* = §§pop();
                                    §§push(this._eventProxy.currentRunningEventQuestLocaleId);
                                    if(_loc18_ || Boolean(this))
                                    {
                                       §§push(§§pop().toString());
                                    }
                                    var _loc10_:* = §§pop();
                                    if(!(_loc19_ && Boolean(param1)))
                                    {
                                       _loc14_ = 0;
                                       if(!_loc19_)
                                       {
                                          for each(_loc11_ in _loc5_)
                                          {
                                             _loc8_ = new StorageObjectVo();
                                             if(_loc18_)
                                             {
                                                if(_loc11_ is InventoryImprovementVo)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      _loc8_.inventoryImprovementVo = _loc11_ as InventoryImprovementVo;
                                                      if(_loc19_)
                                                      {
                                                         addr034e:
                                                         _loc8_.eventGfxId = _loc9_;
                                                         if(!(_loc19_ && Boolean(_loc3_)))
                                                         {
                                                            _loc8_.eventLocaleId = _loc10_;
                                                            if(_loc18_ || Boolean(param1))
                                                            {
                                                               addr0378:
                                                               _loc8_.eventGfxId = _loc9_;
                                                               if(!(_loc19_ && Boolean(_loc3_)))
                                                               {
                                                                  addr038d:
                                                                  _loc8_.eventLocaleId = _loc10_;
                                                                  if(!(_loc18_ || Boolean(_loc2_)))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            addr03a2:
                                                            _loc2_.addItem(_loc8_);
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr0378);
                                                   }
                                                   else
                                                   {
                                                      addr0339:
                                                      _loc8_.goodObjectVo = _loc11_.obj as GoodObjectVo;
                                                      if(_loc18_)
                                                      {
                                                         §§goto(addr034e);
                                                      }
                                                   }
                                                   §§goto(addr03a2);
                                                }
                                                else if(_loc11_.obj)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      §§goto(addr0339);
                                                   }
                                                   §§goto(addr038d);
                                                }
                                                §§goto(addr0378);
                                             }
                                             §§goto(addr0339);
                                          }
                                       }
                                       if(_loc18_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc2_.length % 10 == 0);
                                             if(_loc18_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc19_)
                                                {
                                                   var _temp_12:* = §§pop();
                                                   §§push(_temp_12);
                                                   if(!_temp_12)
                                                   {
                                                      if(_loc18_ || Boolean(_loc2_))
                                                      {
                                                         §§pop();
                                                         if(!_loc19_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.length == 0);
                                                            }
                                                            addr0413:
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop8;
                                                      }
                                                      _loc8_ = new StorageObjectVo();
                                                      if(!_loc19_)
                                                      {
                                                         _loc2_.addItem(_loc8_);
                                                      }
                                                      continue loop8;
                                                   }
                                                   break;
                                                   addr0419:
                                                }
                                                §§goto(addr040c);
                                             }
                                             §§goto(addr0419);
                                          }
                                          return _loc2_;
                                          addr03d8:
                                       }
                                       §§goto(addr0413);
                                    }
                                    §§goto(addr03d8);
                                 }
                                 §§goto(addr023c);
                              }
                              §§goto(addr022b);
                           }
                           §§goto(addr027f);
                        }
                        addr027d:
                     }
                     else
                     {
                        _loc7_ = §§nextvalue(_loc14_,_loc15_);
                        §§push(_loc7_.config);
                        if(_loc18_)
                        {
                           §§push(int(§§pop().userLevelRequired));
                           if(!_loc19_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc18_ || Boolean(this)))
                              {
                                 continue;
                              }
                              addr010a:
                              if(!_loc7_.config.isEventGood)
                              {
                                 _loc5_.push({
                                    "obj":_loc7_,
                                    "level":_loc6_,
                                    "isMedal":_loc7_.config.isMedal,
                                    "medalSortOrder":_loc7_.gfxId
                                 });
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 continue;
                              }
                              §§push(0);
                           }
                           var _loc16_:* = §§pop();
                           if(!_loc19_)
                           {
                              var _loc17_:* = this._eventProxy.currentListOfAvailableEventQuestGoodIds;
                              if(_loc18_)
                              {
                                 loop2:
                                 for each(_loc16_ in _loc17_)
                                 {
                                    §§push(_loc16_);
                                    if(_loc18_ || Boolean(_loc2_))
                                    {
                                       var _temp_17:* = §§pop();
                                       §§push(_temp_17);
                                       §§push(_temp_17);
                                       if(!(_loc19_ && Boolean(param1)))
                                       {
                                          _loc12_ = §§pop();
                                          addr015b:
                                          §§push(_loc7_.config.id);
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc19_)
                                       {
                                          _loc6_ = -99;
                                          if(!(_loc18_ || Boolean(this)))
                                          {
                                             continue;
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc5_.push({
                                             "obj":_loc7_,
                                             "level":_loc6_,
                                             "isMedal":_loc7_.config.isMedal,
                                             "medalSortOrder":_loc7_.gfxId
                                          });
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr015b);
                                 }
                                 addr01a9:
                                 if(_loc18_ || Boolean(_loc3_))
                                 {
                                 }
                                 continue;
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr01a9);
                        }
                        §§goto(addr010a);
                     }
                  }
                  while(§§pop())
                  {
                     _loc13_ = §§nextvalue(_loc14_,_loc15_);
                     if(_loc18_ || Boolean(_loc3_))
                     {
                        _loc5_.push(_loc13_);
                     }
                     §§push(§§hasnext(_loc15_,_loc14_));
                  }
                  §§goto(addr027d);
               }
               §§goto(addr027f);
            }
            §§goto(addr023e);
         }
         §§goto(addr023c);
      }
      
      private function addGoodToCollection(param1:GoodObjectVo) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(param1.config.isKey);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(this.showGoodIfNotOwned(param1));
                     if(_loc3_ || Boolean(param1))
                     {
                        §§goto(addr006a);
                     }
                  }
                  else
                  {
                     addr0070:
                     §§push(this._resourceProxy.moreThanOnePopulationTypeEnabled);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.showGoodIfNotOwned(param1));
                              if(_loc3_)
                              {
                                 §§goto(addr0099);
                              }
                           }
                           else
                           {
                              addr009a:
                              return false;
                           }
                           return §§pop();
                        }
                        §§goto(addr009a);
                     }
                  }
                  addr0099:
                  return §§pop();
               }
               §§goto(addr0070);
            }
            addr006a:
            return §§pop();
         }
         §§goto(addr0070);
      }
      
      private function showGoodIfNotOwned(param1:GoodObjectVo) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigTagDTO = null;
         if(!_loc6_)
         {
            §§push(param1.playerStock);
            if(!(_loc6_ && Boolean(this)))
            {
               if(§§pop() <= 0)
               {
                  addr0038:
                  var _loc3_:int = 0;
                  var _loc4_:* = param1.config.tagConfigs;
                  while(true)
                  {
                     for each(_loc2_ in _loc4_)
                     {
                        if(!(_loc5_ || Boolean(_loc2_)))
                        {
                           break;
                        }
                        if(_loc2_.tagName == ServerTagConstants.CLIENT_HIDE_GOOD)
                        {
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  return false;
                  addr0036:
               }
               return true;
            }
            §§goto(addr0038);
         }
         §§goto(addr0036);
      }
      
      private function sortByLevelAndMedal(param1:Object, param2:Object) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(param1.level > param2.level)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(1);
                  if(_loc3_ || Boolean(param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0075:
                  §§push(Boolean(param1.isMedal));
                  if(_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr0097:
                              §§pop();
                              if(!(_loc4_ && Boolean(param2)))
                              {
                                 addr00a6:
                                 §§push(!param2.isMedal);
                                 if(_loc3_)
                                 {
                                    addr00b0:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          §§push(1);
                                          if(!(_loc4_ && Boolean(param2)))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr0140);
                                       }
                                       else
                                       {
                                          addr01b5:
                                          if(param2.medalSortOrder > param2.medalSortOrder)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(-1);
                                                if(!(_loc4_ && Boolean(param2)))
                                                {
                                                   §§goto(addr01d7);
                                                }
                                             }
                                             else
                                             {
                                                addr01d8:
                                                §§push(0);
                                             }
                                             §§goto(addr01da);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(Boolean(param2.isMedal));
                                       if(_loc3_)
                                       {
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(param2)))
                                                {
                                                   addr0106:
                                                   §§pop();
                                                   if(!(_loc4_ && Boolean(param2)))
                                                   {
                                                      §§push(!param1.isMedal);
                                                      if(_loc3_ || Boolean(param2))
                                                      {
                                                         §§goto(addr0127);
                                                      }
                                                      §§goto(addr0162);
                                                   }
                                                   §§goto(addr018f);
                                                }
                                                §§goto(addr0150);
                                             }
                                             addr0127:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(-1);
                                                   if(_loc3_ || Boolean(param2))
                                                   {
                                                      §§goto(addr0140);
                                                   }
                                                }
                                                else
                                                {
                                                   addr018f:
                                                   §§push(1);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      §§goto(addr01d7);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             §§push(Boolean(param2.isMedal));
                                             if(_loc3_)
                                             {
                                                addr0150:
                                                var _temp_15:* = §§pop();
                                                addr0151:
                                                §§push(_temp_15);
                                                if(_temp_15)
                                                {
                                                   if(_loc3_ || Boolean(param2))
                                                   {
                                                      addr0162:
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         addr016d:
                                                         if(Boolean(param1.isMedal))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr0176:
                                                               if(param2.medalSortOrder < param2.medalSortOrder)
                                                               {
                                                                  if(_loc3_ || Boolean(param2))
                                                                  {
                                                                     §§goto(addr018f);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr01b5);
                                                               }
                                                               §§goto(addr01d8);
                                                            }
                                                            §§goto(addr01b5);
                                                         }
                                                         §§goto(addr01d8);
                                                      }
                                                      §§goto(addr0176);
                                                   }
                                                }
                                             }
                                             §§goto(addr016d);
                                             addr01d7:
                                             return §§pop();
                                          }
                                          §§goto(addr0151);
                                       }
                                       §§goto(addr0150);
                                    }
                                    §§goto(addr01d8);
                                 }
                                 §§goto(addr0162);
                              }
                              §§goto(addr01d8);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0151);
                  }
                  §§goto(addr0097);
               }
               addr0140:
               return §§pop();
            }
            if(param1.level < param2.level)
            {
               if(_loc3_ || Boolean(this))
               {
                  §§push(-1);
                  if(_loc3_ || Boolean(param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr00a6);
               }
               addr01da:
               return §§pop();
            }
            §§goto(addr0075);
            §§goto(addr01d8);
            §§goto(addr0075);
         }
         §§goto(addr018f);
      }
      
      private function sortImprovements(param1:Object, param2:Object) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(param1.improvementVo.qualityAsInt > param2.improvementVo.qualityAsInt)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0043:
                  §§push(-1);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  §§goto(addr008c);
               }
            }
            else if(param1.improvementVo.qualityAsInt < param2.improvementVo.qualityAsInt)
            {
               if(_loc3_)
               {
                  §§push(1);
                  if(_loc3_ || Boolean(this))
                  {
                     addr008c:
                     return §§pop();
                  }
               }
               else
               {
                  addr008d:
                  return 0;
               }
               return §§pop();
            }
            §§goto(addr008d);
         }
         §§goto(addr0043);
      }
   }
}

