package net.bigpoint.cityrama.model.menu
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.menu.vo.HUDVo;
   import net.bigpoint.cityrama.model.menu.vo.PopulationTypeVo;
   import net.bigpoint.cityrama.model.menu.vo.SpecialCurrencyVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class HUDProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "HUDProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "HUDProxy";
      }
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _userLevelProxy:UserLevelProxy;
      
      public function HUDProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            if(_loc1_ || _loc2_)
            {
               this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
               if(!(_loc2_ && _loc1_))
               {
                  this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  if(!_loc2_)
                  {
                     addr007e:
                     this._userLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
                  }
               }
               return;
            }
         }
         §§goto(addr007e);
      }
      
      public function get hudVo() : HUDVo
      {
         return this.buildHUDVo();
      }
      
      private function buildHUDVo() : HUDVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HUDVo = new HUDVo();
         if(_loc2_)
         {
            _loc1_.virtualCurrency = this._playerResourceProxy.ingameCurrency;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.realCurrency = this._playerResourceProxy.realCurrency;
               if(!_loc3_)
               {
                  _loc1_.xp = this._playerResourceProxy.experience;
                  if(!_loc3_)
                  {
                     addr0058:
                     _loc1_.xpCap = this._playerResourceProxy.maxExperience;
                     if(!_loc3_)
                     {
                        _loc1_.xpNextSubLevelCap = this._userLevelProxy.getNextSubLevelCap(this._userLevelProxy.currentLevelId);
                        if(_loc2_)
                        {
                           _loc1_.xpLastSubLevelCap = this._userLevelProxy.getLastSubLevelCap(this._userLevelProxy.currentLevelId);
                           if(!_loc3_)
                           {
                              _loc1_.energy = this._globalBalanceProxy.energyPercental;
                              if(!_loc3_)
                              {
                                 _loc1_.energyModifier = this._globalBalanceProxy.energyOutputModifier;
                                 addr00ab:
                                 if(!_loc3_)
                                 {
                                    _loc1_.happiness = this._globalBalanceProxy.happinessPercental;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.happinessModifier = this._globalBalanceProxy.happinessOutputModifier;
                                       if(_loc2_)
                                       {
                                          addr00ee:
                                          _loc1_.level = this._playerResourceProxy.userLevel;
                                          if(_loc2_)
                                          {
                                             _loc1_.maxPopulation = this._playerResourceProxy.maxPopulation;
                                             if(_loc2_)
                                             {
                                                addr010e:
                                                _loc1_.producedEnergy = this._playfieldProxy.energyProduced;
                                                if(!_loc3_)
                                                {
                                                   _loc1_.usedEnergy = this._playfieldProxy.energyConsumed;
                                                   if(_loc2_)
                                                   {
                                                      addr012e:
                                                      _loc1_.producedHappiness = this._playfieldProxy.happynessProduced;
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr0152:
                                                         _loc1_.usedHappiness = this._playfieldProxy.happynessConsumed;
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            addr016a:
                                                            _loc1_.population = this.buildPopulationInfo();
                                                            if(_loc2_)
                                                            {
                                                               addr0179:
                                                               _loc1_.specialCurrencies = this.buildSpecialCurrencyInfo();
                                                            }
                                                         }
                                                         §§goto(addr0183);
                                                      }
                                                      §§goto(addr016a);
                                                   }
                                                   §§goto(addr0179);
                                                }
                                                §§goto(addr0183);
                                             }
                                             §§goto(addr016a);
                                          }
                                       }
                                    }
                                    §§goto(addr0152);
                                 }
                              }
                              addr0183:
                              return _loc1_;
                           }
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr016a);
               }
               §§goto(addr012e);
            }
            §§goto(addr00ee);
         }
         §§goto(addr0058);
      }
      
      private function buildSpecialCurrencyInfo() : Vector.<SpecialCurrencyVo>
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Vector.<SpecialCurrencyVo> = new Vector.<SpecialCurrencyVo>();
         §§push(ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints")));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints")));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.push(new SpecialCurrencyVo("gui_main_hud","ui_mainbar_productionpoint_icon",this._playerResourceProxy.productionPoints,ServerResConst.RESOURCE_PRODUCTIONPOINTS,_loc3_));
            if(_loc5_ || _loc3_)
            {
               §§goto(addr00ad);
            }
            §§goto(addr00d0);
         }
         addr00ad:
         if(this._playerResourceProxy.academicsEnabled)
         {
            if(!(_loc4_ && _loc2_))
            {
               addr00d0:
               _loc1_.push(new SpecialCurrencyVo("gui_main_hud","ui_mainbar_educationpoint_icon",this._playerResourceProxy.educationPoints,ServerResConst.RESOURCE_EDUCATIONPOINTS,_loc2_));
            }
         }
         return _loc1_;
      }
      
      private function buildPopulationInfo() : Vector.<PopulationTypeVo>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Vector.<PopulationTypeVo> = new Vector.<PopulationTypeVo>();
         §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population"));
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker"));
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen"));
         if(_loc7_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics"));
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || Boolean(this))
         {
            §§push(this._playerResourceProxy);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(§§pop().richMenEnabled);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || _loc3_)
                     {
                        _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_people_icon",this._playerResourceProxy.population,ServerResConst.RESOURCE_POPULATION,_loc2_));
                        if(!(_loc6_ && Boolean(this)))
                        {
                           _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_worker_icon",this._playerResourceProxy.worker,ServerResConst.RESOURCE_WORKERS,_loc3_));
                           if(!_loc6_)
                           {
                              _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_rich_icon",this._playerResourceProxy.richMen,ServerResConst.RESOURCE_RICHMEN,_loc4_));
                              if(!_loc6_)
                              {
                                 addr018b:
                                 addr0192:
                                 addr018f:
                                 if(this._playerResourceProxy.academicsEnabled)
                                 {
                                    if(_loc7_)
                                    {
                                       addr019c:
                                       _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_academics_icon",this._playerResourceProxy.academics,ServerResConst.RESOURCE_ACADEMICS,_loc5_));
                                    }
                                 }
                              }
                              §§goto(addr01bc);
                           }
                           §§goto(addr018b);
                        }
                        §§goto(addr019c);
                     }
                     addr01bc:
                     return _loc1_;
                  }
                  _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_worker_icon",this._playerResourceProxy.worker,ServerResConst.RESOURCE_WORKERS,_loc3_));
                  if(_loc7_)
                  {
                     §§goto(addr018b);
                  }
                  §§goto(addr019c);
               }
               §§goto(addr0192);
            }
            §§goto(addr018f);
         }
         §§goto(addr019c);
      }
   }
}

