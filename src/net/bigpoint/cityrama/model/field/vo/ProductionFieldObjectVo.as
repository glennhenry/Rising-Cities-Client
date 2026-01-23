package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class ProductionFieldObjectVo extends BillboardObjectVo implements IEventDrop
   {
      
      public static const EVENT_PRODUCTION_TERM_CHANGED:String = "EVENT_PRODUCTION_TERM_CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         EVENT_PRODUCTION_TERM_CHANGED = "EVENT_PRODUCTION_TERM_CHANGED";
      }
      
      private var _playProductionAinimation:Boolean = false;
      
      private var _produceAbleGoods:Vector.<ProductionGoodObjectVo>;
      
      private var _productionBuild:Boolean;
      
      private var _productionTerm:uint = 0;
      
      private var _productionInterval:uint;
      
      private var _productionTimeLeft:Number;
      
      private var _totalProductionTime:Number;
      
      private var _playEventAnimation:Boolean;
      
      private var _currentRunningEventGFXId:Number = 0;
      
      private var _currentEventLocaleId:String;
      
      public function ProductionFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      public function getUpgradeInstantFinishCost() : Number
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:Number = NaN;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:* = 0;
         var _loc4_:ConfigOutputDTO = null;
         for each(_loc2_ in configPlayfieldItemVo.activePhases)
         {
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               if(_loc2_.phaseType != ServerPhaseTypes.INSTANT_UPGRADE)
               {
                  continue;
               }
            }
            for each(_loc4_ in _loc2_.listEntryOutputs)
            {
               §§push(_loc4_.resourceConfig);
               if(_loc10_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!(_loc10_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  §§push(_loc4_.resourceConfig);
               }
               if(§§pop().type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     _loc1_ = Math.abs(_loc4_.outputAmount);
                  }
                  break;
               }
            }
         }
         if(_loc10_)
         {
            §§push(this.maxHarvestUpgradeCount);
            if(_loc10_ || Boolean(this))
            {
               §§push(this.harvestUpgradeCount);
               if(!_loc9_)
               {
                  §§push(int(§§pop() - §§pop()));
                  if(_loc10_ || Boolean(this))
                  {
                     _loc3_ = §§pop();
                     if(_loc10_)
                     {
                        §§push(_loc3_);
                        if(_loc10_)
                        {
                           §§goto(addr0130);
                        }
                        §§goto(addr0146);
                     }
                     §§goto(addr0144);
                  }
                  addr0130:
                  §§goto(addr0132);
               }
               addr0132:
               if(§§pop() < 0)
               {
                  if(_loc10_ || Boolean(_loc1_))
                  {
                     addr0146:
                     _loc3_ = 0;
                     addr0144:
                  }
               }
               §§goto(addr0147);
            }
            §§goto(addr0146);
         }
         addr0147:
         return Math.ceil(_loc1_ * Math.pow(_loc3_,0.73));
      }
      
      public function get produceAbleGoods() : Vector.<ProductionGoodObjectVo>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(!this._produceAbleGoods)
            {
               if(!_loc1_)
               {
                  §§goto(addr0035);
               }
            }
            return this._produceAbleGoods;
         }
         addr0035:
         throw new RamaCityError("Use Factory to build");
      }
      
      public function get maxLevel() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(buildingDTO.config.upgradeable)
            {
               addr0034:
               §§push(currentLevel + 1);
               if(_loc2_)
               {
               }
            }
            else
            {
               return currentLevel;
            }
            return §§pop();
         }
         §§goto(addr0034);
      }
      
      public function set produceAbleGoods(param1:Vector.<ProductionGoodObjectVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._produceAbleGoods = param1;
         }
      }
      
      public function get isIdle() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(_loc5_ || Boolean(_loc1_))
         {
            if(_buildingDTO)
            {
               var _loc3_:* = _buildingDTO.activePhases;
               addr002f:
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                     {
                        if(!_loc4_)
                        {
                           return false;
                        }
                     }
                  }
               }
            }
            return true;
         }
         §§goto(addr002f);
      }
      
      public function get isInBuildMode() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ || Boolean(_loc1_))
               {
                  §§push(_loc1_.config);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop().phaseType);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       addr00b6:
                                       §§push(_loc1_.config);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr00c7:
                                          §§push(§§pop().phaseType);
                                          if(_loc4_)
                                          {
                                             §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc4_ || Boolean(_loc1_))
                                                {
                                                   addr00f3:
                                                   var _temp_12:* = §§pop();
                                                   addr00f4:
                                                   §§push(_temp_12);
                                                   if(!_temp_12)
                                                   {
                                                      if(_loc5_ && Boolean(this))
                                                      {
                                                         break;
                                                      }
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      addr0125:
                                                      addr0113:
                                                      addr0110:
                                                      §§push(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                      if(_loc5_ && Boolean(_loc1_))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                addr0134:
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      §§push(true);
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr0113);
                                       }
                                       §§goto(addr0110);
                                    }
                                    §§goto(addr0134);
                                 }
                                 §§goto(addr00f3);
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00b6);
            }
            return false;
         }
         return §§pop();
      }
      
      public function get upgradeReady() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(buildingDTO.config.nextConfigId != 0)
            {
               if(!_loc2_)
               {
                  §§goto(addr003a);
               }
            }
            return false;
         }
         addr003a:
         return Boolean(buildingDTO.upgradeCount >= buildingDTO.config.maxHarvestCount);
      }
      
      public function get upgradeReadyOnNextHarvest() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(buildingDTO.config.nextConfigId != 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr003b);
               }
            }
            return false;
         }
         addr003b:
         return Boolean(buildingDTO.upgradeCount + 1 >= buildingDTO.config.maxHarvestCount);
      }
      
      public function get activePhaseHasUpgrade() : PhaseDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = _buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§push(_loc1_.config);
                  if(!_loc5_)
                  {
                     §§push(§§pop().phaseType);
                     if(!_loc5_)
                     {
                        §§push(ServerPhaseTypes.UPGRADE);
                        if(!_loc5_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc5_ && _loc3_))
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              §§push(_temp_3);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          addr008a:
                                          §§push(_loc1_.expirationTime == 0);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             §§push(!§§pop());
                                             if(!_loc5_)
                                             {
                                                addr00a6:
                                                var _temp_6:* = §§pop();
                                                §§push(_temp_6);
                                                §§push(_temp_6);
                                                if(_loc4_)
                                                {
                                                   addr00ad:
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr00b7:
                                                         §§pop();
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            addr00d2:
                                                            §§push(_loc1_.config);
                                                            if(!(_loc5_ && Boolean(_loc1_)))
                                                            {
                                                               addr00e3:
                                                               §§push(§§pop().phaseType);
                                                               if(_loc4_ || Boolean(_loc1_))
                                                               {
                                                                  addr00f4:
                                                                  §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                                  if(!(_loc5_ && Boolean(this)))
                                                                  {
                                                                     addr0108:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr010f:
                                                                        var _temp_11:* = §§pop();
                                                                        §§push(_temp_11);
                                                                        §§push(_temp_11);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0120:
                                                                                 §§pop();
                                                                                 if(!(_loc4_ || Boolean(this)))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc1_.config);
                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                 {
                                                                                    addr0140:
                                                                                    §§push(§§pop().phaseType);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                                                                       if(!(_loc5_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc4_ || Boolean(_loc1_))
                                                                                          {
                                                                                             addr016c:
                                                                                             var _temp_16:* = §§pop();
                                                                                             addr016d:
                                                                                             §§push(_temp_16);
                                                                                             if(!_temp_16)
                                                                                             {
                                                                                                if(_loc4_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   addr018b:
                                                                                                   §§pop();
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr019e:
                                                                                                   addr0198:
                                                                                                   addr0195:
                                                                                                   addr0192:
                                                                                                   §§push(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr019e);
                                                                                    }
                                                                                    §§goto(addr0198);
                                                                                 }
                                                                                 §§goto(addr0195);
                                                                              }
                                                                              §§goto(addr018b);
                                                                           }
                                                                           §§goto(addr016c);
                                                                        }
                                                                        §§goto(addr016d);
                                                                     }
                                                                     §§goto(addr016c);
                                                                  }
                                                                  §§goto(addr019e);
                                                               }
                                                               §§goto(addr0198);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                         §§goto(addr0192);
                                                      }
                                                      §§goto(addr0120);
                                                   }
                                                   §§goto(addr010f);
                                                }
                                                §§goto(addr016d);
                                             }
                                          }
                                          §§goto(addr00b7);
                                       }
                                       §§goto(addr00d2);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr00f4);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr008a);
            }
            return null;
         }
         return _loc1_;
      }
      
      public function get maxHarvestUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get harvestUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get currentProductionPhase() : PhaseDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(_loc4_)
         {
            if(_buildingDTO)
            {
               addr0028:
               var _loc2_:int = 0;
               for each(_loc1_ in _buildingDTO.activePhases)
               {
                  if(_loc4_)
                  {
                     if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           return _loc1_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr0028);
      }
      
      public function get currentGoodInProduction() : ConfigGoodDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigOutputDTO = null;
         if(!_loc4_)
         {
            §§push(Boolean(_buildingDTO));
            if(_loc5_ || _loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr0056);
                     }
                     §§goto(addr005a);
                  }
               }
            }
            addr0056:
            if(Boolean(this.currentProductionPhase))
            {
               addr005a:
               var _loc2_:int = 0;
               var _loc3_:* = this.currentProductionPhase.config.listEntryOutputs;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(!(_loc5_ || Boolean(_loc1_)))
                     {
                        break;
                     }
                     §§push(_loc1_.goodConfig);
                     if(!(_loc5_ || Boolean(this)))
                     {
                        return §§pop();
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr00ac);
               §§push(_loc1_.goodConfig);
            }
            return null;
         }
         §§goto(addr005a);
      }
      
      public function get productionBuild() : Boolean
      {
         return this._productionBuild;
      }
      
      public function set productionBuild(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._productionBuild = param1;
         }
      }
      
      public function get productionTerm() : uint
      {
         return this._productionTerm;
      }
      
      public function get playProductionAinimation() : Boolean
      {
         return this._playProductionAinimation;
      }
      
      public function set playProductionAinimation(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._playProductionAinimation = param1;
         }
      }
      
      public function startProductionTime() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(this.currentProductionPhase != null)
            {
               if(!_loc1_)
               {
                  clearInterval(this._productionInterval);
                  if(_loc2_ || Boolean(this))
                  {
                     this._productionTerm = 0;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0061:
                        this._totalProductionTime = Math.floor(this.currentProductionPhase.config.durationConfig.duration / 1000);
                        if(_loc2_)
                        {
                           addr0080:
                           this._productionTimeLeft = this.currentProductionPhase.timeLeft;
                           if(_loc2_ || _loc2_)
                           {
                              this._productionTimeLeft = Math.floor(this._productionTimeLeft / 1000);
                              if(!_loc1_)
                              {
                                 addr00b9:
                                 this.checkProductionTerm();
                                 if(_loc2_)
                                 {
                                    this._productionInterval = setInterval(this.handleProductionInterval,1000);
                                 }
                              }
                              §§goto(addr00d6);
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0061);
            }
            addr00d6:
            return;
         }
         §§goto(addr0080);
      }
      
      private function handleProductionInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this._productionTimeLeft);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() - 1);
            }
            §§pop()._productionTimeLeft = §§pop();
            if(_loc2_)
            {
               this.checkProductionTerm();
            }
         }
      }
      
      private function checkProductionTerm() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(this.productionTerm);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = false;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this._productionTimeLeft);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() <= 1);
               if(!_loc4_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(isHarvestReady);
                              if(!_loc4_)
                              {
                                 addr0079:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(3);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   addr00ab:
                                                   §§push(true);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         this._productionTerm = 3;
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            this.stopProductionTime();
                                                            if(_loc4_ && _loc1_)
                                                            {
                                                               addr0126:
                                                               §§push(this.halfDone());
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr0139:
                                                                  §§push(§§pop());
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr0147:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(2);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0180:
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr0186:
                                                                                             this._productionTerm = 2;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr01b8);
                                                                                             }
                                                                                             §§goto(addr01d6);
                                                                                          }
                                                                                          §§goto(addr01b8);
                                                                                       }
                                                                                       §§goto(addr01d7);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0198:
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01b1:
                                                                                          _loc2_ = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr01b8);
                                                                                          }
                                                                                          §§goto(addr01d6);
                                                                                       }
                                                                                       §§goto(addr01d7);
                                                                                    }
                                                                                    §§goto(addr01b8);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01d6);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0196:
                                                                              §§push(1);
                                                                           }
                                                                           §§goto(addr0198);
                                                                        }
                                                                        §§goto(addr01d6);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc1_);
                                                                     }
                                                                     §§goto(addr0196);
                                                                  }
                                                                  §§goto(addr01b1);
                                                               }
                                                               §§goto(addr0180);
                                                            }
                                                         }
                                                         §§goto(addr01d6);
                                                      }
                                                      §§goto(addr0186);
                                                   }
                                                   else
                                                   {
                                                      addr0117:
                                                      §§pop();
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§goto(addr0126);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr01d6);
                                          }
                                          §§goto(addr0198);
                                       }
                                       §§goto(addr0196);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 else
                                 {
                                    addr00f9:
                                    §§push(this._productionTimeLeft);
                                    §§push(this._totalProductionTime);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§push(§§pop() <= §§pop());
                                    if(_loc3_)
                                    {
                                       addr010c:
                                       var _temp_19:* = §§pop();
                                       addr010d:
                                       §§push(_temp_19);
                                       if(!_temp_19)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr0180);
                                       }
                                       §§goto(addr0147);
                                    }
                                 }
                                 §§goto(addr01b1);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr01e9);
                        }
                        §§goto(addr0139);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr010c);
            }
            §§goto(addr00f9);
         }
         addr01b8:
         this._productionTerm = 1;
         if(_loc3_ || _loc1_)
         {
            addr01d6:
            addr01d7:
            if(_loc2_)
            {
               if(!(_loc4_ && _loc1_))
               {
                  addr01e9:
                  dispatchEvent(new Event(EVENT_PRODUCTION_TERM_CHANGED,true,true));
               }
            }
         }
      }
      
      private function halfDone() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.currentProductionPhase);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr002b:
                     §§push(this.currentProductionPhase.expirationTime);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(this.currentProductionPhase.config.durationConfig.duration);
                        if(_loc1_ || Boolean(this))
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     if(§§pop() <= currentTimeStamp)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0080:
                           §§push(true);
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0087:
                           return false;
                        }
                        return §§pop();
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0087);
            }
            §§goto(addr002b);
         }
         §§goto(addr0080);
      }
      
      public function stopProductionTime() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            clearInterval(this._productionInterval);
            if(!_loc1_)
            {
               this._totalProductionTime = 0;
               if(_loc2_)
               {
                  addr0031:
                  this._productionTimeLeft = 0;
               }
            }
            return;
         }
         §§goto(addr0031);
      }
      
      public function updateProductionTime() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._productionTimeLeft = this.currentProductionPhase.timeLeft;
            if(_loc1_ || _loc2_)
            {
               this._productionTimeLeft = Math.floor(this._productionTimeLeft / 1000);
               if(!(_loc2_ && Boolean(this)))
               {
                  this.checkProductionTerm();
               }
            }
         }
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(isConnectedToStreet);
            if(_loc7_ || Boolean(this))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || Boolean(_loc1_))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           addr005e:
                           §§push(!isUnderConstruction());
                           if(_loc7_)
                           {
                              addr006c:
                              var _temp_6:* = §§pop();
                              addr006d:
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    addr007f:
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr008a);
                                    }
                                    §§goto(addr008e);
                                 }
                              }
                              §§goto(addr008a);
                           }
                           §§goto(addr007f);
                        }
                        §§goto(addr008e);
                     }
                     addr008a:
                     if(!isHarvestReady)
                     {
                        var _loc4_:int = 0;
                        var _loc5_:* = activePhases;
                        addr008e:
                        while(true)
                        {
                           for each(_loc1_ in _loc5_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(_loc1_.config.phaseType != ServerPhaseTypes.PRODUCTION)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc1_.expirationTime);
                              if(_loc7_ || Boolean(_loc1_))
                              {
                                 §§push(§§pop() - currentTimeStamp);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       addr00f9:
                                       _loc2_ = §§pop();
                                       if(!(_loc7_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                       §§push(_loc2_);
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop() / _loc1_.config.durationConfig.duration);
                                          if(!_loc6_)
                                          {
                                             addr0133:
                                             §§push(§§pop());
                                             if(_loc7_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                          }
                                          §§goto(addr0142);
                                       }
                                       §§goto(addr0133);
                                    }
                                    §§goto(addr0142);
                                 }
                                 §§goto(addr0133);
                              }
                              §§goto(addr00f9);
                           }
                        }
                        addr0142:
                        return §§pop();
                        §§push(_loc3_);
                     }
                     return super.percentageOfRemainingTimer;
                  }
                  §§goto(addr006c);
               }
               §§goto(addr006d);
            }
            §§goto(addr007f);
         }
         §§goto(addr005e);
      }
      
      public function get currentRunningEventGFXId() : Number
      {
         return this._currentRunningEventGFXId;
      }
      
      public function set playEventAnimation(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._playEventAnimation = param1;
         }
      }
      
      public function get playEventAnimation() : Boolean
      {
         return this._playEventAnimation;
      }
      
      public function set currentRunningEventGFXId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._currentRunningEventGFXId != param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._currentRunningEventGFXId = param1;
                  if(_loc3_)
                  {
                     addr0043:
                     dispatchEvent(new Event("REQUIRED_LIB_CHANGED",true,true));
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._currentEventLocaleId = param1;
         }
      }
   }
}

