package net.bigpoint.cityrama.model.serverStorage
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ClientUIDataDTO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ServerStorageProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ServerStorageProxy";
      
      private var _uiDataDTO:ClientUIDataDTO;
      
      public function ServerStorageProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         TweenMax.killDelayedCallsTo(this.handleServerNotification());
      }
      
      public function updateUIData(param1:ClientUIDataDTO) : void
      {
         this._uiDataDTO = param1;
      }
      
      public function updateState(param1:String, param2:Boolean) : void
      {
         TweenMax.killDelayedCallsTo(this.handleServerNotification());
         switch(param1)
         {
            case OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC:
               this.uiDataDTO.lowTraffic = param2;
               OptionsGlobalVariables.getInstance().normalCitizenAmount = !param2;
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS:
               this.uiDataDTO.lowGraphicsQuality = param2;
               OptionsGlobalVariables.getInstance().highQuality = !param2;
               FileRuntimeLoadServiceDynamic.getInstance().optionSmoothing = !param2;
               facade.sendNotification(ApplicationNotificationConstants.QUALITY_CHANGED);
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS:
               this.uiDataDTO.increasingTips = param2;
               OptionsGlobalVariables.getInstance().showFloater = param2;
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS:
               this.uiDataDTO.increasingSimbols = param2;
               OptionsGlobalVariables.getInstance().showDropIcons = param2;
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION:
               this.uiDataDTO.rcVerification = param2;
               OptionsGlobalVariables.getInstance().showRCVerification = param2;
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION:
               this.uiDataDTO.fasterNotification = param2;
               OptionsGlobalVariables.getInstance().fasterNotification = param2;
               break;
            case OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE:
               this.uiDataDTO.fullscreenActive = param2;
               OptionsGlobalVariables.getInstance().fullscreenActive = param2;
         }
         TweenMax.delayedCall(0.3,this.handleServerNotification);
      }
      
      private function handleServerNotification() : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
      }
      
      public function get uiDataDTO() : ClientUIDataDTO
      {
         return this._uiDataDTO;
      }
      
      public function set uiDataDTO(param1:ClientUIDataDTO) : void
      {
         this._uiDataDTO = param1;
         facade.sendNotification(ServerNotificationConstants.SET_USER_OPTIONS);
      }
      
      public function isPlayfieldItemConfigIdViewed(param1:uint) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this._uiDataDTO != null && this._uiDataDTO.viewedPlayfieldItemConfigIds != null && this._uiDataDTO.viewedPlayfieldItemConfigIds.indexOf(param1) == -1)
         {
            _loc2_ = false;
         }
         if(this._uiDataDTO.viewedPlayfieldItemConfigIds == null)
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      public function isQuestViewed(param1:uint) : Boolean
      {
         if(this._uiDataDTO != null && this._uiDataDTO.viewedQuest != null && this._uiDataDTO.viewedQuest.indexOf(param1) == -1)
         {
            return false;
         }
         if(this._uiDataDTO.viewedQuest == null)
         {
            return false;
         }
         return true;
      }
      
      public function addPlayfieldItemConfigIdViewed(param1:uint) : void
      {
         if(this._uiDataDTO.viewedPlayfieldItemConfigIds == null)
         {
            this._uiDataDTO.viewedPlayfieldItemConfigIds = new Vector.<Number>();
         }
         this._uiDataDTO.viewedPlayfieldItemConfigIds.push(param1);
      }
      
      public function addViewedQuest(param1:uint) : void
      {
         if(this._uiDataDTO.viewedQuest == null)
         {
            this._uiDataDTO.viewedQuest = new Vector.<Number>();
         }
         this._uiDataDTO.viewedQuest.push(param1);
      }
   }
}

