package net.bigpoint.cityrama.model.storage.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class StorageObjectVo
   {
      
      private var _goodObjectVo:GoodObjectVo;
      
      private var _inventoryImprovementVo:InventoryImprovementVo;
      
      private var _eventGfxId:Number;
      
      private var _eventLocaleId:String;
      
      public function StorageObjectVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function showEmptySlot() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(!this._goodObjectVo);
            if(_loc2_ || _loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§pop();
                     addr0045:
                     return !this._inventoryImprovementVo;
                  }
               }
            }
         }
         §§goto(addr0045);
      }
      
      public function showBadge() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._inventoryImprovementVo == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function showPlus() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._goodObjectVo);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this._goodObjectVo);
                     if(_loc2_)
                     {
                        §§push(§§pop().config);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop().isSpecialGood);
                           if(_loc2_)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc1_)
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             addr0075:
                                             §§push(this._goodObjectVo);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr0086:
                                                §§push(§§pop().config);
                                                if(!_loc1_)
                                                {
                                                   addr008d:
                                                   §§push(§§pop().isMedal);
                                                   if(_loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc1_)
                                                      {
                                                         addr00a5:
                                                         var _temp_6:* = §§pop();
                                                         addr00a6:
                                                         §§push(_temp_6);
                                                         if(_temp_6)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  addr00c3:
                                                                  addr00c1:
                                                                  §§push(this._goodObjectVo.config.isEventGood);
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr00cb:
                                                                     §§push(!§§pop());
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr00d3);
                                                                     }
                                                                  }
                                                                  §§goto(addr00d1);
                                                               }
                                                               else
                                                               {
                                                                  addr00d2:
                                                                  §§push(false);
                                                               }
                                                               addr00d3:
                                                               return §§pop();
                                                            }
                                                         }
                                                         §§goto(addr00d1);
                                                      }
                                                      §§goto(addr00cb);
                                                   }
                                                   §§goto(addr00d1);
                                                }
                                                §§goto(addr00c3);
                                             }
                                             §§goto(addr00c1);
                                          }
                                          §§goto(addr00d2);
                                       }
                                    }
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00cb);
                           }
                           addr00d1:
                           return §§pop();
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr00d2);
            }
            §§goto(addr00c1);
         }
         §§goto(addr0075);
      }
      
      public function get currentStock() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._goodObjectVo);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0045:
                     §§push(this._goodObjectVo.playerStock);
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0065:
                     §§push(this._inventoryImprovementVo);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || Boolean(this))
                           {
                              addr0083:
                              §§push(this._inventoryImprovementVo.stockAmount);
                              if(!_loc2_)
                              {
                                 §§goto(addr008b);
                              }
                           }
                           else
                           {
                              addr008c:
                              return 0;
                           }
                           return §§pop();
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0083);
                  }
                  addr008b:
                  return §§pop();
               }
               §§goto(addr0065);
            }
            §§goto(addr0045);
         }
         §§goto(addr008c);
      }
      
      public function get imageAlpha() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._goodObjectVo);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this._goodObjectVo);
                     if(_loc2_)
                     {
                        addr0041:
                        §§push(§§pop().playerStock);
                        if(_loc2_)
                        {
                           if(§§pop() < 1)
                           {
                              if(_loc2_)
                              {
                                 §§push(this._goodObjectVo);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§push(§§pop().config);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop().isSpecialGood);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§push(§§pop());
                                          if(_loc2_)
                                          {
                                             §§goto(addr008c);
                                          }
                                          §§goto(addr00ba);
                                       }
                                       addr008c:
                                       var _temp_6:* = §§pop();
                                       §§push(_temp_6);
                                       if(_temp_6)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§pop();
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§goto(addr00bb);
                                             }
                                             else
                                             {
                                                addr010c:
                                                §§push(1);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr0116);
                                                }
                                             }
                                             §§goto(addr0113);
                                          }
                                       }
                                       addr00bb:
                                       §§goto(addr00b2);
                                    }
                                    addr00b2:
                                    §§goto(addr00b0);
                                 }
                                 addr00b0:
                                 §§goto(addr00ac);
                              }
                              addr00ac:
                              §§push(this._goodObjectVo.config.isEventGood);
                              if(!_loc1_)
                              {
                                 addr00ba:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(1);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       return §§pop();
                                    }
                                    addr0113:
                                    return §§pop();
                                 }
                              }
                              return 0.3;
                           }
                           addr0114:
                           §§push(1);
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr010c);
               }
               else if(this._inventoryImprovementVo)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr010c);
                  }
                  else
                  {
                     §§goto(addr0114);
                  }
                  return §§pop();
               }
               §§goto(addr0114);
            }
            §§goto(addr0041);
         }
         §§goto(addr0114);
      }
      
      public function get imageData() : BriskDynaVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(_loc4_ || Boolean(_loc3_))
         {
            §§push(this._goodObjectVo);
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     addr0054:
                     if(this._goodObjectVo.config.isEventGood)
                     {
                        if(_loc4_)
                        {
                           §§push(this._eventGfxId);
                           if(_loc4_)
                           {
                              §§push(§§pop().toString());
                              if(!_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc4_ || Boolean(_loc3_))
                                 {
                                    addr0098:
                                    §§push(this._eventGfxId + "_gui_resources_icons");
                                    if(_loc4_)
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc4_ || Boolean(_loc1_))
                                       {
                                          addr00dd:
                                          §§push("ressource_");
                                          if(!_loc5_)
                                          {
                                             §§goto(addr00e6);
                                          }
                                          §§goto(addr00f4);
                                       }
                                       else
                                       {
                                          §§goto(addr0126);
                                       }
                                    }
                                    addr00e6:
                                    §§push(§§pop() + this._goodObjectVo.gfxId);
                                    if(_loc4_)
                                    {
                                       addr00f4:
                                       §§push(§§pop() + "_medium");
                                    }
                                    _loc2_ = §§pop();
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr00dd);
                              }
                              else
                              {
                                 addr00c6:
                                 _loc3_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push("gui_resources_icons");
                                    if(!_loc5_)
                                    {
                                       _loc1_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          §§goto(addr00dd);
                                       }
                                       §§goto(addr0105);
                                    }
                                 }
                                 else
                                 {
                                    addr0138:
                                    return null;
                                    addr0137:
                                 }
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr0098);
                        }
                        addr0105:
                        return new BriskDynaVo(_loc1_,_loc2_,_loc3_);
                     }
                     §§push(null);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§goto(addr00c6);
                        §§push(§§pop());
                     }
                     §§goto(addr0138);
                  }
               }
               else if(this._inventoryImprovementVo)
               {
                  if(!_loc5_)
                  {
                     addr0126:
                     return ImprovementLayerProxy.improvementGfx(this._inventoryImprovementVo.improvementVo.config);
                  }
               }
               §§goto(addr0137);
            }
            §§goto(addr0054);
         }
         §§goto(addr00dd);
      }
      
      public function getBackgroundPrintByIndex(param1:int) : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(_loc5_ || Boolean(param1))
         {
            §§push(this._goodObjectVo);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§push("gui_popups_storagePopup");
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           §§push("ressource_cardboard1_small");
                           if(_loc5_)
                           {
                              _loc3_ = §§pop();
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 addr0065:
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                §§push(3);
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   addr009d:
                                                   §§push(§§pop() % §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(0);
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc5_ || Boolean(_loc3_))
                                                            {
                                                               §§push("ressource_cardboard3_small");
                                                               if(_loc5_)
                                                               {
                                                                  addr00cf:
                                                                  _loc3_ = §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr0121:
                                                                     §§push(this._goodObjectVo);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop().config);
                                                                        if(_loc5_ || Boolean(param1))
                                                                        {
                                                                           §§push(§§pop().isSpecialGood);
                                                                           if(_loc5_ || Boolean(_loc2_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push("specialgood_cardBoard_small");
                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr016f:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc5_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr017e:
                                                                                          addr0187:
                                                                                          addr0184:
                                                                                          addr0182:
                                                                                          if(this._goodObjectVo.config.isEventGood)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr0195:
                                                                                                _loc3_ = "eventgood_cardBoard_small";
                                                                                                addr0191:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr01e5);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0196);
                                                                                    }
                                                                                    §§goto(addr0195);
                                                                                 }
                                                                                 §§goto(addr0196);
                                                                              }
                                                                              §§goto(addr017e);
                                                                           }
                                                                           §§goto(addr0187);
                                                                        }
                                                                        §§goto(addr0184);
                                                                     }
                                                                     §§goto(addr0182);
                                                                  }
                                                                  §§goto(addr017e);
                                                               }
                                                               else
                                                               {
                                                                  addr0112:
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr0121);
                                                                  }
                                                               }
                                                               §§goto(addr0191);
                                                            }
                                                            addr0196:
                                                            return new BriskDynaVo(_loc2_,_loc3_);
                                                         }
                                                         addr00ee:
                                                         addr00ec:
                                                         addr00eb:
                                                         addr00db:
                                                         if(param1 % 2 == 0)
                                                         {
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push("ressource_cardboard2_small");
                                                               if(!(_loc4_ && Boolean(_loc3_)))
                                                               {
                                                                  §§goto(addr0112);
                                                               }
                                                               §§goto(addr016f);
                                                            }
                                                            §§goto(addr0191);
                                                         }
                                                         §§goto(addr0121);
                                                      }
                                                      §§goto(addr00ee);
                                                   }
                                                   §§goto(addr00ec);
                                                }
                                                §§goto(addr00eb);
                                             }
                                             §§goto(addr00db);
                                          }
                                          §§goto(addr0191);
                                       }
                                       §§goto(addr0121);
                                    }
                                    §§goto(addr009d);
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr0121);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr0191);
                     }
                     §§goto(addr016f);
                  }
                  §§goto(addr0065);
               }
               else if(this._inventoryImprovementVo)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     return ImprovementLayerProxy.improvementBackground(this._inventoryImprovementVo.improvementVo.config.quality);
                  }
               }
               addr01e5:
               return null;
            }
            §§goto(addr0182);
         }
         §§goto(addr0065);
      }
      
      public function get backgroundTooltip() : String
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:Vector.<String> = null;
         var _loc5_:* = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:* = null;
         var _loc8_:Vector.<String> = null;
         var _loc9_:* = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:* = null;
         if(!(_loc14_ && Boolean(_loc3_)))
         {
            §§push(this._goodObjectVo);
            if(!(_loc14_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc14_)
                  {
                     §§push(this._goodObjectVo);
                     if(_loc15_ || Boolean(this))
                     {
                        §§push(§§pop().config);
                        if(!_loc14_)
                        {
                           §§push(§§pop().isKey);
                           if(_loc15_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    §§push(LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.residentChangePermit"));
                                    if(!(_loc14_ && Boolean(_loc2_)))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr00c1:
                                    §§push(this._goodObjectVo);
                                    if(!(_loc14_ && Boolean(_loc2_)))
                                    {
                                       addr00d8:
                                       addr00d5:
                                       addr00d3:
                                       if(§§pop().config.isEventGood)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§push(LocaUtils);
                                             §§push("rcl.citysquarequests.");
                                             if(_loc15_)
                                             {
                                                §§push(§§pop() + this._eventLocaleId);
                                             }
                                             §§push("rcl.citysquarequests.");
                                             if(_loc15_ || Boolean(_loc2_))
                                             {
                                                §§push(this._eventLocaleId);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() + ".goods.tooltip.");
                                                      if(!(_loc14_ && Boolean(_loc1_)))
                                                      {
                                                         addr012d:
                                                         addr0126:
                                                         §§push(§§pop() + this._goodObjectVo.localeId);
                                                      }
                                                   }
                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                   if(!_loc14_)
                                                   {
                                                      §§goto(addr0137);
                                                   }
                                                   else
                                                   {
                                                      addr0176:
                                                      _loc1_ = §§pop();
                                                      addr0175:
                                                      if(!(_loc14_ && Boolean(this)))
                                                      {
                                                         addr0185:
                                                         §§push("");
                                                         if(_loc15_ || Boolean(_loc3_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               addr019e:
                                                               _loc3_ = "";
                                                               addr019c:
                                                               if(_loc15_ || Boolean(_loc1_))
                                                               {
                                                                  addr01ad:
                                                                  addr01b1:
                                                                  if(this._goodObjectVo.producer.length > 0)
                                                                  {
                                                                     addr01bc:
                                                                     _loc4_ = new Vector.<String>();
                                                                     var _loc12_:* = 0;
                                                                     var _loc13_:* = this._goodObjectVo.producer;
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc13_,_loc12_));
                                                                        if(!(_loc15_ || Boolean(_loc3_)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           _loc6_ = §§nextvalue(_loc12_,_loc13_);
                                                                           if(!(_loc14_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(LocaUtils);
                                                                              §§push("rcl.playfielditems.name");
                                                                              §§push("rcl.playfielditems.name.");
                                                                              if(_loc15_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§push(§§pop() + _loc6_.localeId);
                                                                              }
                                                                              §§push(§§pop().getString(§§pop(),§§pop()));
                                                                              if(!(_loc14_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              if(_loc14_ && Boolean(_loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           if(_loc4_.indexOf(_loc5_) == -1)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc4_.push(_loc5_);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(_loc15_ || Boolean(_loc1_))
                                                                        {
                                                                           if(!(_loc14_ && Boolean(_loc1_)))
                                                                           {
                                                                              if(_loc15_ || Boolean(this))
                                                                              {
                                                                                 _loc12_ = 0;
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc13_ = _loc4_;
                                                                                    if(_loc14_ && Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc13_,_loc12_));
                                                                                       break loop0;
                                                                                    }
                                                                                    addr034e:
                                                                                    addr0347:
                                                                                 }
                                                                                 addr0350:
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr036e:
                                                                                    if(this._goodObjectVo.consumer.length > 0)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr0383:
                                                                                          _loc8_ = new Vector.<String>();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc14_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                _loc12_ = §§pop();
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc13_ = this._goodObjectVo.consumer;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc13_,_loc12_));
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc10_ = §§nextvalue(_loc12_,_loc13_);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(LocaUtils);
                                                                                                               §§push("rcl.playfielditems.name");
                                                                                                               §§push("rcl.playfielditems.name.");
                                                                                                               if(_loc15_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc10_.localeId);
                                                                                                               }
                                                                                                               §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                               if(!(_loc14_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               _loc9_ = §§pop();
                                                                                                               if(_loc15_ || Boolean(this))
                                                                                                               {
                                                                                                                  if(_loc8_.indexOf(_loc9_) != -1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!(_loc15_ || Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            _loc8_.push(_loc9_);
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc15_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            if(_loc15_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr045b:
                                                                                                               if(!(_loc14_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr046d:
                                                                                                                  _loc12_ = 0;
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr0475:
                                                                                                                     _loc13_ = _loc8_;
                                                                                                                     if(!(_loc14_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        loop4:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc13_,_loc12_));
                                                                                                                           addr0505:
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              §§push(§§nextvalue(_loc12_,_loc13_));
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push("");
                                                                                                                                    if(_loc15_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr04ca:
                                                                                                                                             }
                                                                                                                                             addr04f3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(", ");
                                                                                                                                                addr04f6:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + _loc11_);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(!(_loc14_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr04f3);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr04f6);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04ca);
                                                                                                                              }
                                                                                                                              §§goto(addr04f3);
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           addr050b:
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr051b:
                                                                                                                              §§push(this.goodObjectVo.config.isConstructionGood);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo.constructionGood",[_loc1_,_loc2_]));
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0592:
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr059d:
                                                                                                                                          addr059c:
                                                                                                                                          if(§§pop() == " - ")
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(LocaUtils);
                                                                                                                                                §§push("rcl.tooltips.storageBook");
                                                                                                                                                §§push("rcl.tooltips.storageBook.detailInfo.");
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + this._goodObjectVo.localeId);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr05d4);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr05db:
                                                                                                                                                §§push(LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo",[_loc1_,_loc2_,_loc3_]));
                                                                                                                                             }
                                                                                                                                             §§goto(addr05ec);
                                                                                                                                          }
                                                                                                                                          §§goto(addr05db);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr05ec:
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(" - ");
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(_loc15_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          var _temp_26:* = §§pop();
                                                                                                                                          §§push(_temp_26);
                                                                                                                                          if(_temp_26)
                                                                                                                                          {
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                addr0583:
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc15_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0592);
                                                                                                                                                }
                                                                                                                                                §§goto(addr05db);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr059d);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0583);
                                                                                                                                    }
                                                                                                                                    §§goto(addr059c);
                                                                                                                                 }
                                                                                                                                 addr05d4:
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr0583);
                                                                                                                           }
                                                                                                                           §§goto(addr05db);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04c2);
                                                                                                                  }
                                                                                                                  §§goto(addr050b);
                                                                                                               }
                                                                                                               §§goto(addr05db);
                                                                                                            }
                                                                                                            §§goto(addr0475);
                                                                                                         }
                                                                                                         §§goto(addr050b);
                                                                                                      }
                                                                                                      §§goto(addr0505);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr045b);
                                                                                             }
                                                                                             §§goto(addr046d);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc3_ = " - ";
                                                                                    }
                                                                                    §§goto(addr051b);
                                                                                 }
                                                                                 §§goto(addr0383);
                                                                              }
                                                                              §§goto(addr051b);
                                                                           }
                                                                           §§goto(addr0350);
                                                                        }
                                                                        §§goto(addr034e);
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        §§push(§§nextvalue(_loc12_,_loc13_));
                                                                        if(_loc15_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc15_ || Boolean(_loc1_))
                                                                              {
                                                                                 §§push("");
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc15_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr030f:
                                                                                             §§push(§§pop());
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                if(_loc14_ && Boolean(_loc2_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0346:
                                                                                                _loc2_ = §§pop();
                                                                                             }
                                                                                             §§goto(addr0347);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0338:
                                                                                             addr033b:
                                                                                             §§push(§§pop() + ", ");
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§goto(addr0346);
                                                                                       }
                                                                                       §§goto(addr0347);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc15_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§goto(addr0338);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0346);
                                                                                 }
                                                                                 §§goto(addr033b);
                                                                              }
                                                                              §§goto(addr0338);
                                                                           }
                                                                           §§goto(addr0347);
                                                                        }
                                                                        §§goto(addr030f);
                                                                     }
                                                                     §§goto(addr034e);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(" - ");
                                                                     if(_loc15_ || Boolean(this))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr05ef);
                                                                     }
                                                                  }
                                                                  §§goto(addr036e);
                                                               }
                                                            }
                                                            §§goto(addr01bc);
                                                         }
                                                         §§goto(addr019e);
                                                      }
                                                      §§goto(addr019c);
                                                   }
                                                }
                                                §§goto(addr012d);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr01ad);
                                       }
                                       else
                                       {
                                          §§push(LocaUtils);
                                          §§push("rcl.goods.goodname");
                                          §§push("rcl.goods.goodname.");
                                          if(_loc15_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop() + this._goodObjectVo.localeId);
                                          }
                                          §§push(§§pop().getString(§§pop(),§§pop()));
                                          if(_loc15_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr0175);
                                          }
                                       }
                                       §§goto(addr0176);
                                    }
                                    §§goto(addr01b1);
                                 }
                                 addr0137:
                                 return §§pop();
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr01b1);
                  }
                  §§goto(addr00c1);
               }
               else
               {
                  §§push("");
               }
               addr05ef:
               return §§pop();
            }
            §§goto(addr00d3);
         }
         §§goto(addr0185);
      }
      
      public function badgeData() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this._inventoryImprovementVo)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr003d);
               }
            }
            return null;
         }
         addr003d:
         return ImprovementLayerProxy.improvementQualityBadge(this._inventoryImprovementVo.improvementVo.config.quality);
      }
      
      public function get configId() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._goodObjectVo);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0046:
                     addr0042:
                     §§push(this._goodObjectVo.config.id);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr0085);
                  }
               }
               else
               {
                  §§push(this._inventoryImprovementVo);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr0084:
                           return this._inventoryImprovementVo.improvementVo.config.id;
                           addr007d:
                        }
                     }
                     addr0085:
                     return 0;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0084);
            }
            §§goto(addr0046);
         }
         §§goto(addr0042);
      }
      
      public function get goodObjectVo() : GoodObjectVo
      {
         return this._goodObjectVo;
      }
      
      public function set goodObjectVo(param1:GoodObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._goodObjectVo = param1;
         }
      }
      
      public function set inventoryImprovementVo(param1:InventoryImprovementVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._inventoryImprovementVo = param1;
         }
      }
      
      public function set eventGfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._eventGfxId = param1;
         }
      }
      
      public function set eventLocaleId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._eventLocaleId = param1;
         }
      }
   }
}

