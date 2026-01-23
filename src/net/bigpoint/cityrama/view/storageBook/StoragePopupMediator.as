package net.bigpoint.cityrama.view.storageBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.model.storage.StorageProxy;
   import net.bigpoint.cityrama.model.storage.StorageSideMenuProxy;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StorageItemRenderer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StoragePopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   
   public class StoragePopupMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "StoragePopupMediator";
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _storageProxy:StorageProxy;
      
      private var _sideMenuProxy:StorageSideMenuProxy;
      
      private var _mainMenuPopedUpProxy:MainMenuPopedUpProxy;
      
      private var _lineContainer:Group;
      
      private var _featureProxy:FeatureProxy;
      
      public function StoragePopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._mainMenuPopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this.setupListeners();
         this._storageProxy = facade.retrieveProxy(StorageProxy.NAME) as StorageProxy;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         this._sideMenuProxy = facade.retrieveProxy(StorageSideMenuProxy.NAME) as StorageSideMenuProxy;
         this.handleAddedToStage();
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         sendNotification(ClickTaskNotificationConstants.STORAGE);
      }
      
      private function setupListeners() : void
      {
         this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = NAME;
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.itemList.addEventListener(StorageItemRenderer.REBUY_GOOD,this.onRebuyClicked);
      }
      
      private function onRebuyClicked(param1:Event) : void
      {
         var _loc2_:List = param1.currentTarget as List;
         var _loc3_:GoodObjectVo = _loc2_.selectedItems[0].goodObjectVo;
         facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"goodConfigId":_loc3_.config.id});
      }
      
      private function handleClose(param1:Event) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.itemList.removeEventListener(StorageItemRenderer.REBUY_GOOD,this.onRebuyClicked);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = null;
      }
      
      private function handleAddedToStage(param1:Event = null) : void
      {
         if(this._sideMenuProxy)
         {
            if(this.component)
            {
               if(this.component.sideMenuComponent)
               {
                  this.component.sideMenuComponent.addEventListener(IndexChangeEvent.CHANGE,this.handleSubMenuIndexChange);
                  this.component.sideMenuComponent.dataProvider = this._sideMenuProxy.entries;
                  if(this.component.sideMenuComponent.selectedIndex == -1)
                  {
                     this.component.sideMenuComponent.selectedIndex = 0;
                     this.handleSubMenuIndexChange();
                  }
               }
            }
         }
      }
      
      private function handleSubMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _loc2_:String = null;
         this.killGuiInfolayer();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         switch(this.component.sideMenuComponent.selectedItem.type)
         {
            case ServerTagConstants.GOOD_CONSTRUCTION:
               _loc2_ = LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_CONSTRUCTION_MATERIALS");
               break;
            case ServerTagConstants.GOOD_NORMAL:
               _loc2_ = LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_GOODS");
               break;
            case ServerTagConstants.GOOD_SPECIAL:
               _loc2_ = LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_SPECIAL");
               break;
            case ServerImprovementConstants.IMPROVEMENT:
               if(this._featureProxy.improvementFeatureUnlocked)
               {
                  _loc2_ = LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_HIP");
                  break;
               }
               _loc2_ = LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_HIP.locked",[this._featureProxy.improvementFeatureUnlockLevel]);
         }
         this.createGuiInfolayer();
         this.component.flavorText.text = _loc2_;
         this.component.itemList.dataProvider = this._storageProxy.getStorageData(this.component.sideMenuComponent.selectedItem.type);
         this.component.itemList.ensureIndexIsVisible(0);
         this.component.itemList.invalidateProperties();
      }
      
      private function createGuiInfolayer() : void
      {
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         this._lineContainer = new Group();
         this._lineContainer.percentHeight = 100;
         this._lineContainer.percentWidth = 100;
         this.component.addElement(this._lineContainer);
         var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc2_.setProperties(590,180,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM,0);
         _loc1_.push(_loc2_);
         this._lineContainer.addElement(_loc2_);
         var _loc3_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc3_.setProperties(590,230,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,1);
         _loc1_.push(_loc3_);
         this._lineContainer.addElement(_loc3_);
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
      }
      
      private function killGuiInfolayer() : void
      {
         if(this._lineContainer != null)
         {
            this.component.removeElement(this._lineContainer);
         }
         this._lineContainer = null;
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         if(param1.callerType == UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT)
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
               "pt":_loc3_
            },NAME);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
               "pt":_loc3_
            },NAME);
         }
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE:
               this.handleAddedToStage();
               break;
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
               this.handleSubMenuIndexChange();
         }
      }
      
      public function get component() : StoragePopup
      {
         return super.viewComponent as StoragePopup;
      }
   }
}

