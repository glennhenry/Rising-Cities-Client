package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import com.greensock.plugins.TransformAroundCenterPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateManager implements IIconStateManager
   {
      
      protected static const LIB_FILE:String = "gui_infield_gui_mainmenue";
      
      protected static const LIB_DEFINITION:String = "gui_infield_buildingstates_icons";
      
      protected var _billboardObjectVo:BillboardObjectVo;
      
      protected var _iconData:IIcondataVo;
      
      protected var _iconContainer:Sprite;
      
      protected var _smartObjectContainer:SmartObjectContainer;
      
      protected var _isDirty:Boolean;
      
      protected var _currentIcon:Sprite;
      
      protected var _isPlaying:Boolean;
      
      private var _connectedToStreet:Boolean;
      
      private var _readyToActivate:Boolean;
      
      private var _readyToHarvest:Boolean;
      
      private var _masteryStepReady:Boolean;
      
      private var _readyToStepUp:Boolean;
      
      private var _idle:Boolean;
      
      private var _almostEmpty:Boolean;
      
      private var _townHallUpgradeReady:Boolean;
      
      private var _needsNeedIcon:Boolean;
      
      private var _improvement:Boolean;
      
      private var _improvementSlotsFull:Boolean;
      
      private var _improvementHasExpiredSlot:Boolean;
      
      private var _blockedByBoulder:Boolean;
      
      private var _blockedByObject:Boolean;
      
      private var _groundRestricted:Boolean;
      
      private var _harvestIcon:Sprite;
      
      private var _masteryIcon:Sprite;
      
      private var _groundRestrictedIcon:Sprite;
      
      private var _blockedByObjectIcon:Sprite;
      
      private var _notConnectedIcon:Sprite;
      
      private var _activationIcon:Sprite;
      
      private var _stepUpIcon:Sprite;
      
      private var _idleIcon:Sprite;
      
      private var _almostEmptyIcon:Sprite;
      
      private var _upgradeIcon:Sprite;
      
      private var _needBuildingIcon:Sprite;
      
      private var _emergencyIcon:Sprite;
      
      private var _improvementIcon:Sprite;
      
      private var _terrainTypeNeeded:String;
      
      public function IconStateManager()
      {
         super();
      }
      
      protected static function clear(param1:Sprite) : void
      {
         while(param1.numChildren)
         {
            param1.removeChildAt(0);
         }
      }
      
      public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         TweenPlugin.activate([TransformAroundCenterPlugin]);
         if(param1 is BillboardObjectVo)
         {
            this._billboardObjectVo = param1 as BillboardObjectVo;
         }
         this._iconData = param1;
         this._iconContainer = param2;
         this._smartObjectContainer = param3;
         this._smartObjectContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeContainerHeight);
         this._billboardObjectVo.addEventListener(BillboardObjectVo.INVALIDATED,this.onDataChanged);
         this._notConnectedIcon = new Sprite();
         this._groundRestrictedIcon = new Sprite();
         this._blockedByObjectIcon = new Sprite();
         this._activationIcon = new Sprite();
         this._harvestIcon = new Sprite();
         this._masteryIcon = new Sprite();
         this._stepUpIcon = new Sprite();
         this._idleIcon = new Sprite();
         this._almostEmptyIcon = new Sprite();
         this._upgradeIcon = new Sprite();
         this._needBuildingIcon = new Sprite();
         this._emergencyIcon = new Sprite();
         this._improvementIcon = new Sprite();
         this.invalidateIconStateManager();
      }
      
      protected function changeContainerHeight(param1:Event) : void
      {
         this.checkContainerPosition();
      }
      
      protected function onDataChanged(param1:Event) : void
      {
         if(!this._isPlaying)
         {
            this.invalidateIconStateManager();
         }
      }
      
      public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         this._improvement = false;
         if(!this.useIcons() || this._billboardObjectVo.userInteractionLocked)
         {
            while(this._iconContainer.numChildren)
            {
               this._iconContainer.removeChildAt(0);
            }
            return;
         }
         if(this._billboardObjectVo.currentMode == "")
         {
            if(this._isPlaying)
            {
               TweenMax.delayedCall(1,this.invalidateIconStateManager,[param1]);
            }
            else if(!param1 && !this._billboardObjectVo.hideIconsForMoveMode)
            {
               this._isDirty = true;
               this._iconContainer.visible = true;
               if(!this.checkRollOver())
               {
                  this.checkConnected();
                  this.checkGroundRestrictions();
                  this.checkBlockedByGround();
                  this.checkUpgradeReady();
                  this.checkActivateReady();
                  this.checkHarvestReady();
                  this.checkMasteryStepReady();
                  this.checkStepUpReady();
                  this.checkIdle();
                  this.checkAlmostIdle();
                  this.setIcon();
               }
            }
            else if(!param1 && this._billboardObjectVo.hideIconsForMoveMode)
            {
               this._isDirty = true;
               this._iconContainer.visible = false;
               this.checkGroundRestrictions();
               this.checkBlockedByGround();
               this.checkConnected();
               if(this._billboardObjectVo is ResidentialFieldObjectVo || this._billboardObjectVo is ShopFieldObjectVo)
               {
                  this.checkNeedBuilding();
               }
               this.setIcon();
            }
            else
            {
               this.animateIcon();
            }
         }
         else if(this._billboardObjectVo.currentMode == ApplicationModeProxy.MODE_IMPROVEMENT)
         {
            this.checkImprovements();
            this.setIcon();
         }
      }
      
      private function checkRollOver() : Boolean
      {
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            if((this._billboardObjectVo as ResidentialFieldObjectVo).shopRollOver)
            {
               this._iconContainer.visible = false;
               this.checkNeedBuilding();
               this.setIcon();
               return true;
            }
            this._needsNeedIcon = false;
         }
         else if(this._billboardObjectVo is ShopFieldObjectVo)
         {
            if((this._billboardObjectVo as ShopFieldObjectVo).residentialRollOver)
            {
               this._iconContainer.visible = false;
               this.checkNeedBuilding();
               this.setIcon();
               return true;
            }
            this._needsNeedIcon = false;
         }
         return false;
      }
      
      protected function setIcon() : void
      {
         var _loc1_:Sprite = null;
         if(this._groundRestricted)
         {
            this.setGroundRestrictedIcon();
            _loc1_ = this._groundRestrictedIcon;
         }
         else if(this._blockedByObject)
         {
            this.setBlockedIcon();
            _loc1_ = this._blockedByObjectIcon;
         }
         else if(!this._connectedToStreet)
         {
            this.setNotConnectedIcon();
            _loc1_ = this._notConnectedIcon;
         }
         else if(this._needsNeedIcon)
         {
            this.setNeedBuildingIcon();
            _loc1_ = this._needBuildingIcon;
         }
         else if(this._readyToActivate && !this._billboardObjectVo.hasEmergency())
         {
            this.setActivationIcon();
            _loc1_ = this._activationIcon;
         }
         else if(this._readyToHarvest && !this._billboardObjectVo.hasEmergency())
         {
            this.setHarvestIcon();
            _loc1_ = this._harvestIcon;
         }
         else if(this._townHallUpgradeReady && !this._billboardObjectVo.hasEmergency())
         {
            this.setTownHallUpgradeIcon();
            _loc1_ = this._upgradeIcon;
         }
         else if(this._readyToStepUp && !this._billboardObjectVo.hasEmergency())
         {
            this.setStepUpIcon();
            _loc1_ = this._stepUpIcon;
         }
         else if(this._idle && !this._billboardObjectVo.hasEmergency())
         {
            this.setIdleIcon();
            _loc1_ = this._idleIcon;
         }
         else if(this._almostEmpty && !this._billboardObjectVo.hasEmergency())
         {
            this.setAlmostEmptyIcon();
            _loc1_ = this._almostEmptyIcon;
         }
         else if(this._masteryStepReady && !this._billboardObjectVo.hasEmergency())
         {
            this.setMasteryIcon();
            _loc1_ = this._masteryIcon;
         }
         if(this._improvement)
         {
            this.setImprovementIcon();
            _loc1_ = this._improvementIcon;
         }
         while(this._iconContainer.numChildren)
         {
            this._iconContainer.removeChildAt(0);
         }
         if(_loc1_ != null)
         {
            this._currentIcon = _loc1_;
            this._iconContainer.addChild(_loc1_);
         }
         else
         {
            this._currentIcon = null;
         }
         this._iconContainer.mouseEnabled = !(this._currentIcon == this._needBuildingIcon || this._currentIcon == null);
         this._isDirty = false;
         this.checkContainerPosition();
      }
      
      private function setImprovementIcon() : void
      {
         var _loc1_:* = null;
         while(this._improvementIcon.numChildren)
         {
            this._improvementIcon.removeChildAt(0);
         }
         if(this._improvement)
         {
            if(this._improvementSlotsFull)
            {
               _loc1_ = "ImprovementSlotsFull";
            }
            else
            {
               _loc1_ = "ImprovementSlotsEmpty";
            }
            if(this._improvementHasExpiredSlot)
            {
               _loc1_ += "AndExpired";
            }
            this._improvementIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,_loc1_,true));
         }
      }
      
      private function animateIcon() : void
      {
         if(this._currentIcon == this._harvestIcon || this._currentIcon == this._emergencyIcon)
         {
            this._isPlaying = true;
            TweenMax.to(this._currentIcon.getChildAt(0),0.25,{"transformAroundCenter":{
               "scaleX":1.3,
               "scaleY":1.3
            }});
            TweenMax.to(this._currentIcon.getChildAt(0),0.25,{
               "transformAroundCenter":{
                  "scaleX":0,
                  "scaleY":0
               },
               "delay":0.25,
               "onComplete":this.resetPlaying
            });
            this._currentIcon = null;
         }
      }
      
      private function resetPlaying() : void
      {
         this._isPlaying = false;
      }
      
      protected function checkContainerPosition() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this._billboardObjectVo.isInBaseMode)
         {
            this._iconContainer.x = this._billboardObjectVo.baseIconOffset.x + this._iconContainer.width / 2;
            this._iconContainer.y = this._billboardObjectVo.baseIconOffset.y;
         }
         else if(this._billboardObjectVo.currentBuildAsset == 1)
         {
            this._iconContainer.x = this._billboardObjectVo.placementIconOffset.x + this._iconContainer.width / 2;
            this._iconContainer.y = this._billboardObjectVo.placementIconOffset.y;
         }
         else if(this._billboardObjectVo.currentBuildAsset == 2)
         {
            this._iconContainer.x = this._billboardObjectVo.constructionIconOffset.x + this._iconContainer.width / 2;
            this._iconContainer.y = this._billboardObjectVo.constructionIconOffset.y;
         }
         else
         {
            this._iconContainer.x = this._billboardObjectVo.iconOffset.x + this._iconContainer.width / 2;
            this._iconContainer.y = this._billboardObjectVo.iconOffset.y;
         }
         if(this._iconContainer.x == this._iconContainer.width / 2 && this._iconContainer.y == 0)
         {
            if(this._smartObjectContainer.currentImage)
            {
               this._iconContainer.x = this._smartObjectContainer.currentImage.x + this._smartObjectContainer.currentImage.width / 2;
               this._iconContainer.y = this._smartObjectContainer.currentImage.y - 55;
            }
            else
            {
               _loc1_ = 36;
               _loc2_ = (this._billboardObjectVo.configPlayfieldItemVo.sizeX + this._billboardObjectVo.configPlayfieldItemVo.sizeY) / 2 * _loc1_;
               _loc3_ = -(this._smartObjectContainer.height - _loc2_);
               this._iconContainer.x = 0;
               this._iconContainer.y = _loc3_ - 60;
            }
         }
      }
      
      protected function checkConnected() : void
      {
         if(this._billboardObjectVo is DecorationFieldObjectVo || this._billboardObjectVo is CitySquareFieldObjectVo)
         {
            this._connectedToStreet = true;
         }
         else if(!this._billboardObjectVo.isConnectedToStreet)
         {
            this._connectedToStreet = false;
            if(this._billboardObjectVo.hideIconsForMoveMode)
            {
               this._iconContainer.visible = true;
            }
         }
         else
         {
            this._connectedToStreet = true;
         }
      }
      
      private function checkNeedBuilding() : void
      {
         this._needsNeedIcon = false;
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            if((this._billboardObjectVo as ResidentialFieldObjectVo).hasThisNeed)
            {
               if(this._billboardObjectVo.hideIconsForMoveMode)
               {
                  this._iconContainer.visible = true;
                  this._needsNeedIcon = true;
               }
               if((this._billboardObjectVo as ResidentialFieldObjectVo).shopRollOver)
               {
                  this._iconContainer.visible = true;
                  this._needsNeedIcon = true;
               }
            }
         }
         else if(this._billboardObjectVo is ShopFieldObjectVo)
         {
            if((this._billboardObjectVo as ShopFieldObjectVo).satisfiesThisNeed)
            {
               if(this._billboardObjectVo.hideIconsForMoveMode)
               {
                  this._iconContainer.visible = true;
                  this._needsNeedIcon = true;
               }
               if((this._billboardObjectVo as ShopFieldObjectVo).residentialRollOver)
               {
                  this._iconContainer.visible = true;
                  this._needsNeedIcon = true;
               }
            }
         }
      }
      
      protected function useIcons() : Boolean
      {
         return this._iconData.useIcons;
      }
      
      protected function checkActivateReady() : void
      {
         this._readyToActivate = this._billboardObjectVo.isReadyToInaugurate;
      }
      
      private function checkHarvestReady() : void
      {
         this._readyToHarvest = this._billboardObjectVo.isHarvestReady;
      }
      
      private function checkMasteryStepReady() : void
      {
         var _loc1_:MasteryChallengeDTO = null;
         var _loc2_:ConfigMasteryChallengeDTO = null;
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            if((this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO)
            {
               _loc1_ = (this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO.currentMasteryChallenge;
               if(_loc1_)
               {
                  _loc2_ = (this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO.config.configMasteryChallengeDTO;
                  while(_loc2_ != null)
                  {
                     if(_loc2_.id == _loc1_.id)
                     {
                        if(_loc1_.currentProgress >= _loc2_.targetProgress)
                        {
                           this._masteryStepReady = true;
                           return;
                        }
                     }
                     _loc2_ = _loc2_.nextChallenge;
                  }
               }
            }
         }
         this._masteryStepReady = false;
      }
      
      private function checkUpgradeReady() : void
      {
         if(this._billboardObjectVo is TownHallFieldObjectVo)
         {
            this._townHallUpgradeReady = (this._billboardObjectVo as TownHallFieldObjectVo).isReadyForUpgrade() && !this._billboardObjectVo.isUnderConstruction();
         }
         else
         {
            this._townHallUpgradeReady = false;
         }
      }
      
      private function checkStepUpReady() : void
      {
         this._readyToStepUp = this._billboardObjectVo.isReadyForNextConstructionStep();
      }
      
      private function checkIdle() : void
      {
         if(this._billboardObjectVo.buildingDTO == null)
         {
            this._idle = false;
            return;
         }
         if(!this._billboardObjectVo.isUnderConstruction())
         {
            if(this._billboardObjectVo is ProductionFieldObjectVo)
            {
               this._idle = (this._billboardObjectVo as ProductionFieldObjectVo).isIdle;
            }
            else if(this._billboardObjectVo is ShopFieldObjectVo)
            {
               this._idle = (this._billboardObjectVo as ShopFieldObjectVo).isIdle;
            }
         }
         else
         {
            this._idle = false;
         }
      }
      
      private function checkAlmostIdle() : void
      {
         if(this._billboardObjectVo is ShopFieldObjectVo)
         {
            this._almostEmpty = (this._billboardObjectVo as ShopFieldObjectVo).isAlmostEmpty;
         }
      }
      
      private function checkImprovements() : void
      {
         var _loc1_:IImprovable = null;
         var _loc2_:ImprovementVo = null;
         if(this._billboardObjectVo is IImprovable && this._billboardObjectVo.isConnectedToStreet && !this._billboardObjectVo.isUnderConstruction() && !this._billboardObjectVo.isExpansionObject && !this._billboardObjectVo.hasEmergency())
         {
            this._improvement = true;
            this._iconContainer.visible = true;
            _loc1_ = this._billboardObjectVo as IImprovable;
            this._improvementSlotsFull = _loc1_.numFreeImprovementSlots == 0;
            this._improvementHasExpiredSlot = false;
            for each(_loc2_ in _loc1_.currentImprovements)
            {
               if(_loc2_.runtime != -1)
               {
                  if(_loc2_.expirationTime <= this._billboardObjectVo.currentTimeStamp)
                  {
                     this._improvementHasExpiredSlot = true;
                     break;
                  }
               }
            }
         }
         else
         {
            this._improvement = false;
            this._iconContainer.visible = false;
         }
      }
      
      protected function checkGroundRestrictions() : void
      {
         this._groundRestricted = this._billboardObjectVo.isRestrictedByGround;
         if(this._groundRestricted)
         {
            this._terrainTypeNeeded = this._billboardObjectVo.terrainTypeNeeded;
            if(this._terrainTypeNeeded != ServerRestrictionConstants.BUILDINGLAND && this._terrainTypeNeeded != ServerRestrictionConstants.SEA && this._terrainTypeNeeded != ServerRestrictionConstants.COAST && this._terrainTypeNeeded != ServerRestrictionConstants.RIVER && this._terrainTypeNeeded != ServerRestrictionConstants.FARMLAND && this._terrainTypeNeeded != ServerRestrictionConstants.CLAYPIT && this._terrainTypeNeeded != ServerRestrictionConstants.SPRING && this._terrainTypeNeeded != ServerRestrictionConstants.FISHINGGROUND && this._terrainTypeNeeded != ServerRestrictionConstants.SNOW && this._terrainTypeNeeded != ServerRestrictionConstants.MOUNTAIN)
            {
               this._groundRestricted = false;
            }
            else if(this._billboardObjectVo.hideIconsForMoveMode)
            {
               this._iconContainer.visible = true;
            }
         }
      }
      
      protected function checkBlockedByGround() : void
      {
         this._blockedByObject = this._billboardObjectVo.isBlockedByObject;
         this._blockedByBoulder = this._billboardObjectVo.isBlockedByBoulder;
         if(this._billboardObjectVo.hideIconsForMoveMode && this._blockedByObject)
         {
            this._iconContainer.visible = true;
         }
      }
      
      private function setGroundRestrictedIcon() : void
      {
         while(this._groundRestrictedIcon.numChildren)
         {
            this._groundRestrictedIcon.removeChildAt(0);
         }
         switch(this._terrainTypeNeeded)
         {
            case ServerRestrictionConstants.SEA:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSeaGround",true));
               break;
            case ServerRestrictionConstants.COAST:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsCoastGround",true));
               break;
            case ServerRestrictionConstants.FARMLAND:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsFarmlandGround",true));
               break;
            case ServerRestrictionConstants.RIVER:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsDockGround",true));
               break;
            case ServerRestrictionConstants.CLAYPIT:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsClayGround",true));
               break;
            case ServerRestrictionConstants.SPRING:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSpringGround",true));
               break;
            case ServerRestrictionConstants.FISHINGGROUND:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsFishingGround",true));
               break;
            case ServerRestrictionConstants.MOUNTAIN:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsMountainGround",true));
               break;
            case ServerRestrictionConstants.SNOW:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSnowGround",true));
               break;
            default:
               this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsNormalGround",true));
         }
      }
      
      private function setBlockedIcon() : void
      {
         while(this._blockedByObjectIcon.numChildren)
         {
            this._blockedByObjectIcon.removeChildAt(0);
         }
         if(this._blockedByBoulder)
         {
            this._blockedByObjectIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"BlockedByBoulder",true));
         }
         else
         {
            this._blockedByObjectIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"BlockedByObject",true));
         }
      }
      
      private function setNotConnectedIcon() : void
      {
         while(this._notConnectedIcon.numChildren)
         {
            this._notConnectedIcon.removeChildAt(0);
         }
         this._notConnectedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NoStreetConnection",true));
      }
      
      private function setActivationIcon() : void
      {
         while(this._activationIcon.numChildren)
         {
            this._activationIcon.removeChildAt(0);
         }
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            this._activationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MoveIn",true));
         }
         else
         {
            this._activationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"Inaugurate",true));
         }
      }
      
      private function setHarvestIcon() : void
      {
         while(this._harvestIcon.numChildren)
         {
            this._harvestIcon.removeChildAt(0);
         }
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            if(!(this._billboardObjectVo as ResidentialFieldObjectVo).willBeUpgradeReadyOnNextHarvest || (this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO.currentMasteryChallenge != null)
            {
               if(this._masteryStepReady)
               {
                  this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialMasteryReady",true));
               }
               else
               {
                  this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialHarvestReady",true));
               }
            }
            else
            {
               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialUpgradeHarvest",true));
            }
         }
         else if(this._billboardObjectVo is ProductionFieldObjectVo)
         {
            if(!(this._billboardObjectVo as ProductionFieldObjectVo).upgradeReadyOnNextHarvest)
            {
               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionHarvestReady",true));
            }
            else
            {
               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionUpgradeHarvest",true));
            }
         }
         else if(this._billboardObjectVo is TownHallFieldObjectVo)
         {
            this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
         }
         else if(this._billboardObjectVo is MysteryBuildingObjectVo)
         {
            this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MysteryBuildingHarvestReady",true));
         }
      }
      
      private function setMasteryIcon() : void
      {
         while(this._masteryIcon.numChildren)
         {
            this._masteryIcon.removeChildAt(0);
         }
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            this._masteryIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MasteryStepFinished",true));
         }
      }
      
      private function setTownHallUpgradeIcon() : void
      {
         if(this._billboardObjectVo is TownHallFieldObjectVo)
         {
            while(this._upgradeIcon.numChildren)
            {
               this._upgradeIcon.removeChildAt(0);
            }
            this._upgradeIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallUpgrade",true));
         }
      }
      
      private function setStepUpIcon() : void
      {
         while(this._stepUpIcon.numChildren)
         {
            this._stepUpIcon.removeChildAt(0);
         }
         this._stepUpIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ConstructionStepReady",true));
      }
      
      private function setIdleIcon() : void
      {
         while(this._idleIcon.numChildren)
         {
            this._idleIcon.removeChildAt(0);
         }
         if(this._billboardObjectVo is ProductionFieldObjectVo)
         {
            if((this._billboardObjectVo as ProductionFieldObjectVo).upgradeReady)
            {
               this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionUpgradeIdle",true));
            }
            else
            {
               this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionIdle",true));
            }
         }
         else if(this._billboardObjectVo is ShopFieldObjectVo)
         {
            this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ShopIdle",true));
         }
      }
      
      private function setAlmostEmptyIcon() : void
      {
         while(this._almostEmptyIcon.numChildren)
         {
            this._almostEmptyIcon.removeChildAt(0);
         }
         this._almostEmptyIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ShopAlmostEmpty",true));
      }
      
      private function setNeedBuildingIcon() : void
      {
         while(this._needBuildingIcon.numChildren)
         {
            this._needBuildingIcon.removeChildAt(0);
         }
         this._needBuildingIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedBuildingIcon",true));
      }
   }
}

