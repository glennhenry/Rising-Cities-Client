package net.bigpoint.cityrama.view.assistants
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolSideMenu;
   import net.bigpoint.cityrama.view.miniLayer.PatrolMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.PatrolMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PatrolSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PatrolSideMenuMediator";
      
      private var _assiViewProxy:AssistViewProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _data:PatrolViewVo;
      
      public function PatrolSideMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._data = this._assiViewProxy.getPatrolViewVo();
         this.component.data = this._data;
         this.setupListener();
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(PatrolSideMenu.CLICK_INFO,this.onClick);
         this.component.addEventListener(PatrolSideMenu.HIDE_INFO,this.onMouseOut);
         this.component.addEventListener(PatrolSideMenu.SHOW_INFO,this.onMouseOver);
      }
      
      private function onClick(param1:Event) : void
      {
         var _loc2_:PopupSettingsVo = null;
         if(!this._data.isActive)
         {
            this.component.menuContainer.removeAllElements();
            _loc2_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc2_.modal = true;
            _loc2_.viewClass = PatrolMiniLayer;
            _loc2_.mediatorClass = PatrolMiniLayerMediator;
            _loc2_.mediatorName = PatrolMiniLayerMediator.NAME;
            _loc2_.data = this._assiViewProxy.getPatrolOptions();
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
         }
      }
      
      private function onMouseOut(param1:Event) : void
      {
         this.component.menuContainer.removeAllElements();
      }
      
      private function onMouseOver(param1:Event) : void
      {
         var _loc2_:PatrolInfoComponent = new PatrolInfoComponent();
         _loc2_.data = this._assiViewProxy.getPatrolViewVo();
         this.component.menuContainer.addElement(_loc2_);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ASSIST_DATA_CHANGE,ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED:
               this.component.visible = this.component.includeInLayout = this._playfieldObjectsProxy.infrastructureBuildingList.length > 0;
               break;
            case ApplicationNotificationConstants.ASSIST_DATA_CHANGE:
            case ApplicationNotificationConstants.TIMESTAMP_SET:
               this._data = this._assiViewProxy.getPatrolViewVo();
               this.component.data = this._data;
               break;
            case ApplicationNotificationConstants.SHOW_GUI:
               if(param1.getBody() == true)
               {
                  this.component.visible = this.component.includeInLayout = this._playfieldObjectsProxy.infrastructureBuildingList.length > 0;
                  break;
               }
               this.component.visible = this.component.includeInLayout = false;
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.removeEventListener(PatrolSideMenu.CLICK_INFO,this.onClick);
         this.component.removeEventListener(PatrolSideMenu.HIDE_INFO,this.onMouseOut);
         this.component.removeEventListener(PatrolSideMenu.SHOW_INFO,this.onMouseOver);
      }
      
      public function get component() : PatrolSideMenu
      {
         return super.viewComponent as PatrolSideMenu;
      }
   }
}

