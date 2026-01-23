package net.bigpoint.cityrama.view.mainMenu
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.ViewmodeGroupComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ViewModeMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ViewModeMenuMediator";
      
      private var _soundProxy:SoundProxy;
      
      private var _cookieProxy:LocalStorageProxy;
      
      public function ViewModeMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._cookieProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this.setupListeners();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
      }
      
      override public function getMediatorName() : String
      {
         return ViewModeMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function get component() : ViewmodeGroupComponent
      {
         return super.viewComponent as ViewmodeGroupComponent;
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(ViewmodeGroupComponent.EVENT_FIRE_SELECTED,this.heatmapSelectionChanged);
         this.component.addEventListener(ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED,this.heatmapSelectionChanged);
         this.component.addEventListener(ViewmodeGroupComponent.EVENT_NONE_SELECTED,this.heatmapSelectionChanged);
         this.component.addEventListener(ViewmodeGroupComponent.EVENT_POLICE_SELECTED,this.heatmapSelectionChanged);
      }
      
      private function heatmapSelectionChanged(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         switch(param1.type)
         {
            case ViewmodeGroupComponent.EVENT_FIRE_SELECTED:
               if(!_loc2_.component.subMenueBasement.selected)
               {
                  _loc2_.component.subMenueBasement.selected = true;
               }
               sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.FIRE_DEPARTMENT);
               this._cookieProxy.userdata.lastViewedHeatMap = ServerTagConstants.FIRE_DEPARTMENT;
               break;
            case ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED:
               if(!_loc2_.component.subMenueBasement.selected)
               {
                  _loc2_.component.subMenueBasement.selected = true;
               }
               sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.HOSPITAL);
               this._cookieProxy.userdata.lastViewedHeatMap = ServerTagConstants.HOSPITAL;
               break;
            case ViewmodeGroupComponent.EVENT_NONE_SELECTED:
               if(_loc2_.component.subMenueBasement.selected)
               {
                  _loc2_.component.subMenueBasement.selected = false;
               }
               sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
               break;
            case ViewmodeGroupComponent.EVENT_POLICE_SELECTED:
               if(!_loc2_.component.subMenueBasement.selected)
               {
                  _loc2_.component.subMenueBasement.selected = true;
               }
               this._cookieProxy.userdata.lastViewedHeatMap = ServerTagConstants.POLICE_DEPARTMENT;
               sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.POLICE_DEPARTMENT);
         }
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(ViewmodeGroupComponent.EVENT_FIRE_SELECTED,this.heatmapSelectionChanged);
         this.component.removeEventListener(ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED,this.heatmapSelectionChanged);
         this.component.removeEventListener(ViewmodeGroupComponent.EVENT_NONE_SELECTED,this.heatmapSelectionChanged);
         this.component.removeEventListener(ViewmodeGroupComponent.EVENT_POLICE_SELECTED,this.heatmapSelectionChanged);
      }
   }
}

