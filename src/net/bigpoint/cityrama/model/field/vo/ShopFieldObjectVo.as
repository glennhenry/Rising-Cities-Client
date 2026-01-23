package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   
   public class ShopFieldObjectVo extends BillboardObjectVo
   {
      
      private var _formerPosition:Cuboid;
      
      private var _satisfiesThisNeed:Boolean;
      
      private var _residentialRollOver:Boolean;
      
      private var _globalMoodModifier:Number = 1;
      
      public function ShopFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super(param1);
         }
      }
      
      public function get isIdle() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.isOperational);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function get isAlmostEmpty() : Boolean
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc1_:ConfigNeedDTO = null;
         var _loc2_:ConfigNeedStackDTO = null;
         var _loc3_:* = false;
         var _loc4_:NeedStackDTO = null;
         if(!(_loc12_ && Boolean(this)))
         {
            if(_buildingDTO == null)
            {
               if(!(_loc12_ && Boolean(_loc1_)))
               {
                  return false;
               }
            }
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.possibleNeedSatisfier;
         do
         {
            for each(_loc1_ in _loc6_)
            {
               if(!(_loc11_ || _loc3_))
               {
                  break;
               }
               var _loc7_:int = 0;
               if(!_loc12_)
               {
                  for each(_loc2_ in _loc1_.requiredGoods)
                  {
                     if(!_loc12_)
                     {
                        §§push(true);
                        if(_loc11_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc12_)
                           {
                              var _loc9_:int = 0;
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 for each(_loc4_ in this.sellableNeedStack)
                                 {
                                    §§push(_loc4_.configId);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() == _loc2_.id);
                                       if(_loc11_ || Boolean(_loc2_))
                                       {
                                          var _temp_7:* = §§pop();
                                          §§push(_temp_7);
                                          if(_temp_7)
                                          {
                                             if(_loc11_)
                                             {
                                                §§pop();
                                                if(_loc11_ || _loc3_)
                                                {
                                                   addr0117:
                                                   §§push(_loc4_.amount < Math.abs(_loc2_.configOutout.outputAmount * this._globalMoodModifier) + 3);
                                                   if(_loc11_ || Boolean(_loc2_))
                                                   {
                                                      addr013b:
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc12_ && Boolean(this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(false);
                                                   }
                                                   _loc3_ = §§pop();
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr0117);
                                 }
                              }
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc11_ || Boolean(_loc2_)))
                                    {
                                       continue;
                                    }
                                    addr0196:
                                    §§push(false);
                                 }
                                 §§goto(addr0197);
                              }
                              continue;
                           }
                           §§goto(addr0196);
                        }
                        addr0197:
                        return §§pop();
                     }
                     §§goto(addr0196);
                  }
               }
            }
            return true;
         }
         while(!_loc11_);
         
         return true;
      }
      
      public function get sellableNeedStack() : Vector.<NeedStackDTO>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(_buildingDTO == null)
            {
               if(_loc2_)
               {
                  §§goto(addr0023);
               }
            }
            return _buildingDTO.needProductStock;
         }
         addr0023:
         return new Vector.<NeedStackDTO>();
      }
      
      public function get isOperational() : Boolean
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:ConfigNeedDTO = null;
         var _loc2_:ConfigNeedStackDTO = null;
         var _loc3_:* = false;
         var _loc4_:NeedStackDTO = null;
         var _loc5_:int = 0;
         var _loc6_:* = this.possibleNeedSatisfier;
         do
         {
            for each(_loc1_ in _loc6_)
            {
               if(!_loc12_)
               {
                  break;
               }
               var _loc7_:int = 0;
               if(_loc12_)
               {
                  for each(_loc2_ in _loc1_.requiredGoods)
                  {
                     if(!_loc11_)
                     {
                        §§push(true);
                        if(_loc12_)
                        {
                           _loc3_ = §§pop();
                           if(_loc12_ || _loc3_)
                           {
                              var _loc9_:int = 0;
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 for each(_loc4_ in this.sellableNeedStack)
                                 {
                                    §§push(_loc4_.configId);
                                    if(_loc12_ || Boolean(this))
                                    {
                                       §§push(§§pop() == _loc2_.id);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop());
                                          if(_loc12_)
                                          {
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             §§push(_temp_7);
                                             if(!_loc11_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      addr00f4:
                                                      §§pop();
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc4_.amount);
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc12_)
                                                            {
                                                               addr0116:
                                                               var _temp_10:* = §§pop();
                                                               addr0117:
                                                               §§push(_temp_10);
                                                               if(_temp_10)
                                                               {
                                                                  if(_loc12_ || Boolean(_loc1_))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        addr0135:
                                                                        addr0130:
                                                                        §§push(_loc4_.amount >= Math.abs(_loc2_.configOutout.outputAmount * this._globalMoodModifier));
                                                                        if(_loc12_ || Boolean(_loc1_))
                                                                        {
                                                                           addr0156:
                                                                           if(!§§pop())
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(false);
                                                                        }
                                                                        addr0161:
                                                                        _loc3_ = §§pop();
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr0156);
                                                            }
                                                            §§goto(addr0161);
                                                         }
                                                         §§goto(addr0135);
                                                      }
                                                      §§goto(addr0130);
                                                   }
                                                }
                                                §§goto(addr0116);
                                             }
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr0156);
                                       }
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr0135);
                                 }
                              }
                              if(_loc12_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc12_ || Boolean(_loc1_)))
                                    {
                                       continue;
                                    }
                                    addr0194:
                                    §§push(false);
                                 }
                                 §§goto(addr0195);
                              }
                              continue;
                           }
                           §§goto(addr0194);
                        }
                        addr0195:
                     }
                     continue;
                     return §§pop();
                  }
               }
            }
            §§push(_buildingDTO.needProductStock == null);
            if(_loc12_)
            {
               return !§§pop();
            }
         }
         while(!(_loc12_ || Boolean(_loc2_)));
         
         return true;
      }
      
      public function get possibleNeedSatisfier() : Vector.<ConfigNeedDTO>
      {
         return configPlayfieldItemVo.needShopConfigs;
      }
      
      public function get satisfyRange() : Rectangle
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigNeedDTO = null;
         var _loc1_:Rectangle = new Rectangle(0,0,0,0);
         for each(_loc2_ in this.possibleNeedSatisfier)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               if(_loc1_.width < _loc2_.buffRangeX * 2 + configPlayfieldItemVo.sizeX)
               {
                  if(_loc6_)
                  {
                     addr0079:
                     _loc1_.width = _loc2_.buffRangeX * 2 + configPlayfieldItemVo.sizeX;
                     if(_loc5_ && Boolean(this))
                     {
                        continue;
                     }
                     addr0098:
                     if(_loc1_.height >= _loc2_.buffRangeY * 2 + configPlayfieldItemVo.sizeY)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc1_.height = _loc2_.buffRangeY * 2 + configPlayfieldItemVo.sizeY;
                  continue;
               }
               §§goto(addr0098);
            }
            §§goto(addr0079);
         }
         return _loc1_;
      }
      
      public function setFulfillsThisNeed(param1:ResidentialFieldObjectVo = null, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:NeedVo = null;
         if(_loc6_ || Boolean(param1))
         {
            if(param1 != null)
            {
               if(_loc6_)
               {
                  addr0032:
                  this._satisfiesThisNeed = false;
               }
               for each(_loc3_ in param1.residentialNeeds)
               {
                  if(!(_loc6_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  if(_loc3_.shopConfigIds.indexOf(configPlayfieldItemVo.id) != -1)
                  {
                     if(!_loc7_)
                     {
                        this._satisfiesThisNeed = true;
                        if(_loc7_ && Boolean(param1))
                        {
                           break;
                        }
                     }
                     this._residentialRollOver = param2;
                     break;
                  }
               }
            }
            else
            {
               this._satisfiesThisNeed = false;
               if(_loc6_ || Boolean(_loc3_))
               {
                  this._residentialRollOver = false;
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      public function get formerPosition() : Cuboid
      {
         return this._formerPosition;
      }
      
      public function set formerPosition(param1:Cuboid) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._formerPosition = param1;
         }
      }
      
      public function get satisfiesThisNeed() : Boolean
      {
         return this._satisfiesThisNeed;
      }
      
      public function get residentialRollOver() : Boolean
      {
         return this._residentialRollOver;
      }
      
      public function get globalMoodModifier() : Number
      {
         return this._globalMoodModifier;
      }
      
      public function set globalMoodModifier(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._globalMoodModifier = param1;
         }
      }
      
      public function get maxLevel() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(buildingDTO != null)
            {
               if(buildingDTO.config.upgradeable)
               {
                  §§goto(addr0067);
               }
               else
               {
                  §§push(currentLevel);
               }
               addr007b:
               return §§pop();
            }
            if(_loc1_ || _loc1_)
            {
               addr003c:
               §§push(1);
               if(!(_loc2_ && Boolean(this)))
               {
                  return §§pop();
               }
            }
            else
            {
               addr0067:
               §§push(currentLevel + 1);
               if(_loc2_)
               {
               }
            }
            §§goto(addr007b);
            §§goto(addr0067);
         }
         §§goto(addr003c);
      }
      
      public function get instantUpgradeStartCosts() : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc1_ in configPlayfieldItemVo.activePhases)
         {
            if(_loc7_)
            {
               if(_loc1_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
               {
                  if(_loc7_)
                  {
                     var _loc5_:int = 0;
                     if(_loc7_)
                     {
                        for each(_loc2_ in _loc1_.listEntryOutputs)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc2_.type);
                              if(_loc7_)
                              {
                                 §§push(ServerOutputConstants.RESOURCE);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc7_)
                                    {
                                       var _temp_1:* = §§pop();
                                       §§push(_temp_1);
                                       if(_temp_1)
                                       {
                                          if(_loc7_)
                                          {
                                             §§pop();
                                             if(!_loc8_)
                                             {
                                                §§push(_loc2_.resourceConfig);
                                                if(_loc7_)
                                                {
                                                   addr00bc:
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_ || Boolean(_loc1_))
                                                      {
                                                         addr00df:
                                                         addr00e6:
                                                         addr00e1:
                                                         addr00db:
                                                         if(_loc2_.resourceConfig.type != ServerResConst.RESOURCE_REALCURRENCY)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr00f0);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr00df);
                                             }
                                             addr00f0:
                                             return Math.abs(_loc2_.outputAmount);
                                          }
                                       }
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00e6);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00db);
                        }
                     }
                  }
               }
            }
         }
         return 0;
      }
   }
}

