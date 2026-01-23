package net.bigpoint.cityrama.view.hud
{
   import flash.display.Sprite;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.menu.HUDProxy;
   import net.bigpoint.cityrama.model.menu.vo.HUDVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.hud.ui.components.HUDBar;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class HUDMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "HUDMediator";
      
      private var component:HUDBar;
      
      private var _hudProxy:HUDProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _hudData:HUDVo;
      
      private var _oldEnergyMod:Number = -1;
      
      private var _oldMoodMod:Number = -1;
      
      private var _layoutProxy:LayoutProxy;
      
      private var dead:Boolean;
      
      public function HUDMediator(param1:String, param2:HUDBar)
      {
         super(param1);
         this.component = param2;
         this._hudProxy = facade.retrieveProxy(HUDProxy.NAME) as HUDProxy;
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._layoutProxy = super.facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
         this._hudData = this._hudProxy.hudVo;
         this.setHUDData();
      }
      
      private function setHUDData() : void
      {
         this.component.data = this._hudData;
      }
      
      override public function onRegister() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.component.addEventListener("addCC",this.handleAddCC);
         this.component.addEventListener("addDD",this.handleAddDD);
         this.component.addEventListener("addPP",this.handleAddPP);
         this.component.addEventListener("logout",this.handleLogout);
         this.component.addEventListener("support",this.handleSupport);
         this.component.addEventListener("news",this.handleNews);
         this.component.addEventListener("forum",this.handleForum);
         this.component.addEventListener("openLevelPreview",this.handleOpenLevelPreview);
      }
      
      private function handleNews(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYER_REQUEST_NEWSSCREEN);
      }
      
      private function handleForum(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM);
      }
      
      private function handleAddPP(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_PRODUCTIONPOINTS);
      }
      
      private function handleLogout(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(MiniLayerConstants.OPEN_MINI_LOGOUT);
      }
      
      private function handleSupport(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:String = this._flashVarsProxy.supportURL;
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         try
         {
            navigateToURL(_loc3_,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function handleAddCC(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
      }
      
      private function handleAddDD(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleOpenLevelPreview(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(MiniLayerConstants.OPEN_MINI_LEVEL);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener("addCC",this.handleAddCC);
         this.component.removeEventListener("addDD",this.handleAddDD);
         this.component.removeEventListener("logout",this.handleLogout);
         this.component.removeEventListener("addPP",this.handleAddPP);
         this.component.removeEventListener("support",this.handleSupport);
         this.component.levelBar.removeEventListener("openLevelPreview",this.handleOpenLevelPreview);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,ApplicationNotificationConstants.MAXXP_CHANGED,ApplicationNotificationConstants.XP_CHANGED,ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED,ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED,ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED,ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED,ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,ApplicationNotificationConstants.RICHMEN_CHANGED,ApplicationNotificationConstants.WORKERS_CHANGED,ApplicationNotificationConstants.ACADEMICS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
            case ApplicationNotificationConstants.MAXXP_CHANGED:
            case ApplicationNotificationConstants.XP_CHANGED:
            case ApplicationNotificationConstants.USERLEVEL_CHANGED:
            case ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED:
            case ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED:
            case ApplicationNotificationConstants.WORKERS_CHANGED:
            case ApplicationNotificationConstants.RICHMEN_CHANGED:
            case ApplicationNotificationConstants.ACADEMICS_CHANGED:
               this.updateHUDData();
               break;
            case ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED:
            case ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED:
            case ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED:
            case ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED:
               this.updateHUDData();
               this.checkChanges();
               break;
            case ApplicationNotificationConstants.APPLICATION_MODE_MOVE_INITIALIZE:
               this.component.visible = false;
               break;
            case ApplicationNotificationConstants.APPLICATION_MODE_MOVE_DEINITIALIZE:
               this.component.visible = true;
               break;
            case ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED:
               this.component.forumGroup.includeInLayout = this.component.forumGroup.visible = this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN;
               break;
            case ApplicationNotificationConstants.SHOW_GUI:
               this.component.visible = param1.getBody();
               break;
            case ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE:
               this.component.changeResourceSelectionTo(param1.getBody() as String);
         }
      }
      
      private function checkChanges() : void
      {
         if(this._oldEnergyMod != -1 && this._oldMoodMod != -1)
         {
            if(this._oldEnergyMod > this._hudData.energyModifier)
            {
               this._soundProxy.playEnergyDown();
            }
            else if(this._oldEnergyMod < this._hudData.energyModifier)
            {
               this._soundProxy.playEnergyUp();
            }
            if(this._oldMoodMod > this._hudData.happinessModifier)
            {
               this._soundProxy.playMoodDown();
            }
            else if(this._oldMoodMod < this._hudData.happinessModifier)
            {
               this._soundProxy.playMoodUp();
            }
         }
      }
      
      private function updateHUDData() : void
      {
         this._oldEnergyMod = this._hudData.energyModifier;
         this._oldMoodMod = this._hudData.happinessModifier;
         this._hudData = this._hudProxy.hudVo;
         this.setHUDData();
      }
      
      public function get vcElementSparkleSprite() : Sprite
      {
         return this.component.virtualCurrencySparkleSprite;
      }
      
      public function get rcElementSparkleSprite() : Sprite
      {
         return this.component.realCurrencySparkleSprite;
      }
      
      public function get xpElementSparkleSprite() : Sprite
      {
         return this.component.levelSparkleSprite;
      }
      
      public function get levelBarRectangle() : Rectangle
      {
         return this.component.levelBar.pixelBounds;
      }
      
      public function get residentElementSparkleSprite() : Sprite
      {
         return this.component.residentsSparkleSprite;
      }
      
      public function get resourceElementSparkleSprite() : Sprite
      {
         return this.component.resourcesSparkleSprite;
      }
      
      public function kill() : void
      {
         this.component.visible = false;
         this.dead = true;
      }
      
      public function visible(param1:Boolean) : void
      {
         if(!this.dead)
         {
            this.component.visible = param1;
         }
      }
   }
}

