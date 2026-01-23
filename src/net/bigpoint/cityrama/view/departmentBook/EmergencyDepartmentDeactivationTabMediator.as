package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentDeactivationTab;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyDepartmentDeactivationTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentDeactivationTabMediator";
      
      private var _pfOP:PlayfieldObjectsProxy;
      
      private var _eP:EmergencyProxy;
      
      private var _component:EmergencyDepartmentDeactivationTab;
      
      private var _currentLayerState:String;
      
      public function EmergencyDepartmentDeactivationTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init() : void
      {
         if(!this._component)
         {
            this._component = new EmergencyDepartmentDeactivationTab();
         }
         this.setLayerData();
         this.container.contentGroup.addElement(this._component);
         this.setupListener();
      }
      
      private function setLayerData() : void
      {
         this._currentLayerState = this.currentLayerState;
         if(this._currentLayerState != "")
         {
            this.component.data = this._currentLayerState;
         }
      }
      
      private function get currentLayerState() : String
      {
         if(this.playfieldObjectsProxy.infrastructureBuildingList.length == 0)
         {
            return EmergencyDepartmentDeactivationTab.STATE_DEACTIVATED;
         }
         if(this.emergencyProxy.emergencyActivelyRunning)
         {
            return EmergencyDepartmentDeactivationTab.STATE_ACTIVE_EMERGENCY_RUNNING;
         }
         return EmergencyDepartmentDeactivationTab.STATE_ACTIVE;
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(EmergencyDepartmentDeactivationTab.EVENT_DEACTIVATE_EMERGENCIES,this.handleDeactivate);
      }
      
      private function handleDeactivate(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE);
         this.component.data = EmergencyDepartmentDeactivationTab.STATE_DEACTIVATED;
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         if(this.component)
         {
            this.component.removeEventListener(EmergencyDepartmentDeactivationTab.EVENT_DEACTIVATE_EMERGENCIES,this.handleDeactivate);
         }
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      public function get component() : EmergencyDepartmentDeactivationTab
      {
         return this._component;
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         if(!this._eP)
         {
            this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         }
         return this._eP;
      }
      
      private function get playfieldObjectsProxy() : PlayfieldObjectsProxy
      {
         if(!this._pfOP)
         {
            this._pfOP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         }
         return this._pfOP;
      }
   }
}

