package net.bigpoint.cityrama.model.improvement
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ImprovementLayerProxy";
      
      public static const SIZE_SMALL:String = "SIZE_SMALL";
      
      public static const SIZE_MINI:String = "SIZE_MINI";
      
      public static const SIZE_BIG:String = "SIZE_BIG";
      
      private var _pGSP:PlayerGoodsStockProxy;
      
      private var _gCP:GameConfigProxy;
      
      private var _timP:TimerProxy;
      
      private var _pResP:PlayerResourceProxy;
      
      public function ImprovementLayerProxy(param1:String = "ImprovementLayerProxy", param2:Object = null)
      {
         super(param1,param2);
      }
      
      public static function improvementGfx(param1:ConfigImprovementDTO, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         switch(param2)
         {
            case SIZE_MINI:
               return new BriskDynaVo("gui_improvements_small","improvement_mini_" + param1.gfxId);
            case SIZE_SMALL:
               return new BriskDynaVo("gui_improvements_small","improvement_small_" + param1.gfxId);
            case SIZE_BIG:
               return new BriskDynaVo("gui_improvements_big","improvement_big_" + param1.gfxId);
            default:
               return null;
         }
      }
      
      public static function improvementName(param1:ConfigImprovementDTO, param2:Boolean = false) : String
      {
         if(param2)
         {
            return ResourceManager.getInstance().getString(String("rcl.improvements.name"),String("rcl.improvements.name." + param1.locaId + ".capital"));
         }
         return ResourceManager.getInstance().getString(String("rcl.improvements.name"),String("rcl.improvements.name." + param1.locaId));
      }
      
      public static function improvementBackground(param1:String, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         switch(param2)
         {
            case SIZE_SMALL:
               return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_small");
            case SIZE_MINI:
               return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_mini");
            case SIZE_BIG:
               return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_big");
            default:
               return null;
         }
      }
      
      public static function improvementQualityBadge(param1:String, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         switch(param2)
         {
            case SIZE_MINI:
               switch(param1)
               {
                  case ServerImprovementConstants.QUALITY_COMMON:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_mini");
                  case ServerImprovementConstants.QUALITY_RARE:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_mini");
                  case ServerImprovementConstants.QUALITY_EPIC:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_mini");
                  case ServerImprovementConstants.QUALITY_LEGENDARY:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_mini");
               }
               break;
            case SIZE_SMALL:
               switch(param1)
               {
                  case ServerImprovementConstants.QUALITY_COMMON:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_small");
                  case ServerImprovementConstants.QUALITY_RARE:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_small");
                  case ServerImprovementConstants.QUALITY_EPIC:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_small");
                  case ServerImprovementConstants.QUALITY_LEGENDARY:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_small");
               }
               break;
            case SIZE_BIG:
               switch(param1)
               {
                  case ServerImprovementConstants.QUALITY_COMMON:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_big");
                  case ServerImprovementConstants.QUALITY_RARE:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_big");
                  case ServerImprovementConstants.QUALITY_EPIC:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_big");
                  case ServerImprovementConstants.QUALITY_LEGENDARY:
                     return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_big");
               }
         }
         return null;
      }
      
      public function get improvementInventoryViewVo() : ImprovementInventoryViewVo
      {
         return new ImprovementInventoryViewVo(this.playerGoodStockProxy.currentImprovementStock());
      }
      
      public function getResidentialImprovementViewVo(param1:ResidentialFieldObjectVo) : ResidentialImprovementViewVo
      {
         var _loc2_:ResidentialImprovementViewVo = new ResidentialImprovementViewVo();
         _loc2_.residentialVo = param1;
         _loc2_.inventoryData = this.improvementInventoryViewVo;
         _loc2_.slotData = this.getSlotData(param1);
         return _loc2_;
      }
      
      public function getImprovementMiniLayerVo(param1:ImprovementVo, param2:Number, param3:Number) : ImprovementMiniLayerVo
      {
         var _loc4_:ImprovementMiniLayerVo = new ImprovementMiniLayerVo();
         _loc4_.improvementVo = param1;
         _loc4_.slotId = param2;
         _loc4_.buildingId = param3;
         _loc4_.realCurrency = this.resourceProxy.realCurrency;
         _loc4_.currentTime = this.timerProxy.currentTimeStamp;
         return _loc4_;
      }
      
      public function getImprovementReplacementMiniLayerVo(param1:ImprovementMiniLayerVo, param2:ImprovementVo, param3:String = " ") : ImprovementReplacementMiniLayerVo
      {
         if(param3 == " ")
         {
            param3 = ImprovementReplacementMiniLayerVo.STATE_REPLACE;
         }
         var _loc4_:ImprovementReplacementMiniLayerVo = new ImprovementReplacementMiniLayerVo(param1);
         _loc4_.state = param3;
         _loc4_.newImprovement = param2;
         _loc4_.realCurrency = this.resourceProxy.realCurrency;
         _loc4_.currentTime = this.timerProxy.currentTimeStamp;
         return _loc4_;
      }
      
      private function getSlotData(param1:ResidentialFieldObjectVo) : Vector.<ImprovementSlotComponentVo>
      {
         var _loc5_:ImprovementSlotComponentVo = null;
         var _loc7_:ImprovementVo = null;
         var _loc8_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc10_:int = 0;
         var _loc11_:ImprovementSlotComponentVo = null;
         var _loc12_:ImprovementSlotComponentVo = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = this.configProxy.getAllLevelConfigs(param1.configPlayfieldItemVo.id);
         var _loc3_:Vector.<ImprovementSlotComponentVo> = new Vector.<ImprovementSlotComponentVo>();
         var _loc4_:uint = _loc2_[_loc2_.length - 1].improvementSlots.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = new ImprovementSlotComponentVo();
            _loc5_.configSlot = _loc2_[_loc2_.length - 1].improvementSlots[_loc6_];
            _loc5_.currentState = ImprovementSlotComponent.STATE_SLOT_LOCKED;
            _loc3_.push(_loc5_);
            _loc6_++;
         }
         for each(_loc7_ in param1.currentImprovements)
         {
            for each(_loc12_ in _loc3_)
            {
               if(_loc7_.currentSlotId == _loc12_.configSlot.id)
               {
                  _loc12_.improvementVo = _loc7_;
                  _loc12_.currentState = this.getCurrentImprovementState(_loc7_);
                  _loc12_.currentTime = this.timerProxy.currentTimeStamp;
               }
            }
         }
         for each(_loc8_ in param1.freeImprovementSlots)
         {
            for each(_loc12_ in _loc3_)
            {
               if(_loc8_.id == _loc12_.configSlot.id)
               {
                  _loc12_.currentState = ImprovementSlotComponent.STATE_SLOT_FREE;
               }
            }
         }
         _loc10_ = _loc2_.indexOf(param1.configPlayfieldItemVo) + 1;
         for each(_loc11_ in _loc3_)
         {
            if(_loc11_.currentState == ImprovementSlotComponent.STATE_SLOT_LOCKED)
            {
               while(_loc10_ < _loc2_.length)
               {
                  for each(var _loc13_ in _loc2_[_loc10_].improvementSlots)
                  {
                     if(_loc13_.id == _loc11_.configSlot.id)
                     {
                        _loc11_.unlockLevel = _loc10_ + 1;
                        var _loc9_:Boolean = true;
                        break;
                     }
                  }
                  _loc10_++;
               }
            }
         }
         return _loc3_;
      }
      
      private function getCurrentImprovementState(param1:ImprovementVo) : String
      {
         if(param1.expirationTime <= this.timerProxy.currentTimeStamp && param1.config.lifetime != -1)
         {
            return ImprovementSlotComponent.STATE_SLOT_EXPIRED;
         }
         return ImprovementSlotComponent.STATE_SLOT_ACTIVE;
      }
      
      private function get playerGoodStockProxy() : PlayerGoodsStockProxy
      {
         if(this._pGSP == null)
         {
            this._pGSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._pGSP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._gCP == null)
         {
            this._gCP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gCP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(this._timP == null)
         {
            this._timP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._timP;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(this._pResP == null)
         {
            this._pResP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._pResP;
      }
   }
}

