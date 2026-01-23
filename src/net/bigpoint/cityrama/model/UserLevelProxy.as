package net.bigpoint.cityrama.model
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class UserLevelProxy extends Proxy
   {
      
      public static const NAME:String = "UserLevelProxy";
      
      public static const NO_NEXT_SUBLEVEL:int = -666;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "UserLevelProxy";
         if(_loc1_ || _loc2_)
         {
            NO_NEXT_SUBLEVEL = -666;
         }
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _currentLevelId:Number;
      
      public function UserLevelProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               addr0035:
               this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private static function hidePlayfieldItem(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1.tags.indexOf(ServerTagConstants.CLIENT_HIDE_LEVELUP) != -1)
            {
               if(_loc3_ || UserLevelProxy)
               {
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004b:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr004b);
      }
      
      private static function hideGood(param1:ConfigGoodDTO) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(param1.isTaggedGoodByTagName(ServerTagConstants.CLIENT_HIDE_LEVELUP));
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0060:
                     §§push(true);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr006f:
                     §§push(false);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006f);
            }
            addr0070:
            return §§pop();
         }
         §§goto(addr0060);
      }
      
      public function get userIsMaxlevel() : Boolean
      {
         return this.getNextFullLevel(this.currentLevelId) == null;
      }
      
      public function getConfigByLevelId(param1:Number) : ConfigUserLevelDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigUserLevelDTO = null;
         for each(_loc2_ in this._configProxy.config.levels)
         {
            if(_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get levelsForQuestSlots() : Vector.<Number>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigUserLevelDTO = null;
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         var _loc2_:* = 0;
         for each(_loc3_ in this._configProxy.config.levels)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               §§push(_loc3_.availableQuestSlots);
               if(!_loc6_)
               {
                  if(§§pop() <= _loc2_)
                  {
                     continue;
                  }
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     addr0082:
                     _loc1_.push(_loc3_.level);
                     if(!(_loc7_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
                  §§push(_loc3_.availableQuestSlots);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§push(§§pop());
                  }
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr0082);
         }
         return _loc1_;
      }
      
      public function isSubLevel(param1:Number) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(_loc2_.previousLevelId);
         if(!_loc4_)
         {
            §§push(_loc3_ == null);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  addr005c:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        §§pop();
                        addr0070:
                        return _loc2_.level == _loc3_.level;
                     }
                  }
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr0070);
      }
      
      public function getNextFullLevel(param1:Number) : ConfigUserLevelDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ConfigUserLevelDTO = null;
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               _loc3_ = this.getConfigByLevelId(_loc2_.nextLevelId);
               addr003b:
               if(_loc5_)
               {
                  if(_loc3_)
                  {
                     while(this.isSubLevel(_loc3_.id))
                     {
                        _loc3_ = this.getConfigByLevelId(_loc3_.nextLevelId);
                     }
                     if(!_loc4_)
                     {
                        return _loc3_;
                     }
                     addr0071:
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0071);
            }
            addr0085:
            return null;
         }
         §§goto(addr003b);
      }
      
      public function getLastSubLevelCap(param1:Number, param2:Number = 0) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         if(!(_loc4_ && Boolean(param2)))
         {
            if(this.isSubLevel(_loc3_.id))
            {
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  §§push(this);
                  §§push(_loc3_.previousLevelId);
                  §§push(_loc3_.xp);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(§§pop() + param2);
                  }
                  §§push(§§pop().getLastSubLevelCap(§§pop(),§§pop()));
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0086:
                  return param2;
               }
               return §§pop();
            }
         }
         §§goto(addr0086);
      }
      
      public function getNextSubLevelCap(param1:Number) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(_loc2_.nextLevelId);
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            if(_loc3_)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  if(this.isSubLevel(_loc3_.id))
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr007f);
               }
               addr007a:
               return _loc3_.requiredXP;
            }
         }
         addr007f:
         return NO_NEXT_SUBLEVEL;
      }
      
      public function getLevelUpVoById(param1:int, param2:String) : LevelUpVo
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc6_:DropInfoVo = null;
         var _loc8_:RewardItemComponentVo = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:Object = null;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:ConfigGoodDTO = null;
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc4_:LevelUpVo = new LevelUpVo();
         _loc4_.level = _loc3_.level;
         var _loc5_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         var _loc7_:ArrayCollection = new ArrayCollection();
         var _loc14_:int = 0;
         var _loc15_:* = _loc3_.levelOutputs;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc15_,_loc14_));
            if(_loc17_)
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc16_ || Boolean(this))
               {
                  if(_loc16_ || Boolean(this))
                  {
                     if(_loc16_)
                     {
                        _loc4_.rewardDrops = _loc5_;
                     }
                     _loc14_ = 0;
                  }
                  _loc15_ = this._configProxy.config.items;
                  while(true)
                  {
                     §§push(§§hasnext(_loc15_,_loc14_));
                     break loop0;
                  }
                  addr02bd:
               }
               addr02c4:
               if(!_loc17_)
               {
                  _loc14_ = 0;
               }
               for each(_loc13_ in this._configProxy.config.goods)
               {
                  _loc10_ = null;
                  _loc11_ = null;
                  if(_loc17_ && Boolean(this))
                  {
                     break;
                  }
                  if(_loc13_.levelId != param1)
                  {
                     continue;
                  }
                  if(!(_loc16_ || Boolean(param2)))
                  {
                     break;
                  }
                  if(hideGood(_loc13_))
                  {
                     break;
                  }
                  _loc11_ = {};
                  _loc11_.t = ServerOutputConstants.GOOD;
                  if(!_loc17_)
                  {
                     _loc11_.cid = _loc13_.id;
                     if(!(_loc17_ && Boolean(_loc3_)))
                     {
                        _loc11_.o = 0;
                        if(_loc16_)
                        {
                           addr036b:
                           _loc11_.m = 0;
                        }
                        _loc10_ = new ConfigOutputDTO(_loc11_);
                        _loc10_.goodConfig = _loc13_;
                        _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc10_,param2,true);
                        if(_loc8_)
                        {
                           if(!(_loc17_ && Boolean(param2)))
                           {
                              _loc7_.addItem(_loc8_);
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr036b);
               }
               if(!_loc17_)
               {
                  RewardLayerProxy.sortRewardList(_loc7_);
                  if(!(_loc17_ && Boolean(this)))
                  {
                     addr03e4:
                     _loc4_.rewards = _loc7_;
                  }
                  return _loc4_;
               }
               §§goto(addr03e4);
            }
            else
            {
               _loc9_ = §§nextvalue(_loc14_,_loc15_);
               _loc8_ = null;
               _loc6_ = null;
               if(!_loc17_)
               {
                  if(_loc9_.goodConfig)
                  {
                     if(_loc16_)
                     {
                        §§push(hideGood(_loc9_.goodConfig));
                        if(_loc16_)
                        {
                           if(§§pop())
                           {
                              if(_loc16_)
                              {
                                 continue;
                              }
                              addr00f5:
                              addr00e9:
                              if(hidePlayfieldItem(_loc9_.playfieldItemConfig))
                              {
                                 continue;
                              }
                           }
                           addr00fd:
                           _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc9_,param2,false);
                           if(_loc8_)
                           {
                              if(!(_loc17_ && Boolean(param1)))
                              {
                                 _loc7_.addItem(_loc8_);
                              }
                              _loc6_ = RewardLayerProxy.generateDropInfo(_loc9_);
                              if(_loc6_)
                              {
                                 if(_loc16_ || Boolean(param1))
                                 {
                                    _loc5_.push(_loc6_);
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00e9);
                  }
                  else if(_loc9_.playfieldItemConfig)
                  {
                     if(_loc17_ && Boolean(param2))
                     {
                        continue;
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr00e9);
            }
         }
         while(§§pop())
         {
            _loc12_ = §§nextvalue(_loc14_,_loc15_);
            _loc10_ = null;
            _loc11_ = null;
            if(_loc17_)
            {
               break;
            }
            §§push(_loc12_.levelId == param1);
            if(!(_loc17_ && Boolean(param2)))
            {
               var _temp_18:* = §§pop();
               §§push(_temp_18);
               if(_temp_18)
               {
                  if(!_loc17_)
                  {
                     addr01e5:
                     §§pop();
                     if(_loc16_)
                     {
                        §§push(_loc12_.buyable);
                        if(!(_loc17_ && Boolean(param2)))
                        {
                           addr01ff:
                           §§push(§§pop());
                           if(!_loc17_)
                           {
                              addr0206:
                              if(§§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 addr0210:
                                 §§push(_loc12_.isUpgrade);
                                 if(_loc16_ || Boolean(param1))
                                 {
                                    addr0223:
                                    if(!§§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          break;
                                       }
                                       addr0236:
                                       if(hidePlayfieldItem(_loc12_))
                                       {
                                          break;
                                       }
                                       _loc11_ = {};
                                       _loc11_.t = ServerOutputConstants.PLAYFIELD_ITEM;
                                       if(_loc16_)
                                       {
                                          _loc11_.cid = _loc12_.id;
                                          if(!_loc17_)
                                          {
                                             _loc11_.o = _loc12_.permissionConfig.initialPermissions;
                                             if(_loc16_)
                                             {
                                                addr0279:
                                                _loc11_.m = 0;
                                             }
                                             _loc10_ = new ConfigOutputDTO(_loc11_);
                                             _loc10_.playfieldItemConfig = _loc12_;
                                             _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc10_,param2,true);
                                             if(_loc8_)
                                             {
                                                if(!(_loc17_ && Boolean(param1)))
                                                {
                                                   _loc7_.addItem(_loc8_);
                                                }
                                             }
                                             §§goto(addr02bd);
                                          }
                                       }
                                       §§goto(addr0279);
                                    }
                                    §§goto(addr02bd);
                                 }
                                 §§goto(addr0236);
                              }
                              §§goto(addr02bd);
                           }
                        }
                        §§goto(addr0223);
                     }
                     §§goto(addr0210);
                  }
                  §§goto(addr01ff);
               }
               §§goto(addr0206);
            }
            §§goto(addr01e5);
         }
         §§goto(addr02c4);
      }
      
      public function get currentLevelId() : Number
      {
         return this._currentLevelId;
      }
      
      public function set currentLevelId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._currentLevelId = param1;
         }
      }
   }
}

