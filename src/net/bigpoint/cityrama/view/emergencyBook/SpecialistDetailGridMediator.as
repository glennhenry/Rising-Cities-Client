package net.bigpoint.cityrama.view.emergencyBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencyDataGridComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SpecialistDetailsListComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SpecialistDetailGridMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "SpecialistDetailGridMediator";
      
      public var slotNumber:Number;
      
      private var _eLP:EmergencyLayerProxy;
      
      private var _eBM:EmergencyBookMediator;
      
      public function SpecialistDetailGridMediator(param1:Object)
      {
         super(NAME,param1);
         this.component.addEventListener(EmergencyDataGridComponent.ITEM_SELECTED,this.handleItemSelected);
      }
      
      private function handleItemSelected(param1:Event) : void
      {
         var _loc2_:ProfessionalListInfoVo = param1.target.selectedItem as ProfessionalListInfoVo;
         if(_loc2_.operationsLeft > 0)
         {
            facade.sendNotification(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY,_loc2_);
         }
         else
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_REHIRE_PROFESSIONAL,_loc2_.profId);
         }
      }
      
      override public function getMediatorName() : String
      {
         return SpecialistDetailGridMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_CHANGED];
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
      }
      
      private function handleRemoved(param1:Event) : void
      {
         this.component.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
         facade.removeMediator(NAME);
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:EmergencyAssignListVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PROFESSIONALS_CHANGED:
               _loc2_ = this.emergencyLayerProxy.getEmergencyAssignListVo(this.emergencyBookMediator.billboardObjectVo,this.component.data.slotIndex);
               this.component.data = _loc2_;
         }
      }
      
      private function get emergencyLayerProxy() : EmergencyLayerProxy
      {
         if(this._eLP == null)
         {
            this._eLP = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         }
         return this._eLP;
      }
      
      private function get emergencyBookMediator() : EmergencyBookMediator
      {
         if(this._eBM == null)
         {
            this._eBM = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         }
         return this._eBM;
      }
      
      public function get component() : SpecialistDetailsListComponent
      {
         return super.viewComponent as SpecialistDetailsListComponent;
      }
   }
}

