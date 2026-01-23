package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentSideMenuProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class EmergencyDepartmentBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentBookMediator";
      
      private var _departmentTabProxy:DepartmentTabProxy;
      
      private var _departmentSideMenuProxy:DepartmentSideMenuProxy;
      
      public function EmergencyDepartmentBookMediator(param1:String, param2:Object)
      {
         super(NAME,param2);
         this.prepareProxies();
         this.setupListener();
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
      }
      
      private function prepareProxies() : void
      {
         this._departmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
         this._departmentSideMenuProxy = facade.retrieveProxy(DepartmentSideMenuProxy.NAME) as DepartmentSideMenuProxy;
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function setTabs() : void
      {
         this.component.departmentBookTabData = this._departmentTabProxy.tabs;
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.newIndex != param1.oldIndex)
            {
               this._departmentTabProxy.selectedIndex = param1.newIndex;
            }
         }
         this.component.showBackButton = true;
         this.component.showBackButton = false;
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.DEPARTMENTBOOK_TAB_CHANGE,{
            "container":this.component,
            "cat":this._departmentSideMenuProxy.currentType
         });
      }
      
      private function cleanContainer() : void
      {
         if(this.component.contentGroup)
         {
            this.component.contentGroup.removeAllElements();
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this._departmentTabProxy.selectedIndex = -1;
         facade.removeMediator(EmergencyDepartmentDetailTabMediator.NAME);
         facade.removeMediator(EmergencyDepartmentProfessionalDetailTabMediator.NAME);
         sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_CLOSED);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      public function setData(param1:Object) : void
      {
         this.setTabs();
         if(param1.index)
         {
            this._departmentTabProxy.selectedIndex = param1.index as int;
         }
         else
         {
            this._departmentTabProxy.selectedIndex = 0;
         }
         if(this._departmentTabProxy.selectedIndex == DepartmentTabProxy.DEPARTMENT_INDEX)
         {
            if(param1.cat)
            {
               this._departmentSideMenuProxy.currentType = param1.cat;
            }
         }
         this.handleTabIndexChanged();
         if(this._departmentTabProxy.selectedIndex != DepartmentTabProxy.DEPARTMENT_INDEX)
         {
            this.component.tabBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
         }
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this._departmentTabProxy.selectedIndex;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE:
               this.deactivateDepartmentTab();
         }
      }
      
      private function deactivateDepartmentTab() : void
      {
         var _loc3_:TabsVo = null;
         var _loc4_:TabsVo = null;
         var _loc1_:ArrayCollection = this._departmentTabProxy.tabs;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in _loc1_.source)
         {
            _loc3_ = new TabsVo();
            _loc3_.hasNews = _loc4_.hasNews;
            _loc3_.styleName = _loc4_.styleName;
            _loc3_.tooltip = _loc4_.tooltip;
            _loc3_.tabLabel = _loc4_.tabLabel;
            _loc3_.isLocked = _loc4_.isLocked;
            if(_loc4_.styleName == DepartmentTabProxy.STYLE_TAB_DEPARTMENT)
            {
               _loc3_.isLocked = true;
            }
            _loc2_.addItem(_loc3_);
         }
         this.component.departmentBookTabData = _loc2_;
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function get component() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
   }
}

