package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigFeatureDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigFeatureRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeatureProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeatureProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || FeatureProxy)
      {
         NAME = "FeatureProxy";
      }
      
      private var _flVarP:FlashVarsProxy;
      
      private var _pResP:PlayerResourceProxy;
      
      private var _plP:PlayerProxy;
      
      private var _gCP:GameConfigProxy;
      
      private var _cP:CityProxy;
      
      public function FeatureProxy(param1:String = "FeatureProxy", param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function get improvementFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.improvementFeatureUnlockLevel;
      }
      
      public function get improvementFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.improvementLevel;
      }
      
      public function get marketplaceFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.marketplaceFeatureUnlockLevel;
      }
      
      public function get marketplaceFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.marketLevel;
      }
      
      public function get boosterPackFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.boosterPackFeatureUnlockLevel;
      }
      
      public function get boosterPackFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.boosterPackLevel;
      }
      
      public function get masteryFeatureUnlockLevel() : int
      {
         var _loc1_:Vector.<ConfigFeatureRequirementDTO> = this.getFeatureEnableRequirements(ServerFeatureConstants.BUILDING_MASTERY);
         return _loc1_[0].configUserLevel.level;
      }
      
      public function isResourceUnlocked(param1:String) : Boolean
      {
         var _loc2_:ConfigResourceDTO = this.configProxy.config.resources[this.configProxy.config.resourceIds[param1]];
         return this.playerResourceProxy.userLevel >= this.configProxy.getLevelById(_loc2_.levelId).level;
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this.playerProxy.player.enabledFeatures.indexOf(param1) == -1);
         if(!(_loc3_ && Boolean(this)))
         {
            return !§§pop();
         }
      }
      
      public function getFeatureEnableRequirements(param1:String) : Vector.<ConfigFeatureRequirementDTO>
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ConfigFeatureDTO = this.configProxy.config.features[param1];
         if(!(_loc4_ && Boolean(param1)))
         {
            this.setCorrespondingRequirementConfig(_loc2_);
         }
         return _loc2_.requirements;
      }
      
      private function setCorrespondingRequirementConfig(param1:ConfigFeatureDTO) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigFeatureRequirementDTO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1.requirements)
         {
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(_loc2_.type);
               if(_loc6_)
               {
                  §§push(ServerFeatureConstants.FEATURE_REQUIRED_TYPE_LEVEL);
                  if(_loc6_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc6_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 if(_loc5_ && Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(!_loc2_.configUserLevel);
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    addr0099:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       addr00a3:
                                       _loc2_.configUserLevel = this.configProxy.config.levels[_loc2_.correspondingConfigId];
                                       if(_loc5_ && Boolean(_loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    addr00cf:
                                    addr00c9:
                                    §§push(_loc2_.type == ServerFeatureConstants.FEATURE_REQUIRED_TYPE_QUEST);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr00de:
                                       var _temp_8:* = §§pop();
                                       addr00df:
                                       §§push(_temp_8);
                                       if(_temp_8)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr00e9:
                                             §§pop();
                                             if(_loc5_ && Boolean(param1))
                                             {
                                                continue;
                                             }
                                             §§push(!_loc2_.configQuest);
                                          }
                                       }
                                    }
                                    addr010b:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          _loc2_.configQuest = this.configProxy.config.quests[_loc2_.correspondingConfigId];
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr00df);
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr00c9);
            }
            §§goto(addr00a3);
         }
      }
      
      private function get flashVarsProxy() : FlashVarsProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._flVarP);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     this._flVarP = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                  }
               }
               addr0044:
               return this._flVarP;
            }
         }
         §§goto(addr0044);
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._pResP);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._pResP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               addr0055:
               return this._pResP;
            }
         }
         §§goto(addr0055);
      }
      
      private function get playerProxy() : PlayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._plP);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr0042:
                     this._plP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               return this._plP;
            }
         }
         §§goto(addr0042);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._gCP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0033:
                     this._gCP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gCP;
            }
         }
         §§goto(addr0033);
      }
      
      private function get cityProxy() : CityProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._cP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0043:
                     this._cP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr0043);
      }
      
      public function get residentChangeUnlockLevel() : int
      {
         var _loc1_:ConfigResourceDTO = this.configProxy.config.resources[this.configProxy.config.resourceIds[ServerResConst.RESOURCE_RICHMEN]];
         return this.configProxy.getLevelById(_loc1_.levelId).level;
      }
      
      public function get residentChangeUnlocked() : Boolean
      {
         return this.isResourceUnlocked(ServerResConst.RESOURCE_RICHMEN);
      }
      
      public function get expansionBuyUnlockLevel() : int
      {
         var _loc1_:Vector.<ConfigFeatureRequirementDTO> = this.getFeatureEnableRequirements(ServerFeatureConstants.EXPANSION);
         return _loc1_[0].configUserLevel.level;
      }
      
      public function get isMoreThanOnePlayfieldEnabled() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = 0;
         if(_loc3_)
         {
            if(this.cityProxy.city.playfields.length > 1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(1);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_ = §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr005b:
                        §§push(this.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH));
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr0084:
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    addr008a:
                                    §§push(§§pop() + 1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00b2:
                                          _loc1_ = §§pop();
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00b8);
                                          }
                                          §§goto(addr00f9);
                                       }
                                       §§goto(addr00f3);
                                    }
                                    §§goto(addr012e);
                                 }
                                 §§goto(addr00b2);
                              }
                           }
                           addr00b8:
                           §§push(this.isFeatureEnabled(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH));
                           if(_loc3_ || Boolean(this))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00f3:
                                             _loc1_ = §§pop();
                                             if(!_loc2_)
                                             {
                                                §§goto(addr00f9);
                                             }
                                             §§goto(addr0154);
                                          }
                                          §§goto(addr0134);
                                       }
                                       §§goto(addr012e);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr0142);
                              }
                              addr00f9:
                              §§push(this.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH));
                              if(_loc3_)
                              {
                                 addr0109:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          addr012e:
                                          §§push(uint(§§pop() + 1));
                                          if(!_loc2_)
                                          {
                                             §§goto(addr0134);
                                          }
                                          §§goto(addr0143);
                                       }
                                       addr0134:
                                       _loc1_ = §§pop();
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr0143:
                                          addr0142:
                                          §§push(_loc1_ > 1);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr0154:
                                          §§push(false);
                                       }
                                       §§goto(addr0155);
                                    }
                                    §§goto(addr0154);
                                 }
                                 §§goto(addr0142);
                              }
                              §§goto(addr0155);
                           }
                           addr0155:
                           return §§pop();
                        }
                        §§goto(addr0109);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr005b);
            }
            §§goto(addr0154);
         }
         §§goto(addr0142);
      }
   }
}

