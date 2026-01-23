package net.bigpoint.cityrama.model.miniLayer
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ConfigProfessionalTraitDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyMiniLayerProxy extends Proxy
   {
      
      public static const NAME:String = "EmergencyMiniLayerProxy";
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      public function EmergencyMiniLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
      
      public function getEmergencyTimeUpVo(param1:EmergencyDTO) : EmergencyTimeUpMiniLayerVo
      {
         var _loc2_:EmergencyTimeUpMiniLayerVo = new EmergencyTimeUpMiniLayerVo();
         _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.title.capital"));
         _loc2_.explanationText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.explanation"));
         _loc2_.emergencySWFName = param1.config.gfxId.toString();
         _loc2_.emergencyLibName = param1.config.gfxId.toString() + "_layer_renderings";
         _loc2_.emergencyBmpName = "emergency_big";
         _loc2_.buttonLabel = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.button.capital"));
         return _loc2_;
      }
      
      public function getEmergencyCleanupVo(param1:BillboardObjectVo) : EmergencyCleanupMiniLayerVo
      {
         var _loc2_:EmergencyCleanupMiniLayerVo = new EmergencyCleanupMiniLayerVo();
         _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.title.capital"));
         _loc2_.flavourText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.flavourText"));
         _loc2_.header = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.header.capital"));
         _loc2_.buttonText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.button.capital"));
         _loc2_.instantFinishText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.instant"));
         _loc2_.instantFinishToolTipBad = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.instant.toolTip.bad"));
         var _loc3_:int = param1.buildingDTO.emergencyDTO.config.gfxId;
         _loc2_.swfName = _loc3_.toString();
         _loc2_.libName = _loc3_ + "_layer_renderings";
         _loc2_.bmpName = "emergency_big";
         _loc2_.damagedBuildingId = param1.buildingDTO.id;
         var _loc4_:ConstructionMiniLayerVo = this.getEmergencyDamagedVo(param1);
         _loc2_.productionNeedVo = new ProductionNeedVo(_loc4_.assetLibName,_loc4_.assetLibName,_loc4_.assetImageName,_loc4_.amountOwned,_loc4_.amountNeeded,_loc4_.assetLocaleName);
         _loc2_.instantRCCosts = _loc4_.realCurrencyCosts;
         _loc2_.hasEnoughRC = _loc4_.realCurrencyCosts <= this._resourceProxy.realCurrency;
         return _loc2_;
      }
      
      public function getEmergencyRehireProfessionalVo(param1:Number) : EmergencyRehireProfessionalMiniLayerVo
      {
         var _loc2_:EmergencyRehireProfessionalMiniLayerVo = new EmergencyRehireProfessionalMiniLayerVo();
         _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.title.capital"));
         _loc2_.flavourText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.flavourText"));
         _loc2_.header = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.header.capital"));
         _loc2_.buttonText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.button.capital"));
         _loc2_.instantFinishText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.instant"));
         _loc2_.instantFinishToolTipBad = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.instant.toolTip.bad"));
         var _loc3_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param1);
         _loc2_.profId = _loc3_.id;
         _loc2_.luckProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
         _loc2_.efficencyProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
         _loc2_.perceptionProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
         var _loc4_:Object = new Object();
         _loc4_.empty = false;
         _loc4_.profDep = _loc3_.configSpecialisation.department;
         _loc4_.profSpec = _loc3_.configSpecialisation.rank;
         _loc4_.profSpecGfx = _loc3_.configSpecialisation.gfxId;
         _loc4_.profSpecLoca = _loc3_.configSpecialisation.locaId;
         var _loc5_:String = _loc3_.gender ? "male" : "female";
         _loc4_.lib = "gui_professionals_" + _loc5_;
         _loc4_.img = "small_" + _loc3_.gfxId;
         var _loc6_:String = ResourceManager.getInstance().getString("rcl.professions.nameconvention" + "","rcl.professions.nameconvention.fistnamelastname" + "");
         var _loc7_:String = ResourceManager.getInstance().getString("rcl.professions.firstnames." + _loc5_,"rcl.professions.firstnames." + _loc5_ + "." + _loc3_.name);
         var _loc8_:String = ResourceManager.getInstance().getString("rcl.professions.surnames." + _loc5_,"rcl.professions.surnames." + _loc5_ + "." + _loc3_.surname);
         _loc4_.name = StringUtil.substitute(_loc6_,_loc7_,_loc8_);
         _loc4_.id = _loc3_.id;
         _loc2_.professionalSlotVo = new ProfessionalSlotVo(_loc4_,false);
         _loc2_.epCosts = this.getEducationPointsRehirePrice(_loc3_.extendedCount);
         _loc2_.hasEnoughEp = this._resourceProxy.educationPoints >= _loc2_.epCosts;
         _loc2_.instantDextroCosts = this.getDextroRehirePrice(_loc3_.extendedCount);
         _loc2_.hasEnoughDextro = this._goodStockProxy.dextroStock >= _loc2_.instantDextroCosts;
         return _loc2_;
      }
      
      public function getEmergencyDamagedVo(param1:BillboardObjectVo) : ConstructionMiniLayerVo
      {
         var _loc5_:ConfigOutputDTO = null;
         var _loc2_:ConstructionMiniLayerVo = new ConstructionMiniLayerVo();
         _loc2_.amountNeeded = 0;
         for each(_loc5_ in param1.buildingDTO.emergencyDTO.rewardOrCosts)
         {
            if(_loc5_.goodConfig)
            {
               _loc2_.amountNeeded = Math.abs(_loc5_.outputAmount);
               _loc2_.assetLibName = "gui_popups_smallGoodIcons";
               _loc2_.assetImageName = "small_" + _loc5_.goodConfig.gfxId;
               _loc2_.assetGfxId = _loc5_.goodConfig.gfxId;
               _loc2_.assetLocaleName = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc5_.goodConfig.localeId));
               _loc2_.amountOwned = this._goodStockProxy.getCurrentStockOfGood(_loc5_.goodConfig.id);
               _loc2_.materialAvailable = _loc2_.amountOwned >= Math.abs(_loc5_.outputAmount);
               var _loc3_:Boolean = true;
            }
            else if(_loc5_.resourceConfig)
            {
               if(_loc5_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  _loc2_.realCurrencyCosts = Math.abs(_loc5_.outputAmount);
                  var _loc4_:Boolean = true;
               }
            }
         }
         return _loc2_;
      }
      
      private function getEducationPointsRehirePrice(param1:Number) : Number
      {
         var _loc2_:int = 250 * Math.pow(param1 + 1,2.1);
         var _loc3_:int = ("" + _loc2_).length - 2;
         if(_loc3_ >= 0)
         {
            _loc2_ = Math.ceil(_loc2_ / Math.pow(10,_loc3_)) * Math.pow(10,_loc3_);
         }
         return _loc2_;
      }
      
      private function getDextroRehirePrice(param1:int) : Number
      {
         param1++;
         return 5 * Math.ceil(150 * (1 - Math.pow(2,-0.033 * param1)) - 1.4);
      }
      
      public function getProfessionalLevelUpVO(param1:Number) : ProfessionalLevelUpLayerVo
      {
         var _loc5_:Number = NaN;
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc3_:ProfessionalLevelUpLayerVo = new ProfessionalLevelUpLayerVo();
         _loc2_.professionalBuilder(_loc3_,param1);
         var _loc4_:Vector.<ConfigProfessionalSpecializationDTO> = new Vector.<ConfigProfessionalSpecializationDTO>(0);
         for each(_loc5_ in _loc3_.possibleSpecsIds)
         {
            _loc4_.push(this._configProxy.config.professionalSpecializations[_loc5_]);
         }
         _loc3_.possibleSpecs = _loc4_;
         return _loc3_;
      }
      
      public function professionalTraitMiniLayerVo(param1:Number, param2:Number) : ProfessionalTraitUnlockMiniLayerVo
      {
         var _loc3_:ProfessionalTraitUnlockMiniLayerVo = new ProfessionalTraitUnlockMiniLayerVo();
         var _loc4_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param1);
         var _loc5_:ConfigProfessionalTraitDTO = this._configProxy.config.professionalTraits[param2];
         var _loc6_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         _loc6_.professionalBuilder(_loc3_,_loc4_.id);
         _loc3_.amount = _loc5_.value;
         _loc3_.traitGfxId = _loc5_.gfxid;
         _loc3_.traitLocaleId = _loc5_.localeid;
         return _loc3_;
      }
   }
}

