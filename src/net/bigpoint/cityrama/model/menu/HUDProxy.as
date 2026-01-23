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
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _userLevelProxy:UserLevelProxy;
      
      public function HUDProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._userLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
      }
      
      public function get hudVo() : HUDVo
      {
         return this.buildHUDVo();
      }
      
      private function buildHUDVo() : HUDVo
      {
         var _loc1_:HUDVo = new HUDVo();
         _loc1_.virtualCurrency = this._playerResourceProxy.ingameCurrency;
         _loc1_.realCurrency = this._playerResourceProxy.realCurrency;
         _loc1_.xp = this._playerResourceProxy.experience;
         _loc1_.xpCap = this._playerResourceProxy.maxExperience;
         _loc1_.xpNextSubLevelCap = this._userLevelProxy.getNextSubLevelCap(this._userLevelProxy.currentLevelId);
         _loc1_.xpLastSubLevelCap = this._userLevelProxy.getLastSubLevelCap(this._userLevelProxy.currentLevelId);
         _loc1_.energy = this._globalBalanceProxy.energyPercental;
         _loc1_.energyModifier = this._globalBalanceProxy.energyOutputModifier;
         _loc1_.happiness = this._globalBalanceProxy.happinessPercental;
         _loc1_.happinessModifier = this._globalBalanceProxy.happinessOutputModifier;
         _loc1_.level = this._playerResourceProxy.userLevel;
         _loc1_.maxPopulation = this._playerResourceProxy.maxPopulation;
         _loc1_.producedEnergy = this._playfieldProxy.energyProduced;
         _loc1_.usedEnergy = this._playfieldProxy.energyConsumed;
         _loc1_.producedHappiness = this._playfieldProxy.happynessProduced;
         _loc1_.usedHappiness = this._playfieldProxy.happynessConsumed;
         _loc1_.population = this.buildPopulationInfo();
         _loc1_.specialCurrencies = this.buildSpecialCurrencyInfo();
         return _loc1_;
      }
      
      private function buildSpecialCurrencyInfo() : Vector.<SpecialCurrencyVo>
      {
         var _loc1_:Vector.<SpecialCurrencyVo> = new Vector.<SpecialCurrencyVo>();
         var _loc2_:String = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
         var _loc3_:String = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
         _loc1_.push(new SpecialCurrencyVo("gui_main_hud","ui_mainbar_productionpoint_icon",this._playerResourceProxy.productionPoints,ServerResConst.RESOURCE_PRODUCTIONPOINTS,_loc3_));
         if(this._playerResourceProxy.academicsEnabled)
         {
            _loc1_.push(new SpecialCurrencyVo("gui_main_hud","ui_mainbar_educationpoint_icon",this._playerResourceProxy.educationPoints,ServerResConst.RESOURCE_EDUCATIONPOINTS,_loc2_));
         }
         return _loc1_;
      }
      
      private function buildPopulationInfo() : Vector.<PopulationTypeVo>
      {
         var _loc1_:Vector.<PopulationTypeVo> = new Vector.<PopulationTypeVo>();
         var _loc2_:String = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population");
         var _loc3_:String = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker");
         var _loc4_:String = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen");
         var _loc5_:String = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics");
         if(this._playerResourceProxy.richMenEnabled)
         {
            _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_people_icon",this._playerResourceProxy.population,ServerResConst.RESOURCE_POPULATION,_loc2_));
            _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_worker_icon",this._playerResourceProxy.worker,ServerResConst.RESOURCE_WORKERS,_loc3_));
            _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_rich_icon",this._playerResourceProxy.richMen,ServerResConst.RESOURCE_RICHMEN,_loc4_));
         }
         else
         {
            _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_worker_icon",this._playerResourceProxy.worker,ServerResConst.RESOURCE_WORKERS,_loc3_));
         }
         if(this._playerResourceProxy.academicsEnabled)
         {
            _loc1_.push(new PopulationTypeVo("gui_main_hud","ui_mainbar_academics_icon",this._playerResourceProxy.academics,ServerResConst.RESOURCE_ACADEMICS,_loc5_));
         }
         return _loc1_;
      }
   }
}

