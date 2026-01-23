package net.bigpoint.cityrama.model.architecturalBook
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.core.FlexGlobals;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintSecuritygradeVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.IBlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPlayfieldRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ArchitecturalBookProxy extends Proxy
   {
      
      public static const NAME:String = "ArchitecturalBookProxy";
      
      public static const ITEM_LIB_RANGE:int = 5;
      
      private var _verifiedBlueprintVo:VerifiedBlueprintVo;
      
      private var _viewedArchitectureCategory:String;
      
      private var _greenColor:uint;
      
      private var _redColor:uint;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _restrictionProxy:RestrictionProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function ArchitecturalBookProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         this._playerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         this._goodStockProxy = PlayerGoodsStockProxy(facade.retrieveProxy(PlayerGoodsStockProxy.NAME));
         this._restrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
         this._serverStorageProxy = ServerStorageProxy(facade.retrieveProxy(ServerStorageProxy.NAME));
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         var _loc3_:CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration(".newValueColorFormats");
         this._redColor = _loc3_.getStyle("red");
         this._greenColor = _loc3_.getStyle("green");
         this._verifiedBlueprintVo = new VerifiedBlueprintVo();
      }
      
      private static function sortBlueprintsByLevel(param1:IBlueprintVo, param2:IBlueprintVo) : int
      {
         var _loc3_:Number = param1.unlockLvl;
         var _loc4_:Number = param2.unlockLvl;
         var _loc5_:Number = param1.price;
         var _loc6_:Number = param2.price;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         return 0;
      }
      
      private static function isFirstLevelTownHall(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         if(param1.tags.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
         {
            if(!param1.isUpgrade)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function sortResidents(param1:ResidentVo, param2:ResidentVo) : int
      {
         var _loc3_:String = param1.type;
         var _loc4_:String = param2.type;
         if(param1.minUserLevel < param2.minUserLevel)
         {
            return -1;
         }
         if(param1.minUserLevel > param2.minUserLevel)
         {
            return 1;
         }
         if(_loc3_ == ServerResConst.RESOURCE_WORKERS)
         {
            return -1;
         }
         if(_loc4_ == ServerResConst.RESOURCE_WORKERS)
         {
            return 1;
         }
         if(_loc3_ == ServerResConst.RESOURCE_ACADEMICS)
         {
            return -1;
         }
         if(_loc4_ == ServerResConst.RESOURCE_ACADEMICS)
         {
            return 1;
         }
         return 0;
      }
      
      public static function getItemIconLibByConfigPlayfieldItemDTO(param1:ConfigPlayfieldItemDTO) : String
      {
         var _loc2_:uint = param1.gfxId;
         var _loc3_:uint = _loc2_ % ITEM_LIB_RANGE;
         var _loc4_:uint = _loc2_ / ITEM_LIB_RANGE;
         if(_loc3_ == 0)
         {
            _loc4_--;
         }
         var _loc5_:uint = _loc4_ * ITEM_LIB_RANGE + 1;
         var _loc6_:uint = uint(_loc5_ + ITEM_LIB_RANGE - 1);
         return "gui_popups_architect_" + _loc5_ + "_" + _loc6_;
      }
      
      public function getBlueprintsByGroup(param1:String) : ArrayCollection
      {
         var _loc7_:IBlueprintVo = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:Vector.<String> = new Vector.<String>();
         switch(param1)
         {
            case BlueprintGroupConstants.BLUEPRINT_POWERPLANT:
               _loc2_.push(ServerTagConstants.POWERPLANT);
               break;
            case BlueprintGroupConstants.BLUEPRINT_PRODUCTION:
               _loc2_.push(ServerTagConstants.PRODUCTION);
               break;
            case BlueprintGroupConstants.BLUEPRINT_SHOP:
               _loc2_.push(ServerTagConstants.SHOP);
               break;
            case BlueprintGroupConstants.BLUEPRINT_DECORATION:
               _loc2_.push(ServerTagConstants.DECORATION);
               _loc3_.push(ServerTagConstants.SPECIAL);
               break;
            case BlueprintGroupConstants.BLUEPRINT_GROUNDS:
               _loc2_.push(ServerTagConstants.GROUND);
               break;
            case BlueprintGroupConstants.BLUEPRINT_SPECIAL:
               _loc2_.push(ServerTagConstants.SPECIAL);
               break;
            case BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL:
            default:
               _loc2_.push(ServerTagConstants.RESIDENTIAL);
         }
         var _loc4_:ArrayCollection = new ArrayCollection();
         var _loc5_:Vector.<IBlueprintVo> = this.getBluePrintsByTags(_loc2_,_loc3_);
         var _loc6_:ArrayCollection = new ArrayCollection();
         for each(_loc7_ in _loc5_)
         {
            if(this.itemCanBePlacedOnPlayfield(_loc7_) && _loc7_.state != BlueprintVo.STATE_NOT_AVAILABLE)
            {
               _loc6_.addItem(_loc7_);
            }
         }
         _loc6_.source.sort(sortBlueprintsByLevel);
         _loc6_.refresh();
         while(_loc6_.length % 10 != 0 || _loc6_.length == 0)
         {
            _loc6_.addItem(null);
         }
         _loc4_.addAll(_loc6_);
         return _loc4_;
      }
      
      private function itemCanBePlacedOnPlayfield(param1:IBlueprintVo) : Boolean
      {
         var _loc3_:ConfigPlayfieldItemPlayfieldRestrictionDTO = null;
         var _loc2_:Number = this._playfieldProxy.config.id;
         for each(_loc3_ in param1.configObj.playfieldRestrictions)
         {
            if(_loc3_.configPlayfieldId == _loc2_)
            {
               return false;
            }
         }
         return true;
      }
      
      private function getBluePrintsByTags(param1:Vector.<String>, param2:Vector.<String>) : Vector.<IBlueprintVo>
      {
         var _loc5_:ConfigPlayfieldItemDTO = null;
         var _loc7_:ConfigPlayfieldItemDTO = null;
         var _loc3_:Vector.<IBlueprintVo> = new Vector.<IBlueprintVo>();
         var _loc4_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc5_ in this._gameConfigProxy.getConfigPlayfieldItemsByTags(param1,param2))
         {
            _loc4_.push(_loc5_);
         }
         for each(_loc7_ in _loc4_)
         {
            if(this.shouldShowPermissionInBook(_loc7_))
            {
               var _loc6_:BlueprintVo = this.getBluePrint(_loc7_);
               if(this._eventProxy.mayShowItem(null.permission.config))
               {
                  null.permissionLockedByEvent = !this._eventProxy.mayBuyItem(null.permission.config);
                  _loc3_.push(null);
               }
            }
         }
         return _loc3_;
      }
      
      public function getBluePrint(param1:ConfigPlayfieldItemDTO) : BlueprintVo
      {
         var _loc2_:PlayfieldItemPermissionDTO = null;
         var _loc6_:ConfigNeedDTO = null;
         var _loc7_:ConfigNeedStackDTO = null;
         var _loc8_:ConfigGoodDTO = null;
         if(this._goodStockProxy == null)
         {
            this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         _loc2_ = this._goodStockProxy.getPermissionByConfigId(param1.permissionConfigId);
         if(this._restrictionProxy == null)
         {
            this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         }
         var _loc3_:Vector.<ConfigGroundRestrictionDTO> = this._restrictionProxy.getWhiteListRestrictionsForItem(param1);
         var _loc4_:Vector.<ConfigGoodDTO> = new Vector.<ConfigGoodDTO>();
         if(param1.tags.indexOf(ServerTagConstants.SHOP) != -1)
         {
            for each(_loc6_ in param1.needShopConfigs)
            {
               for each(_loc7_ in _loc6_.requiredGoods)
               {
                  if(_loc7_.configOutout != null)
                  {
                     if(_loc7_.configOutout.type == ServerOutputConstants.GOOD)
                     {
                        _loc8_ = this._gameConfigProxy.config.goods[_loc7_.configOutout.configId];
                        _loc4_.push(_loc8_);
                     }
                  }
               }
            }
         }
         var _loc5_:* = !this._serverStorageProxy.isPlayfieldItemConfigIdViewed(param1.id);
         if(param1.unlockLevel > this._playerResourceProxy.userLevel)
         {
            _loc5_ = false;
         }
         return new BlueprintVo(param1,_loc2_,this._playerResourceProxy.userLevel,_loc3_,this._playerResourceProxy.ingameCurrency,this._playerResourceProxy.realCurrency,_loc4_,_loc5_);
      }
      
      public function blueprintSelected(param1:IBlueprintVo) : void
      {
         sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{
            "config":param1.configObj,
            "buyPermission":param1.permission.permissionsLeft <= 0
         });
      }
      
      private function shouldShowPermissionInBook(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         if(param1.buyable)
         {
            return true;
         }
         var _loc2_:PlayfieldItemPermissionDTO = this._goodStockProxy.getPermissionByConfigId(param1.permissionConfigId,false);
         if(_loc2_ != null)
         {
            if(_loc2_.permissionsLeft == 0 && _loc2_.config.buyCap != -1 && _loc2_.permissionsBought >= _loc2_.config.buyCap)
            {
               return false;
            }
            if(!param1.isUpgrade)
            {
               if(!isFirstLevelTownHall(param1))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function subData_RefillCCOutcome(param1:BlueprintVo) : void
      {
         this._verifiedBlueprintVo.outcomeCCVOList.removeAll();
         this._verifiedBlueprintVo.outcomeCCVO.visualLibName = "gui_popups_paperPopup";
         this._verifiedBlueprintVo.outcomeCCVO.visualName = "cc_icon_medium";
         if(param1.output < 0)
         {
            this._verifiedBlueprintVo.outcomeCCVO.valueColor = this._redColor;
            this._verifiedBlueprintVo.outcomeCCVO.textLabel = "- " + LocaUtils.getThousendSeperatedNumber(param1.output);
         }
         else
         {
            this._verifiedBlueprintVo.outcomeCCVO.valueColor = this._greenColor;
            this._verifiedBlueprintVo.outcomeCCVO.textLabel = "+ " + LocaUtils.getThousendSeperatedNumber(param1.output);
         }
         this._verifiedBlueprintVo.outcomeCCVOList.addItem(this._verifiedBlueprintVo.outcomeCCVO.clone());
      }
      
      public function subData_RefillOutcome(param1:BlueprintVo) : void
      {
         var _loc3_:ConfigGoodDTO = null;
         this._verifiedBlueprintVo.outcomeVOList.removeAll();
         this._verifiedBlueprintVo.outcomeVO.cleanAll();
         var _loc2_:Vector.<ConfigGoodDTO> = param1.products;
         for each(_loc3_ in _loc2_)
         {
            this._verifiedBlueprintVo.outcomeVO.visualLibName = "gui_popups_smallGoodIcons";
            this._verifiedBlueprintVo.outcomeVO.visualName = "small_" + _loc3_.gfxId;
            this._verifiedBlueprintVo.outcomeVO.toolTip = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc3_.gfxId);
            this._verifiedBlueprintVo.outcomeVOList.addItem(this._verifiedBlueprintVo.outcomeVO.clone());
         }
      }
      
      public function subData_RefillMaterial(param1:BlueprintVo) : void
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         this._verifiedBlueprintVo.materialVOList.removeAll();
         this._verifiedBlueprintVo.materialVO.cleanAll();
         var _loc2_:Vector.<ConfigOutputDTO> = param1.material;
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            _loc3_++;
            this._verifiedBlueprintVo.materialVO.visualLibName = "gui_popups_smallGoodIcons";
            this._verifiedBlueprintVo.materialVO.visualName = "small_" + _loc4_.goodConfig.gfxId;
            _loc5_ = uint(_loc3_);
            _loc6_ = Math.abs(_loc4_.outputAmount);
            _loc7_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc4_.goodConfig.gfxId);
            this._verifiedBlueprintVo.materialVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.needs",[_loc5_,_loc6_,_loc7_]);
            this._verifiedBlueprintVo.materialVOList.addItem(this._verifiedBlueprintVo.materialVO.clone());
         }
      }
      
      public function subData_RefillEffects(param1:BlueprintVo) : void
      {
         var _loc2_:ConfigGroundRestrictionDTO = null;
         var _loc3_:Vector.<BlueprintImageValueVO> = null;
         var _loc4_:Vector.<BlueprintImageValueVO> = null;
         var _loc5_:Vector.<BlueprintImageValueVO> = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:BlueprintImageValueVO = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:BlueprintImageValueVO = null;
         var _loc11_:Vector.<BlueprintImageValueVO> = null;
         this._verifiedBlueprintVo.buildableLandVOList.removeAll();
         this._verifiedBlueprintVo.buildableLandVO.cleanAll();
         this._verifiedBlueprintVo.buildableLandVO.visualLibName = "gui_popups_paperPopup";
         var _loc12_:int = 0;
         var _loc13_:* = param1.restrictions;
         for each(_loc2_ in _loc13_)
         {
            if(_loc2_.groundType == ServerRestrictionConstants.FARMLAND)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.farmland");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_farmland";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.CLAYPIT)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.claypit");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_claypit";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.RIVER)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.river");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_river";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.SPRING)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.spring");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_spring";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.BUILDINGLAND)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.grass");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_grass";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.COAST)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.coast");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_coast";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.SEA)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.sea");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_sea";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.FISHINGGROUND)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.fish_grounds");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_fishery";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.MOUNTAIN)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.mountain");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_mountain";
            }
            if(_loc2_.groundType == ServerRestrictionConstants.SNOW)
            {
               this._verifiedBlueprintVo.buildableLandVO.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permission.snow");
               this._verifiedBlueprintVo.buildableLandVO.visualName = "restriction_icon_snow";
            }
         }
         this._verifiedBlueprintVo.buildableLandVO.descriptionText = this._verifiedBlueprintVo.buildableLandVO.toolTip;
         _loc3_ = new Vector.<BlueprintImageValueVO>();
         _loc4_ = new Vector.<BlueprintImageValueVO>();
         _loc5_ = new Vector.<BlueprintImageValueVO>();
         for each(_loc6_ in param1.consequences)
         {
            if(_loc6_.resourceConfig != null)
            {
               _loc7_ = new BlueprintImageValueVO();
               _loc8_ = _loc6_.resourceConfig.id;
               _loc9_ = _loc6_.outputAmount;
               if(_loc9_ < 0 || _loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]) || _loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]))
               {
                  _loc7_.valueColor = this._redColor;
                  _loc7_.textLabel = "- " + _loc9_;
               }
               else
               {
                  _loc7_.valueColor = this._greenColor;
                  _loc7_.textLabel = "+ " + _loc9_;
               }
               if(_loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_POPULATION]))
               {
                  _loc7_.visualLibName = "gui_popups_paperPopup";
                  _loc7_.visualName = "postit_icon_population";
                  _loc3_.push(_loc7_);
               }
               else if(_loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]) || _loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]))
               {
                  _loc7_.effectType = MainLayerProxy.ENERGY;
                  _loc7_.visualLibName = "gui_popups_paperPopup";
                  _loc7_.visualName = "postit_icon_energy";
                  _loc4_.push(_loc7_);
               }
               else
               {
                  if(_loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]))
                  {
                     _loc7_.visualLibName = "gui_popups_paperPopup";
                     _loc7_.effectType = MainLayerProxy.MOOD;
                     _loc7_.visualName = "postit_icon_sadmood";
                     _loc5_.push(_loc7_);
                  }
                  if(_loc8_ == Number(this._gameConfigProxy.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]))
                  {
                     _loc7_.visualLibName = "gui_popups_paperPopup";
                     _loc7_.effectType = MainLayerProxy.MOOD;
                     _loc7_.visualName = "postit_icon_happymood";
                     _loc5_.push(_loc7_);
                  }
               }
            }
         }
         this._verifiedBlueprintVo.consequenceVOList.removeAll();
         this._verifiedBlueprintVo.consequenceVO.cleanAll();
         _loc11_ = _loc3_.concat(_loc4_,_loc5_);
         for each(_loc10_ in _loc11_)
         {
            this._verifiedBlueprintVo.consequenceVO = _loc10_;
            this._verifiedBlueprintVo.consequenceVOList.addItem(this._verifiedBlueprintVo.consequenceVO.clone());
         }
      }
      
      public function subData_RefillDescription(param1:BlueprintVo) : void
      {
         this._verifiedBlueprintVo.descriptionVo.cleanAll();
         this._verifiedBlueprintVo.descriptionVo.descriptionText = LocaUtils.getString("rcl.playfielditems.positdescription","rcl.playfielditems.positdescription." + param1.configObj.localeId);
         if(this._verifiedBlueprintVo.descriptionVo.descriptionText == "")
         {
            this._verifiedBlueprintVo.descriptionVo.descriptionText = LocaUtils.getString("rcl.playfielditems.shortdescription","rcl.playfielditems.shortdescription." + param1.configObj.localeId);
         }
      }
      
      public function subData_RefillSecuritygrade(param1:BlueprintVo) : void
      {
         var _loc3_:BlueprintSecuritygradeVO = null;
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc5_:SecurityStatusVo = null;
         this._verifiedBlueprintVo.securityVoList.removeAll();
         this._verifiedBlueprintVo.securityVo.cleanAll();
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc4_ in param1.configObj.configSecurityGrades)
         {
            _loc5_ = new SecurityStatusVo(0,0,_loc4_.type,-1,_loc4_.orderId);
            _loc5_.x = _loc4_.rangeX * 2 + param1.configObj.sizeX;
            _loc5_.y = _loc4_.rangeY * 2 + param1.configObj.sizeY;
            if(_loc2_[_loc4_.type] == null)
            {
               _loc3_ = new BlueprintSecuritygradeVO();
               _loc3_.departmentVisualSourceName = String(EmergencyLayerProxy.getGfxIdByDepartment(_loc4_.type));
               _loc3_.departmentVisualLibName = "small_badges";
               _loc3_.departmentVisualSWFName = "gui_ui_emergencyDepartmentsIcons";
               _loc2_[_loc4_.type] = _loc3_;
            }
            _loc3_ = _loc2_[_loc4_.type];
            _loc3_.gradeVoList.push(_loc5_);
         }
         for each(_loc3_ in _loc2_)
         {
            this._verifiedBlueprintVo.securityVo = _loc3_;
            this._verifiedBlueprintVo.securityVoList.addItem(this._verifiedBlueprintVo.securityVo.clone());
         }
      }
      
      public function subData_RefillCost(param1:BlueprintVo) : void
      {
         this._verifiedBlueprintVo.costVOList.removeAll();
         this._verifiedBlueprintVo.costVO.textLabel = LocaUtils.getThousendSeperatedNumber(param1.price);
         this._verifiedBlueprintVo.costVO.visualLibName = "gui_popups_paperPopup";
         this._verifiedBlueprintVo.costVO.visualName = "cc_icon_medium";
         this._verifiedBlueprintVo.costVO.visualOKLibName = "";
         this._verifiedBlueprintVo.costVO.visualOKName = "";
         this._verifiedBlueprintVo.bluePrintVO.userVC = this._playerResourceProxy.ingameCurrency;
         this._verifiedBlueprintVo.costVOList.addItem(this._verifiedBlueprintVo.costVO.clone());
      }
      
      public function subData_refillResidents(param1:BlueprintVo) : void
      {
         var _loc2_:ResidentVo = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         this._verifiedBlueprintVo.residentVoList.removeAll();
         this._verifiedBlueprintVo.residentVo.cleanAll();
         if(param1.residents)
         {
            if(param1.residents.length > 1)
            {
               param1.residents.sort(sortResidents);
            }
            for each(_loc2_ in param1.residents)
            {
               _loc3_ = "";
               _loc4_ = "";
               switch(_loc2_.type)
               {
                  case ServerResConst.RESOURCE_WORKERS:
                     this._verifiedBlueprintVo.residentVo.visualLibName = "gui_popups_residentialPopupNEW";
                     this._verifiedBlueprintVo.residentVo.visualName = "resident_icon_worker";
                     _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker");
                     _loc4_ = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]);
                     this._verifiedBlueprintVo.residentVo.toolTip = _loc4_;
                     break;
                  case ServerResConst.RESOURCE_RICHMEN:
                     if(this._playerResourceProxy.richMenEnabled)
                     {
                        this._verifiedBlueprintVo.residentVo.visualLibName = "gui_popups_residentialPopupNEW";
                        this._verifiedBlueprintVo.residentVo.visualName = "resident_icon_richman";
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen");
                        _loc4_ = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]);
                        this._verifiedBlueprintVo.residentVo.toolTip = _loc4_;
                        break;
                     }
                     continue;
                  case ServerResConst.RESOURCE_ACADEMICS:
                     if(this._playerResourceProxy.academicsEnabled)
                     {
                        this._verifiedBlueprintVo.residentVo.visualLibName = "gui_popups_residentialPopupNEW";
                        this._verifiedBlueprintVo.residentVo.visualName = "resident_icon_prof";
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics");
                        _loc4_ = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents",[_loc3_,_loc2_.buildingLevel]);
                        this._verifiedBlueprintVo.residentVo.toolTip = _loc4_;
                        break;
                     }
                     continue;
               }
               this._verifiedBlueprintVo.residentVoList.addItem(this._verifiedBlueprintVo.residentVo.clone());
            }
         }
      }
      
      public function subData_RealCurrencyAmount() : void
      {
         this._verifiedBlueprintVo.currentRealCurrencyAmount = this._playerResourceProxy.realCurrency;
      }
      
      public function get verifiedBlueprintVo() : VerifiedBlueprintVo
      {
         return this._verifiedBlueprintVo;
      }
      
      public function get viewedArchitectureCategory() : String
      {
         return this._viewedArchitectureCategory;
      }
      
      public function set viewedArchitectureCategory(param1:String) : void
      {
         this._viewedArchitectureCategory = param1;
      }
      
      public function getCategoryByConfigId(param1:Number) : String
      {
         var _loc2_:ConfigPlayfieldItemDTO = this._gameConfigProxy.config.items[param1];
         if(_loc2_)
         {
            if(_loc2_.tags.indexOf(ServerTagConstants.SPECIAL) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_SPECIAL;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.GROUND) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_GROUNDS;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.DECORATION) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_DECORATION;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.POWERPLANT) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_POWERPLANT;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.SHOP) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_SHOP;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.PRODUCTION) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_PRODUCTION;
            }
            if(_loc2_.tags.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
            {
               return BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL;
            }
         }
         return "";
      }
      
      public function getItemIndexByCatAndConfigId(param1:String, param2:Number) : int
      {
         var _loc4_:IBlueprintVo = null;
         var _loc3_:ArrayCollection = this.getBlueprintsByGroup(param1);
         if(Boolean(_loc3_) && Boolean(_loc3_.length))
         {
            for each(_loc4_ in _loc3_.source)
            {
               if(_loc4_)
               {
                  if(_loc4_.configObj.id == param2)
                  {
                     return _loc3_.source.indexOf(_loc4_);
                  }
               }
            }
         }
         return -1;
      }
   }
}

