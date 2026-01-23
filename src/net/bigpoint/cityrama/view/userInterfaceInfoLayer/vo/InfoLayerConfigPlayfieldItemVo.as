package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class InfoLayerConfigPlayfieldItemVo
   {
      
      private var _data:ConfigPlayfieldItemDTO;
      
      public function InfoLayerConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(!(_loc2_ && Boolean(param1)))
            {
               this._data = param1;
            }
         }
      }
      
      public function get moodValue() : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._data.globalBuffs;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  §§push(_loc1_.resourceConfig);
                  if(!_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        continue;
                     }
                     if(_loc4_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                     §§push(_loc1_.resourceConfig);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        addr0072:
                        §§push(§§pop().type);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc5_ || Boolean(_loc2_)))
                                 {
                                    continue;
                                 }
                                 return Math.abs(_loc1_.outputAmount);
                                 addr00a7:
                              }
                              else
                              {
                                 addr00ca:
                                 addr00c8:
                                 §§push(_loc1_.resourceConfig.type);
                                 §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr00a7);
            }
            return NaN;
         }
         return Math.abs(_loc1_.outputAmount) * -1;
      }
      
      public function get energyValue() : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._data.globalBuffs;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§push(_loc1_.resourceConfig);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == null)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        §§push(_loc1_.resourceConfig);
                        if(!_loc5_)
                        {
                           §§push(§§pop().type);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                              if(!_loc5_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§goto(addr009c);
                                    }
                                    break;
                                 }
                                 addr00c7:
                                 addr00c5:
                                 addr00c1:
                                 §§push(_loc1_.resourceConfig.type);
                                 §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00c5);
               }
               addr009c:
               return Math.abs(_loc1_.outputAmount);
            }
            return NaN;
         }
         return Math.abs(_loc1_.outputAmount) * -1;
      }
      
      public function get baseharvestOutput() : ConfigOutputDTO
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:int = 0;
         for each(_loc1_ in this._data.activePhases)
         {
            if(_loc8_)
            {
               if(_loc1_.phaseType == ServerPhaseTypes.RESIDENTIAL)
               {
                  if(_loc8_)
                  {
                     var _loc5_:int = 0;
                     if(_loc8_)
                     {
                        for each(_loc2_ in _loc1_.listEntryOutputs)
                        {
                           if(_loc8_)
                           {
                              §§push(_loc2_.resourceConfig);
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop().type);
                                 if(_loc8_)
                                 {
                                    §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc8_ || Boolean(this))
                                       {
                                          var _temp_4:* = §§pop();
                                          §§push(_temp_4);
                                          §§push(_temp_4);
                                          if(_loc8_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc7_ && Boolean(_loc1_)))
                                                {
                                                   §§goto(addr00d2);
                                                }
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr0115);
                                          }
                                          §§goto(addr0116);
                                       }
                                       addr00d2:
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(_loc2_.resourceConfig);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop().type);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                addr00f3:
                                                §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc8_ || Boolean(_loc2_))
                                                   {
                                                      addr0115:
                                                      var _temp_9:* = §§pop();
                                                      addr0116:
                                                      §§push(_temp_9);
                                                      if(!_temp_9)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr0120:
                                                            §§pop();
                                                            if(!(_loc8_ || Boolean(_loc3_)))
                                                            {
                                                               continue;
                                                            }
                                                            addr0148:
                                                            addr0143:
                                                            addr0141:
                                                            §§push(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            §§goto(addr015b);
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr0120);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr0143);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr0148);
                                 }
                                 §§goto(addr00f3);
                              }
                              §§goto(addr0141);
                           }
                           addr015b:
                           return _loc2_;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public function get timerCycle() : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._data.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc1_.phaseType == ServerPhaseTypes.RESIDENTIAL)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            return NaN;
         }
         return _loc1_.durationConfig.duration;
      }
      
      public function get goodsProduced() : Vector.<ConfigGoodDTO>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigGoodDTO> = new Vector.<ConfigGoodDTO>();
         for each(_loc2_ in this._data.activePhases)
         {
            if(!_loc8_)
            {
               var _loc6_:int = 0;
               if(_loc9_ || Boolean(this))
               {
                  for each(_loc3_ in _loc2_.listEntryOutputs)
                  {
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        if(_loc2_.phaseType == ServerPhaseTypes.PRODUCTION_START)
                        {
                           continue;
                        }
                        if(_loc8_ && Boolean(_loc2_))
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_.goodConfig);
                     if(!_loc8_)
                     {
                        §§push(§§pop() == null);
                        if(!_loc8_)
                        {
                           §§push(!§§pop());
                           if(_loc9_)
                           {
                              addr00c6:
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              if(_temp_5)
                              {
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       addr010a:
                                       addr00ec:
                                       §§push(_loc3_.goodConfig.isEventGood);
                                       if(_loc9_ || Boolean(_loc2_))
                                       {
                                          addr0109:
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc8_ && Boolean(_loc1_)))
                                          {
                                             _loc1_.push(_loc3_.goodConfig);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr0109);
                              }
                           }
                           §§goto(addr010a);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00ec);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get shopRadius() : Rectangle
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:Rectangle = null;
         var _loc2_:ConfigNeedDTO = null;
         if(_loc6_ || Boolean(_loc2_))
         {
            if(this._data.needShopConfigs.length > 0)
            {
               addr003d:
               _loc1_ = new Rectangle();
               var _loc3_:int = 0;
               for each(_loc2_ in this._data.needShopConfigs)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(_loc1_.width < _loc2_.buffRangeX * 2 + this._data.sizeX)
                     {
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           addr00a2:
                           _loc1_.width = _loc2_.buffRangeX * 2 + this._data.sizeX;
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              addr00c2:
                              if(_loc1_.height >= _loc2_.buffRangeY * 2 + this._data.sizeY)
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           _loc1_.height = _loc2_.buffRangeY * 2 + this._data.sizeY;
                           continue;
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00a2);
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      public function get shopMaxStock() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._data);
            if(_loc2_ || _loc1_)
            {
               §§push(Boolean(§§pop().needShopConfigs));
               if(_loc2_ || _loc1_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this._data);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr0093);
                     }
                  }
               }
               addr008a:
               if(Boolean(§§pop().needShopConfigs[0].requiredGoods))
               {
                  if(!_loc1_)
                  {
                     addr0097:
                     return this._data.needShopConfigs[0].requiredGoods[0].maxStack;
                     addr0093:
                  }
               }
               return NaN;
            }
            §§goto(addr0097);
         }
         §§goto(addr0093);
      }
   }
}

