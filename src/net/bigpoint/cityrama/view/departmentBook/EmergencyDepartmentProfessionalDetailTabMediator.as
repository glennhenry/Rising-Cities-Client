package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.ProfessionalDetailTabComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyDepartmentProfessionalDetailTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentProfessionalDetailTabMediator";
      
      private var _dTP:DepartmentTabProxy;
      
      private var _component:ProfessionalDetailTabComponent;
      
      private var _data:DepartmentProfessionalDetailInfoVo;
      
      public function EmergencyDepartmentProfessionalDetailTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init() : void
      {
         if(!this._component)
         {
            this._component = new ProfessionalDetailTabComponent();
         }
         this.removeListener();
         this.setLayerData();
         this.container.contentGroup.addElement(this._component);
         this.setupListener();
         if(this._data.department == ServerTagConstants.FIRE_DEPARTMENT)
         {
            sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_DETAIL_LAYER_OPENED);
         }
      }
      
      private function setLayerData() : void
      {
         this._data = this.departmentTabProxy.displayedProfessionalVo;
         this._component.data = this._data;
      }
      
      private function setupListener() : void
      {
         if(!this._component)
         {
            return;
         }
         this._component.addEventListener(AddSkillpointEvent.ADD,this.handleSkillPointAdded);
         this._component.addEventListener("buyOperation",this.handleByOperation);
         this._component.addEventListener("fireProfessional",this.handleFire);
      }
      
      private function handleByOperation(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_REHIRE_PROFESSIONAL,this._data.profId);
      }
      
      private function handleFire(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_FIRE,this._data.profId);
      }
      
      private function handleSkillPointAdded(param1:AddSkillpointEvent) : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,{
            "profId":param1.professionalId,
            "attributeType":param1.attributeType,
            "amount":1
         });
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         if(!this._component)
         {
            return;
         }
         this._component.removeEventListener(AddSkillpointEvent.ADD,this.handleSkillPointAdded);
         this._component.removeEventListener("buyOperation",this.handleByOperation);
         this._component.removeEventListener("fireProfessional",this.handleFire);
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE,ApplicationNotificationConstants.PROFESSIONALS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE:
               this.setLayerData();
               break;
            case ApplicationNotificationConstants.PROFESSIONALS_CHANGED:
               this.departmentTabProxy.updateDisplayedProfessional();
         }
      }
      
      private function get departmentTabProxy() : DepartmentTabProxy
      {
         if(!this._dTP)
         {
            this._dTP = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
         }
         return this._dTP;
      }
   }
}

