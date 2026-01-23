package net.bigpoint.cityrama.model.inventory
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPlayfieldRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldItemInventoryViewProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PlayfieldItemInventoryViewProxy";
      
      public static const CATEGORY_EMERGENCY_INVENTORY:String = "EMERGENCY";
      
      private var _currentSelectedInventoryItem:PlayfieldItemInventoryListItemVo;
      
      private var _iP:InventoryProxy;
      
      private var _resP:PlayerResourceProxy;
      
      private var _confP:GameConfigProxy;
      
      private var _impP:ImprovementProxy;
      
      private var _pfP:PlayfieldProxy;
      
      private var _lSP:LocalStorageProxy;
      
      private var _fP:FeatureProxy;
      
      private var _eP:EmergencyProxy;
      
      public function PlayfieldItemInventoryViewProxy()
      {
         super(NAME);
      }
      
      public function get playfieldItemInventoryViewVo() : PlayfieldItemInventoryViewVo
      {
         var _loc1_:PlayfieldItemInventoryViewVo = new PlayfieldItemInventoryViewVo();
         _loc1_.bags = this.getInventoryBags();
         _loc1_.realCurrencyStock = this.resourceProxy.realCurrency;
         _loc1_.minimized = this.localStorageProxy.userdata.inventoryMinimised;
         _loc1_.emergencyRunning = this.emergencyProxy.emergencyActivelyRunning;
         return _loc1_;
      }
      
      public function buildInventoryPlayfieldItemVo(param1:BillboardObject) : InventoryPlayfieldItemVo
      {
         var _loc2_:InventoryPlayfieldItemVo = new InventoryPlayfieldItemVo();
         if(param1 is DecorationFieldObject)
         {
            _loc2_.decorationVo = DecorationFieldObject(param1).decorationFieldObjectVo.decorationVo;
         }
         else
         {
            _loc2_.buildingDTO = param1.billboardObjectVo.buildingDTO;
            _loc2_.improvementVector = this.getImprovementGfxVector(_loc2_.buildingDTO);
         }
         _loc2_.canBePlacedOnCurrentPlayfield = this.itemAllowedOnPlayfield(param1.billboardObjectVo.configPlayfieldItemVo);
         return _loc2_;
      }
      
      public function get currentSelectedInventoryItem() : PlayfieldItemInventoryListItemVo
      {
         return this._currentSelectedInventoryItem;
      }
      
      public function set currentSelectedInventoryItem(param1:PlayfieldItemInventoryListItemVo) : void
      {
         this._currentSelectedInventoryItem = param1;
      }
      
      private function getInventoryBags() : Vector.<PlayfieldItemInventoryBagVo>
      {
         var _loc2_:PlayfieldItemInventoryBagVo = null;
         var _loc3_:InventoryItemBagVo = null;
         var _loc1_:Vector.<PlayfieldItemInventoryBagVo> = new Vector.<PlayfieldItemInventoryBagVo>();
         for each(_loc3_ in this.inventoryProxy.getInventoryBagsByType(InventoryProxy.INVENTORY_BAG_TYPE_PLAYFIELDITEM))
         {
            _loc2_ = new PlayfieldItemInventoryBagVo();
            _loc2_.source = _loc3_;
            _loc2_.category = this.getBagCategory(_loc3_);
            _loc2_.inventoryItems = this.getInventoryItems(_loc3_);
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      private function getInventoryItems(param1:InventoryItemBagVo) : Vector.<InventoryPlayfieldItemVo>
      {
         var _loc3_:InventoryPlayfieldItemVo = null;
         var _loc4_:InventoryItemDTO = null;
         var _loc2_:Vector.<InventoryPlayfieldItemVo> = new Vector.<InventoryPlayfieldItemVo>();
         for each(_loc4_ in param1.bagItems)
         {
            _loc3_ = new InventoryPlayfieldItemVo();
            if(_loc4_.buildingDTO)
            {
               _loc3_.buildingDTO = _loc4_.buildingDTO;
               _loc3_.improvementVector = this.getImprovementGfxVector(_loc4_.buildingDTO);
            }
            else if(_loc4_.decorationVo)
            {
               _loc3_.decorationVo = _loc4_.decorationVo;
            }
            _loc3_.canBePlacedOnCurrentPlayfield = this.itemAllowedOnPlayfield(_loc3_.configItem);
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      private function itemAllowedOnPlayfield(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         var _loc2_:ConfigPlayfieldItemPlayfieldRestrictionDTO = null;
         for each(_loc2_ in param1.playfieldRestrictions)
         {
            if(_loc2_.configPlayfieldId == this.playfieldProxy.config.id)
            {
               return false;
            }
         }
         return true;
      }
      
      private function getImprovementGfxVector(param1:BuildingDTO) : Vector.<BriskDynaVo>
      {
         var _loc2_:Vector.<BriskDynaVo> = null;
         var _loc3_:BriskDynaVo = null;
         var _loc4_:int = 0;
         var _loc5_:ImprovementVo = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:ImprovementDTO = null;
         var _loc9_:ConfigPlayfieldItemImprovementSlotDTO = null;
         if(param1.improvementSlotIds.length > 0 && param1.config.tags.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
         {
            _loc2_ = new Vector.<BriskDynaVo>();
            _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_locked");
            _loc2_.push(_loc3_);
            _loc2_.push(_loc3_);
            _loc2_.push(_loc3_);
            if(this.featureProxy.improvementFeatureUnlocked)
            {
               _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_free");
               _loc4_ = 0;
               while(_loc4_ < param1.improvementSlotIds.length)
               {
                  _loc2_[_loc4_] = _loc3_;
                  _loc4_++;
               }
               if(param1.improvements.length > 0)
               {
                  for each(_loc8_ in param1.improvements)
                  {
                     _loc5_ = this.improvementProxy.buildImprovementVo(_loc8_);
                     _loc7_ = false;
                     _loc6_ = 0;
                     if(_loc5_.expirationTime <= param1.lastUpdatedTimeStamp)
                     {
                        _loc7_ = true;
                     }
                     switch(_loc5_.quality)
                     {
                        case ServerImprovementConstants.QUALITY_COMMON:
                           if(_loc7_)
                           {
                              _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_common_exp");
                              break;
                           }
                           _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_common");
                           break;
                        case ServerImprovementConstants.QUALITY_RARE:
                           if(_loc7_)
                           {
                              _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_rare_exp");
                              break;
                           }
                           _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_rare");
                           break;
                        case ServerImprovementConstants.QUALITY_EPIC:
                           if(_loc7_)
                           {
                              _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_epic_exp");
                              break;
                           }
                           _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_epic");
                           break;
                        case ServerImprovementConstants.QUALITY_LEGENDARY:
                           if(_loc7_)
                           {
                              _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_legendary_exp");
                              break;
                           }
                           _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_legendary");
                     }
                     for each(_loc9_ in param1.config.improvementSlots)
                     {
                        if(_loc9_.id == _loc5_.currentSlotId)
                        {
                           _loc6_ = _loc9_.orderId - 1;
                        }
                     }
                     _loc2_[_loc6_] = _loc3_;
                  }
               }
            }
            return _loc2_;
         }
         return null;
      }
      
      private function getBagCategory(param1:InventoryItemBagVo) : String
      {
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.configProxy.config.items)
         {
            if(_loc2_.configInventoryBagId == param1.config.id)
            {
               for each(_loc3_ in _loc2_.tags)
               {
                  if(_loc3_ == ServerTagConstants.RESIDENTIAL || _loc3_ == ServerTagConstants.SHOP || _loc3_ == ServerTagConstants.DECORATION)
                  {
                     return _loc3_;
                  }
                  if(_loc3_ == ServerTagConstants.FIRE_DEPARTMENT || _loc3_ == ServerTagConstants.HOSPITAL || _loc3_ == ServerTagConstants.POLICE_DEPARTMENT || _loc3_ == ServerTagConstants.SCHOOL || _loc3_ == ServerTagConstants.SECURITY_DEVICE)
                  {
                     return CATEGORY_EMERGENCY_INVENTORY;
                  }
               }
            }
         }
         return "";
      }
      
      private function get inventoryProxy() : InventoryProxy
      {
         if(!this._iP)
         {
            this._iP = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
         }
         return this._iP;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(!this._resP)
         {
            this._resP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._resP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._confP)
         {
            this._confP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._confP;
      }
      
      private function get improvementProxy() : ImprovementProxy
      {
         if(!this._impP)
         {
            this._impP = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
         }
         return this._impP;
      }
      
      private function get playfieldProxy() : PlayfieldProxy
      {
         if(!this._pfP)
         {
            this._pfP = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         return this._pfP;
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         if(!this._lSP)
         {
            this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         }
         return this._lSP;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         if(!this._fP)
         {
            this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
         return this._fP;
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         if(!this._eP)
         {
            this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         }
         return this._eP;
      }
   }
}

