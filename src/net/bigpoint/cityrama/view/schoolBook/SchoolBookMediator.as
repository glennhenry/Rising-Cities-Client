package net.bigpoint.cityrama.view.schoolBook
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.schoolBook.SchoolBookProxy;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentBookMediator;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SchoolBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "SchoolBookMediator";
      
      private var _academyObject:AcademyFieldObject;
      
      private var _objectSpool:Dictionary;
      
      private var _schoolBookProxy:SchoolBookProxy;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      public function SchoolBookMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._schoolBookProxy = facade.retrieveProxy(SchoolBookProxy.NAME) as SchoolBookProxy;
      }
      
      override public function getMediatorName() : String
      {
         return SchoolBookMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,ApplicationNotificationConstants.ACADEMY_STATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PROFESSIONALS_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED:
               if(!this._waitingForPhaseUpdate)
               {
                  RandomUtilities.addstackCall(this.renew);
               }
               break;
            case ApplicationNotificationConstants.ACADEMY_STATE_CHANGED:
               this._waitingForPhaseUpdate = false;
               RandomUtilities.addstackCall(this.renew);
         }
      }
      
      public function get component() : SchoolBook
      {
         return super.viewComponent as SchoolBook;
      }
      
      public function get academyObject() : AcademyFieldObject
      {
         return this._academyObject;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._objectSpool = new Dictionary();
         sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
         this.setupListeners();
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.renew);
         sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_CLOSED);
         super.onRemove();
         this.removeListeners();
      }
      
      private function renew() : void
      {
         var _loc1_:PlayfieldObjectsProxy = null;
         if(this.academyObject)
         {
            this.setData(this.academyObject);
         }
         else
         {
            _loc1_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            this.setData(_loc1_.getAcademyList()[0]);
         }
      }
      
      public function setData(param1:Object) : void
      {
         this._waitingForPhaseUpdate = false;
         this._academyObject = param1 as AcademyFieldObject;
         this.component.data = this._schoolBookProxy.getSchoolBookVo(this._academyObject);
         this.setTimerCost();
         this.startTimerCostInterval();
      }
      
      private function setTimerCost() : void
      {
         var _loc1_:Object = {};
         _loc1_.rcStock = this.resourceProxy.realCurrency;
         _loc1_.cost = 1;
         _loc1_.cost = this.formulaProxy.getInstantFinishCostForAcademyPhase(this._academyObject.academyFieldObjectVo);
         this.component.instantFinishData = _loc1_;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(this._resourceProxy == null)
         {
            this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._resourceProxy;
      }
      
      private function get formulaProxy() : FormulaProxy
      {
         if(this._formulaProxy == null)
         {
            this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
         }
         return this._formulaProxy;
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_BUY_POINTS,this.handleBuyStatPoints);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_START_EDUCATION,this.handleStartEducation);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_USE_DEXTRO,this.handleDextroOnStatPoints);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_BUY_DEXTRO,this.handleDextroBuy);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_USE_STAT_POINT,this.handleUseStatPoint);
         this.component.removeEventListener(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,this.handleHireProfessional);
         this.component.removeEventListener(SchoolBookEvent.FIRE_PROFESSIONAL,this.handleFireProfessional);
         this.component.removeEventListener(SchoolBookEvent.SHOW_BUILDING_INFO,this.handleShowBuildingInfo);
         this.component.removeEventListener(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,this.handleInstantEducation);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(SchoolBookEvent.SCHOOL_BUY_POINTS,this.handleBuyStatPoints);
         this.component.addEventListener(SchoolBookEvent.SCHOOL_START_EDUCATION,this.handleStartEducation);
         this.component.addEventListener(SchoolBookEvent.SCHOOL_USE_DEXTRO,this.handleDextroOnStatPoints);
         this.component.addEventListener(SchoolBookEvent.SCHOOL_BUY_DEXTRO,this.handleDextroBuy);
         this.component.addEventListener(AddSkillpointEvent.ADD,this.handleUseStatPoint);
         this.component.addEventListener(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,this.handleHireProfessional);
         this.component.addEventListener(SchoolBookEvent.FIRE_PROFESSIONAL,this.handleFireProfessional);
         this.component.addEventListener(SchoolBookEvent.SHOW_BUILDING_INFO,this.handleShowBuildingInfo);
         this.component.addEventListener(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,this.handleInstantEducation);
      }
      
      private function handleDextroBuy(param1:SchoolBookEvent) : void
      {
         this.clearSpool();
         facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_DEXTRO});
      }
      
      private function handleShowBuildingInfo(param1:SchoolBookEvent) : void
      {
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:Object = null;
         if(param1.infrastructureFieldObject)
         {
            _loc2_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc2_.modal = true;
            _loc2_.viewClass = EmergencyDepartmentBook;
            _loc2_.mediatorClass = EmergencyDepartmentBookMediator;
            _loc2_.mediatorName = EmergencyDepartmentBookMediator.NAME;
            _loc3_ = new Object();
            _loc3_.index = DepartmentTabProxy.DEPARTMENT_INDEX;
            _loc3_.cat = param1.infrastructureFieldObject.emergencyFieldObjectVo.department[0];
            _loc2_.data = _loc3_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
         }
      }
      
      private function handleFireProfessional(param1:SchoolBookEvent) : void
      {
         var _loc2_:ProfessionalListInfoVo = EmergencyLayerProxy.getPLIVOfromPDTO(param1.pDTO);
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_FIRE,_loc2_.profId);
      }
      
      private function handleHireProfessional(param1:SchoolBookEvent) : void
      {
         var _loc2_:Object = {};
         _loc2_.did = param1.bid;
         _loc2_.bid = this._academyObject.billboardObjectVo.buildingDTO.id;
         _loc2_.prof = this._academyObject.billboardObjectVo.buildingDTO.professionals[0].id;
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_HIRE_PROFESSIONAL,_loc2_);
      }
      
      private function handleBuyStatPoints(param1:SchoolBookEvent) : void
      {
         this.clearSpool();
         var _loc2_:Object = {};
         _loc2_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
         _loc2_.cbi = this._academyObject.academyFieldObjectVo.educationPhase.configPhaseId;
         _loc2_.rc = false;
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,_loc2_);
      }
      
      private function handleStartEducation(param1:SchoolBookEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:Object = null;
         _loc2_ = !this.component.contentLeft.unassignedSkillPoints;
         if(!_loc2_)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_UNSPENT_SKILLPOINTS_MINI_LAYER);
         }
         else
         {
            _loc3_ = {};
            _loc3_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
            _loc3_.bst = false;
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,_loc3_);
            this.startTimerCostInterval();
         }
         this.clearSpool();
      }
      
      private function handleInstantEducation(param1:SchoolBookEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:PlayerResourceProxy = null;
         _loc2_ = !this.component.contentLeft.unassignedSkillPoints;
         if(!_loc2_)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_UNSPENT_SKILLPOINTS_MINI_LAYER);
         }
         else
         {
            _loc3_ = {};
            _loc4_ = this.formulaProxy.getInstantFinishCostForAcademyPhase(this._academyObject.academyFieldObjectVo);
            _loc5_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            if(_loc5_.realCurrency < _loc4_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
               return;
            }
            if(!param1.educationRunning)
            {
               _loc3_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
               _loc3_.bst = true;
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,_loc3_);
            }
            else
            {
               _loc3_.buildingId = this._academyObject.billboardObjectVo.buildingDTO.id;
               _loc3_.phaseId = this._academyObject.academyFieldObjectVo.educationPhase.phaseId;
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,_loc3_);
            }
         }
         this.clearSpool();
      }
      
      private function handleDextroOnStatPoints(param1:SchoolBookEvent) : void
      {
         this.clearSpool();
         var _loc2_:Object = {};
         _loc2_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
         _loc2_.cbi = this._academyObject.academyFieldObjectVo.educationPhase.configPhaseId;
         _loc2_.rc = true;
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,_loc2_);
      }
      
      private function handleUseStatPoint(param1:AddSkillpointEvent) : void
      {
         if(param1.sendToServerNow)
         {
            this.addToSpool(param1);
            this.clearSpool();
         }
         else
         {
            this.addToSpool(param1);
         }
      }
      
      private function clearSpool() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this._objectSpool)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,_loc1_);
         }
         this._objectSpool = new Dictionary();
      }
      
      private function addToSpool(param1:AddSkillpointEvent) : void
      {
         --this.component.contentLeft.skillPointsAvailable;
         if(this._objectSpool[param1.professionalId + param1.attributeType] != null)
         {
            ++this._objectSpool[param1.professionalId + param1.attributeType].amount;
         }
         else
         {
            this._objectSpool[param1.professionalId + param1.attributeType] = {
               "profId":param1.professionalId,
               "attributeType":param1.attributeType,
               "amount":1
            };
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         this.clearSpool();
         this.clearTimerCostInterval();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function startTimerCostInterval() : void
      {
         if(this._academyObject.academyFieldObjectVo.educationPhase.behaviourInitialTime != 0 && this._academyObject.academyFieldObjectVo.educationPhase.behaviourEndTime != 0)
         {
            if(!this._intervalRunning)
            {
               this._intervalRunning = true;
               this._intervalId = setInterval(this.setTimerCost,1000);
            }
         }
      }
      
      private function clearTimerCostInterval() : void
      {
         if(this._intervalRunning)
         {
            clearInterval(this._intervalId);
            this._intervalRunning = false;
         }
      }
   }
}

