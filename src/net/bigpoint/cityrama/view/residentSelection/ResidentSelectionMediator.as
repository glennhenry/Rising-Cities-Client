package net.bigpoint.cityrama.view.residentSelection
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentSelection.ResidentSelectionEvent;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentSelectionPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentSelectionMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ResidentSelectionMediator";
      
      private var _mainMenuPopedUpProxy:MainMenuPopedUpProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _residentSelectionData:ResidentSelectionVo;
      
      private var _closedBySelection:Boolean = false;
      
      public function ResidentSelectionMediator(param1:String, param2:ResidentSelectionPopup)
      {
         super(param1,param2);
         this._mainMenuPopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = NAME;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(ResidentSelectionEvent.OPEN_FEATURE_NEEDS,this.onOpenNeedFeatureScreen);
         this.component.addEventListener(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE,this.onOpenUpgradeFeatureScreen);
         this.component.addEventListener(ResidentSelectionEvent.RESIDENT_SELECTED,this.onResidentSelected);
      }
      
      private function onResidentSelected(param1:ResidentSelectionEvent) : void
      {
         this._soundProxy.playButtonClick();
         if(!this._residentSelectionData.isSwap)
         {
            sendNotification(ApplicationNotificationConstants.RESIDENT_SELECTED,{
               "type":param1.residentType,
               "resident":this._residentSelectionData.residential
            });
            sendNotification(VirtualTaskNotificationInterest.RESIDENT_SELECTED_FOR_MOVEIN);
            sendNotification(ApplicationNotificationConstants.CHECK_MASTERY_TRAIT_SELECTION);
         }
         else
         {
            if(this._residentSelectionData.residential.residentialFieldObjectVo.isHarvestReady)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
                  "vo":this._residentSelectionData.residential.billboardObjectVo,
                  "silent":true
               });
            }
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_SWAP_RESIDENT,{
               "billboard":this._residentSelectionData.residential.billboardObjectVo,
               "popType":param1.residentType
            });
         }
         this._closedBySelection = true;
         this._soundProxy.playInaugurateResidential();
         this.handleClose(null);
      }
      
      private function onOpenUpgradeFeatureScreen(param1:ResidentSelectionEvent) : void
      {
      }
      
      private function onOpenNeedFeatureScreen(param1:ResidentSelectionEvent) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.feature = FeatureScreenProxy.FEATURE_NEEDS;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
      }
      
      private function handleClose(param1:Event) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(ResidentSelectionEvent.OPEN_FEATURE_NEEDS,this.onOpenNeedFeatureScreen);
         this.component.removeEventListener(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE,this.onOpenUpgradeFeatureScreen);
         this.component.removeEventListener(ResidentSelectionEvent.RESIDENT_SELECTED,this.onResidentSelected);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = null;
      }
      
      public function get component() : ResidentSelectionPopup
      {
         return super.viewComponent as ResidentSelectionPopup;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 != null)
         {
            this._residentSelectionData = param1 as ResidentSelectionVo;
            this.component.data = this._residentSelectionData;
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         if(!this._closedBySelection)
         {
            sendNotification(VirtualTaskNotificationInterest.RESIDENT_SELECTIONLAYER_CLOSED);
         }
      }
   }
}

