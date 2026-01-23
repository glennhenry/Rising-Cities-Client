package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.MasteryComponent;
   import net.bigpoint.cityrama.view.common.components.ShowMasteryInfolayerEvent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialOverviewContentComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentialOverviewContentMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ResidentialOverviewContentMediator";
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _residentialData:ResidentialDetailViewVo;
      
      private var _sP:SoundProxy;
      
      private var _tabP:ResidentialTabProxy;
      
      private var _mLP:MainLayerProxy;
      
      private var _mP:BuildingMasteryProxy;
      
      private var _component:ResidentialOverviewContentComponent;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function ResidentialOverviewContentMediator(param1:String, param2:ResidentialPopup)
      {
         super(param1,param2);
      }
      
      public function init() : void
      {
         facade.sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYED_OPENED);
         if(!this._component)
         {
            this._component = new ResidentialOverviewContentComponent();
         }
         this.setOverviewData();
         this.container.contentGroup.addElement(this.component);
         this.addListener();
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.masteryComponent.uiInfolayerAlignmentLine],this));
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.updateDynamicData);
         RandomUtilities.removestackCall(this.updateData);
         super.onRemove();
         this.removeListener();
      }
      
      private function handleBuyPermits(param1:Event) : void
      {
         param1.stopPropagation();
         facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_KEY});
      }
      
      private function handleChangeResidents(param1:Event) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         facade.sendNotification(ApplicationNotificationConstants.OPEN_RESIDENT_SWAP,_loc2_.getObjectByVo(this._residentialData.residentialFieldObjectVo) as ResidentialFieldObject);
      }
      
      private function handleOpenBalanceFeature(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = new Object();
         _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
      }
      
      private function handleOpenUpgradeFeature(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = new Object();
         _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
      }
      
      private function handleOpenNeedFeature(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = new Object();
         _loc2_.feature = FeatureScreenProxy.FEATURE_NEEDS;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         param1.stopPropagation();
         this.soundProxy.playButtonClick();
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:BillboardObject = _loc2_.getObjectByVo(this._residentialData.residentialFieldObjectVo) as BillboardObject;
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         param1.stopPropagation();
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         if(this._residentialData.residentialFieldObjectVo.isHarvestReady)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
               "vo":this._residentialData.residentialFieldObjectVo,
               "silent":true
            });
         }
         sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._residentialData.residentialFieldObjectVo.buildingDTO.id);
         sendNotification(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST);
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.addEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.addEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.addEventListener(ResidentialOverviewContentComponent.OPEN_NEED_FEATURE,this.handleOpenNeedFeature);
         this.component.addEventListener(ResidentialOverviewContentComponent.OPEN_UPGRADE_FEATURE,this.handleOpenUpgradeFeature);
         this.component.addEventListener(ResidentialOverviewContentComponent.OPEN_BALANCE_FEATURE,this.handleOpenBalanceFeature);
         this.component.addEventListener(ResidentialOverviewContentComponent.CHANGE_RESIDENTS_EVENT,this.handleChangeResidents);
         this.component.addEventListener(ResidentialOverviewContentComponent.BUY_PERMITS,this.handleBuyPermits);
         this.component.addEventListener(ResidentialOverviewContentComponent.CLOSE_AND_HARVEST,this.handleCloseAndHarvest);
         this.component.masteryComponent.addEventListener(ShowMasteryInfolayerEvent.SHOW,this.showMasteryInfolayerHandler);
         this.component.masteryComponent.addEventListener(MasteryComponent.HIDE_MASTERY_INFOLAYER,this.hideMasteryInfolayerHandler);
         this.component.masteryComponent.addEventListener(MasteryComponent.COLLECT_MASTERY_CLICKED,this.collectMasteryHandler);
         this.component.masteryComponent.addEventListener(MasteryComponent.INSTANT_FINISH_MASTERY,this.instantFinishMasteryHandler);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.removeEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.removeEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.removeEventListener(ResidentialOverviewContentComponent.CHANGE_RESIDENTS_EVENT,this.handleChangeResidents);
         this.component.removeEventListener(ResidentialOverviewContentComponent.BUY_PERMITS,this.handleBuyPermits);
         this.component.removeEventListener(ResidentialOverviewContentComponent.OPEN_NEED_FEATURE,this.handleOpenNeedFeature);
         this.component.removeEventListener(ResidentialOverviewContentComponent.OPEN_UPGRADE_FEATURE,this.handleOpenUpgradeFeature);
         this.component.removeEventListener(ResidentialOverviewContentComponent.OPEN_BALANCE_FEATURE,this.handleOpenBalanceFeature);
         this.component.removeEventListener(ResidentialOverviewContentComponent.CLOSE_AND_HARVEST,this.handleCloseAndHarvest);
         this.component.masteryComponent.removeEventListener(ShowMasteryInfolayerEvent.SHOW,this.showMasteryInfolayerHandler);
         this.component.masteryComponent.removeEventListener(MasteryComponent.HIDE_MASTERY_INFOLAYER,this.hideMasteryInfolayerHandler);
         this.component.masteryComponent.removeEventListener(MasteryComponent.COLLECT_MASTERY_CLICKED,this.collectMasteryHandler);
      }
      
      private function handleCloseAndHarvest(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST);
      }
      
      private function get container() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      private function setOverviewData() : void
      {
         this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
         this.component.data = this._residentialData;
         if(this._residentialData.upgradeReady)
         {
            facade.sendNotification(VirtualTaskNotificationInterest.UPGRADEREADY_RESIDENTIAL_LAYEROPENED);
         }
      }
      
      public function get component() : ResidentialOverviewContentComponent
      {
         return this._component;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED,ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED,ApplicationNotificationConstants.IMPROVEMENT_DELETED,ApplicationNotificationConstants.IMPROVEMENT_UPDATED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED:
               this._waitingForPhaseUpdate = false;
               RandomUtilities.addstackCall(this.updateData);
               break;
            case ApplicationNotificationConstants.IMPROVEMENT_DELETED:
            case ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED:
            case ApplicationNotificationConstants.IMPROVEMENT_UPDATED:
            case ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE:
               if(!this._waitingForPhaseUpdate)
               {
                  RandomUtilities.addstackCall(this.updateData);
               }
               break;
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(!this._waitingForPhaseUpdate)
               {
                  RandomUtilities.addstackCall(this.updateDynamicData,0.5);
               }
         }
      }
      
      private function updateDynamicData() : void
      {
         this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
         this.component.updateDynamicData = this._residentialData;
      }
      
      private function updateData() : void
      {
         this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
         this.component.data = this._residentialData;
      }
      
      private function get layerProxy() : MainLayerProxy
      {
         if(this._mLP == null)
         {
            this._mLP = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         }
         return this._mLP;
      }
      
      private function get tabProxy() : ResidentialTabProxy
      {
         if(this._tabP == null)
         {
            this._tabP = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
         }
         return this._tabP;
      }
      
      private function get soundProxy() : SoundProxy
      {
         if(this._sP == null)
         {
            this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
         return this._sP;
      }
      
      private function get masteryProxy() : BuildingMasteryProxy
      {
         if(this._mP == null)
         {
            this._mP = facade.retrieveProxy(BuildingMasteryProxy.NAME) as BuildingMasteryProxy;
         }
         return this._mP;
      }
      
      private function showMasteryInfolayerHandler(param1:ShowMasteryInfolayerEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:String = null;
         var _loc5_:String = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         var _loc7_:int = 0;
         var _loc8_:MasteryChallengeVo = null;
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Vector.<MasteryBonusVo> = null;
         var _loc13_:MasteryChallengeUiInfolayerComponentVo = null;
         var _loc4_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc4_.isFeatureEnabled(ServerFeatureConstants.BUILDING_MASTERY))
         {
            _loc2_ = param1.target.localToGlobal(new Point());
            _loc2_.x = _loc2_.x + param1.target.width / 2 - 5;
            _loc3_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.locked.header.capital");
            _loc5_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.locked.flavor",[_loc4_.masteryFeatureUnlockLevel]);
            _loc6_ = new SimpleTextUiInfolayerContentVo(0,_loc2_,_loc5_,_loc3_,"levellocked");
            _loc6_.width = 230;
            facade.sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_);
         }
         else
         {
            _loc7_ = param1.index;
            _loc2_ = this.component.masteryComponent.uiInfolayerAlignmentLine.localToGlobal(new Point());
            _loc2_.x += this.component.masteryComponent.uiInfolayerAlignmentLine.width / 5 * (_loc7_ + 0.5) - 5;
            if(_loc7_ < 0 || _loc7_ > 4)
            {
               _loc7_ = int(this._residentialData.currentMasteryChallenge.currentMasteryIndex);
               _loc2_.x += this.component.masteryComponent.uiInfolayerAlignmentLine.width / 2;
            }
            _loc8_ = this._residentialData.currentMasteryChallenge.challenges[_loc7_];
            if(_loc8_ == null)
            {
               return;
            }
            _loc3_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.running.header.capital",[_loc7_ + 1]);
            _loc9_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.challenge.flavor." + _loc8_.challengeType);
            _loc10_ = _loc8_.targetProgress;
            _loc11_ = _loc8_.currentProgress;
            _loc12_ = this.masteryProxy.getMasteryBonusForChallenge(this._residentialData.residentialFieldObjectVo,_loc8_.bonusId,_loc7_ + 1);
            _loc13_ = new MasteryChallengeUiInfolayerComponentVo(0,_loc2_,_loc9_,_loc10_,_loc11_,_loc12_,this._residentialData.currentMasteryChallenge.currentMasteryIndex > _loc7_,_loc3_);
            facade.sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc13_,this.getMediatorName());
         }
      }
      
      private function hideMasteryInfolayerHandler(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function collectMasteryHandler(param1:Event) : void
      {
         this.collectMastery();
      }
      
      private function instantFinishMasteryHandler(param1:Event) : void
      {
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc2_.realCurrency >= this._residentialData.currentMasteryChallenge.instantFinishPrice)
         {
            this.collectMastery(true);
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      private function collectMastery(param1:Boolean = false) : void
      {
         var _loc2_:int = 1;
         if(this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryBonus)
         {
            _loc2_ = this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup + 1;
         }
         var _loc3_:Vector.<MasteryBonusVo> = this.masteryProxy.getMasteryBonusForChallenge(this._residentialData.residentialFieldObjectVo,this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge.config.bonusID,_loc2_);
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_MASTERY_CHALLENGE_COMPLETE_LAYER,{
            "masteryIndex":_loc2_,
            "rewards":_loc3_
         });
         var _loc4_:Object = new Object();
         _loc4_.buildingId = this._residentialData.residentialFieldObjectVo.buildingDTO.id;
         _loc4_.masteryChallengeId = this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge.id;
         _loc4_.instantFinish = param1;
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,_loc4_);
      }
   }
}

