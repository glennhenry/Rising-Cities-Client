package net.bigpoint.cityrama.view.emergencyBook
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.*;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyBookMediator";
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _slotMode:Boolean;
      
      public function EmergencyBookMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function getMediatorName() : String
      {
         return EmergencyBookMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,ApplicationNotificationConstants.EMERGENCY_END,ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED,ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY:
               while(this.component.contentLeft.numElements)
               {
                  this.component.contentLeft.removeElementAt(0);
               }
               this.component.contentLeft.addElement(param1.getBody() as UIComponent);
               break;
            case ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY:
               while(this.component.sideContainer.numElements)
               {
                  this.component.sideContainer.removeElementAt(0);
               }
               this.component.sideContainer.addElement(param1.getBody() as UIComponent);
               break;
            case ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED:
               if(!this._slotMode)
               {
                  this.startEnabledCheck();
                  break;
               }
               this.previewValues();
               break;
            case ApplicationNotificationConstants.EMERGENCY_END:
               this.handleClose(null);
               break;
            case ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY:
               this.previewValues();
         }
      }
      
      private function previewValues() : void
      {
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:EmergencyAssignVo = _loc1_.getEmergencyAssignVo(this.billboardObjectVo);
         var _loc3_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc2_.maxSuccessChance);
         _loc3_.advanceVisible = true;
         this.component.successProgress = _loc3_;
         this.component.successBarComponent.advanceProgress = _loc2_.currentSuccessChance;
      }
      
      public function startEnabledCheck() : void
      {
         var _loc4_:ProfessionalSlotVo = null;
         var _loc5_:EmergencySuccessBarVo = null;
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:EmergencyAssignVo = _loc1_.getEmergencyAssignVo(this.billboardObjectVo);
         if(!this._slotMode)
         {
            _loc5_ = new EmergencySuccessBarVo(_loc2_.maxSuccessChance);
            _loc5_.advanceVisible = false;
            this.component.successProgress = _loc5_;
            this.component.successBarComponent.successProgress = _loc2_.currentSuccessChance;
         }
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_.professionalSlots)
         {
            if(!_loc4_.empty)
            {
               _loc3_ = true;
               break;
            }
         }
         if(_loc3_)
         {
            this.component.startEnabled();
         }
         else
         {
            this.component.startDisabled();
         }
      }
      
      public function setData(param1:Object) : void
      {
         this._billboardObjectVo = param1 as BillboardObjectVo;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this.setupInitialValues();
         sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_OPENED);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_CLOSED);
      }
      
      private function setupInitialValues() : void
      {
         var _loc1_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc3_:EmergencyZoneLayerVo = _loc2_.getEmergencyZoneLayerVo(this.billboardObjectVo);
         this.component.data = _loc3_;
         this.component.successProgress = new EmergencySuccessBarVo(_loc3_.maxSolvingPossibility);
         if(_loc1_.userdata.showEmergencyZoneLayer)
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_COVERAGE_IN_EMERGENCY_LAYER);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
         }
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(EmergencyBook.NEXT,this.handleNextClick);
         this.component.addEventListener(EmergencyBook.START,this.handleStartClick);
         this.component.addEventListener(EmergencyBook.SELECT,this.handleSelectClick);
         this.component.addEventListener(EmergencySuccessBarComponent.BUBBLE_CLICKED,this.handleShowCoverage);
         this.component.addEventListener(SpecialistSlotItemrenderer.SPECIALIST_SLOT_CLICKED,this.handleSlotClick);
         this.component.addEventListener(EmergencyDataGridComponent.ITEM_SELECTED,this.handleSpecialistSelected);
         this.component.addEventListener(EmergencyDataGridComponent.SELECT_ITEM_EVENT.type,this.handleSelectClick);
         this.component.backButton.addEventListener(MouseEvent.CLICK,this.handleBackClicked);
      }
      
      private function handleStartClick(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.START_EMERGENCY_HANDLING,this.billboardObjectVo);
         var _loc2_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc2_ = this.component.localToGlobal(_loc2_);
         sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,new DropIconVO(ServerResConst.RESOURCE_EXPERIENCE,_loc2_));
         this.component.startButton.enabled = false;
         TweenMax.delayedCall(1,this.handleClose,[null]);
      }
      
      private function handleSelectClick(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED);
         facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc3_:EmergencyAssignVo = _loc2_.getEmergencyAssignVo(this.billboardObjectVo);
         var _loc4_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc3_.maxSuccessChance);
         _loc4_.advanceVisible = false;
         this.component.successProgress = _loc4_;
         this._slotMode = false;
         this.startEnabledCheck();
      }
      
      private function handleSpecialistSelected(param1:Event) : void
      {
         sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SELECTED);
         this.component.selectEnabled();
      }
      
      private function handleSlotClick(param1:Event) : void
      {
         this._slotMode = true;
         sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SLOT_CLICKED);
         var _loc2_:ProfessionalSlotVo = param1.target.data as ProfessionalSlotVo;
         facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_DETAILS_IN_EMERGENCY_LAYER,_loc2_);
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencyAssignVo = _loc3_.getEmergencyAssignVo(this.billboardObjectVo);
         var _loc5_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc4_.maxSuccessChance);
         _loc5_.advanceVisible = true;
         this.component.successProgress = _loc5_;
         this.component.selectDisabled();
      }
      
      private function handleShowCoverage(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.SHOW_COVERAGE_IN_EMERGENCY_LAYER);
      }
      
      private function handleNextClick(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function get component() : EmergencyBook
      {
         return super.viewComponent as EmergencyBook;
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return this._billboardObjectVo;
      }
      
      private function handleBackClicked(param1:MouseEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
      }
   }
}

