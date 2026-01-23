package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentSideMenuProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentDetailTabComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentSlotItemrenderer;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.InfraUpgradeProgressComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SideMenuDepartmentBook;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class EmergencyDepartmentDetailTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentDetailTabMediator";
      
      private var _component:DepartmentDetailTabComponent;
      
      private var _data:DepartmentDetailViewVo;
      
      private var _sideMenuProxy:DepartmentSideMenuProxy;
      
      private var _mainLayerProxy:MainLayerProxy;
      
      private var _departmentTabProxy:DepartmentTabProxy;
      
      private var _emergencyLayerProxy:EmergencyLayerProxy;
      
      private var _sideMenu:SideMenuDepartmentBook;
      
      private var _professionalDetailMediator:EmergencyDepartmentProfessionalDetailTabMediator;
      
      public function EmergencyDepartmentDetailTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init(param1:String) : void
      {
         if(!this._component)
         {
            this._component = new DepartmentDetailTabComponent();
         }
         this.removeListener();
         this.setupSideMenu();
         this.setLayerData(this._mainLayerProxy.getDepartmentDetailViewVo(param1));
         this.container.contentGroup.addElement(this._component);
         this.addListener();
      }
      
      private function addListener() : void
      {
         this._component.addEventListener(DepartmentSlotItemrenderer.SLOT_CLICKED,this.handleSlotClick);
         this._component.addEventListener(InfraUpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgrade);
         this._component.addEventListener(InfraUpgradeProgressComponent.OPEN_RC_REBUY,this.openRcRebuyHandler);
         this._component.addEventListener(InfraUpgradeProgressComponent.INSTA_UPGRADE_BUILDING,this.instaUpgradeHandler);
         this.container.addEventListener(PaperPopupWindow.BACK,this.resetDetailView);
      }
      
      private function setLayerData(param1:DepartmentDetailViewVo) : void
      {
         this._data = param1;
         this._sideMenuProxy.currentType = this._data.type;
         this._component.data = this._data;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      private function prepareProxies() : void
      {
         this._sideMenuProxy = facade.retrieveProxy(DepartmentSideMenuProxy.NAME) as DepartmentSideMenuProxy;
         this._mainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         this._departmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
         this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
      }
      
      private function setupSideMenu() : void
      {
         if(!this._sideMenu)
         {
            if(this.container.sideMenuComponent)
            {
               this._sideMenu = this.container.sideMenuComponent;
            }
            else
            {
               this.container.sideMenu.removeAllElements();
               this._sideMenu = new SideMenuDepartmentBook();
               this._sideMenu.percentWidth = 100;
               this._sideMenu.percentHeight = 100;
               this.container.sideMenu.addElement(this._sideMenu);
            }
            this._sideMenu.dataProvider = this._sideMenuProxy.entries;
            this._sideMenu.addEventListener(IndexChangeEvent.CHANGE,this.handleSideMenuIndexChange);
         }
         this._sideMenu.selectedIndex = this._sideMenuProxy.getIndexByType(this._sideMenuProxy.currentType);
         this.handleSideMenuIndexChange(null);
      }
      
      private function handleSideMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         if(this._sideMenu)
         {
            if(this._sideMenu.selectedItem == null || !this._sideMenu.selectedItem.enable)
            {
               return;
            }
            if(this._sideMenuProxy.currentType == ServerTagConstants.FIRE_DEPARTMENT)
            {
               sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_OPENED);
            }
            if(this._sideMenuProxy.currentType != this._sideMenu.selectedItem.type)
            {
               this._sideMenuProxy.currentType = this._sideMenu.selectedItem.type;
               this.resetDetailView();
            }
         }
      }
      
      private function handleSlotClick(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:ProfessionalDepartmentSlotVo = param1.target.data as ProfessionalDepartmentSlotVo;
         if(_loc2_.empty)
         {
            if(_loc2_.activeAcademy)
            {
               this.container.dispatchEvent(new Event(Event.CLOSE));
               sendNotification(ApplicationNotificationConstants.ACADEMY_OPEN);
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         else
         {
            _loc3_ = _loc2_.canLevelUp;
            if(_loc3_)
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_LEVELUP,_loc2_.professionalId);
            }
            this.cleanContainer();
            this.initProfessionalDetailView(_loc2_.professionalId);
            this.container.showBackButton = true;
            if(_loc2_.profDepartment == ServerTagConstants.FIRE_DEPARTMENT)
            {
               sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_OPENED);
            }
         }
      }
      
      private function initProfessionalDetailView(param1:Number) : void
      {
         this._departmentTabProxy.displayedProfessionalVo = this._emergencyLayerProxy.getDepartmentProfessionalDetailVoById(param1);
         if(!this._professionalDetailMediator)
         {
            this._professionalDetailMediator = new EmergencyDepartmentProfessionalDetailTabMediator(this.container);
            facade.registerMediator(this._professionalDetailMediator);
         }
         this._professionalDetailMediator.init();
      }
      
      private function cleanContainer() : void
      {
         this.container.contentGroup.removeAllElements();
      }
      
      private function handleUpgrade(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(MiniLayerConstants.OPEN_MINI_INFRA_UPGRADE,this._data.buildingId);
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      private function resetDetailView(param1:Event = null) : void
      {
         this.cleanContainer();
         this.container.showBackButton = false;
         this.resetProfessionalDetailMediator();
         this.init(this._sideMenuProxy.currentType);
      }
      
      private function resetProfessionalDetailMediator() : void
      {
         this._professionalDetailMediator = null;
         facade.removeMediator(EmergencyDepartmentProfessionalDetailTabMediator.NAME);
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.resetDetailView);
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this._component.removeEventListener(DepartmentSlotItemrenderer.SLOT_CLICKED,this.handleSlotClick);
         this._component.removeEventListener(InfraUpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgrade);
         this.container.removeEventListener(PaperPopupWindow.BACK,this.resetDetailView);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_DISMISS,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PROFESSIONALS_DISMISS:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               RandomUtilities.addstackCall(this.resetDetailView);
         }
      }
      
      private function openRcRebuyHandler(param1:Event) : void
      {
         param1.stopPropagation();
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function instaUpgradeHandler(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         facade.sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.buildingId);
         this.container.dispatchEvent(new Event(Event.CLOSE));
      }
   }
}

