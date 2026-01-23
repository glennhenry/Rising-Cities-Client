package net.bigpoint.cityrama.view.playfieldItemInventory
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryView;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PlayfieldItemInventoryMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PlayfieldItemInventoryMediator";
      
      private static const LINE_ID_0:uint = 0;
      
      private var _data:PlayfieldItemInventoryViewVo;
      
      private var _pIIVP:PlayfieldItemInventoryViewProxy;
      
      private var _lSP:LocalStorageProxy;
      
      private var _eP:EmergencyProxy;
      
      private var _currentCursorItem:InventoryPlayfieldItemVo;
      
      private var _currentSelectedSlotIndex:int = -1;
      
      public function PlayfieldItemInventoryMediator(param1:PlayfieldItemInventoryView)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.setData();
         this.addListener();
      }
      
      private function setData() : void
      {
         this._data = this.viewProxy.playfieldItemInventoryViewVo;
         this._data.preselectedIndex = this._currentSelectedSlotIndex;
         this.component.data = this._data;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(PlayfieldItemInventoryView.EVENT_ALL_DESELECTED,this.handleAllDeselected);
         this.component.addEventListener(PlayfieldItemInventoryView.EVENT_MINIMIZED_CHANGED,this.handleInventoryMinimizedChanged);
         this.component.addEventListener(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT,this.handlePurchaseSlot);
         this.component.addEventListener(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM,this.handleDeleteItemFromInventory);
         this.component.addEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT,this.handleSlotOut);
         this.component.addEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER,this.handleSlotOver);
         this.component.addEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK,this.handleSlotClick);
         this.component.addEventListener(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,this.handleInventoryItemSelected);
      }
      
      private function handleInventoryMinimizedChanged(param1:Event) : void
      {
         param1.stopPropagation();
         this.localStorageProxy.userdata.inventoryMinimised = this.component.inventoryMinimized;
         this.localStorageProxy.flush();
      }
      
      private function handleInventoryItemSelected(param1:PlayfieldItemInventoryEvent) : void
      {
         if(param1.listItemVo)
         {
            if(param1.listItemVo.item)
            {
               this._currentSelectedSlotIndex = param1.selectedIndex;
               this.viewProxy.currentSelectedInventoryItem = param1.listItemVo;
               this.addItemAtCursorToData(param1.listItemVo.item);
               sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE,param1.listItemVo.item);
            }
         }
      }
      
      private function addItemAtCursorToData(param1:InventoryPlayfieldItemVo) : void
      {
         var _loc2_:PlayfieldItemInventoryListItemVo = null;
         this._currentCursorItem = param1;
         for each(_loc2_ in this._data.allListItems)
         {
            _loc2_.itemAtCursor = param1;
         }
      }
      
      private function handleSlotOver(param1:PlayfieldItemInventoryEvent) : void
      {
         var _loc5_:String = null;
         param1.stopPropagation();
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         _loc2_.x += param1.target.width / 2;
         var _loc3_:String = "";
         var _loc4_:String = "";
         if(param1.listItemVo.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED)
         {
            _loc3_ = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + param1.listItemVo.item.itemLocaleId + ".capital");
            _loc5_ = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
            if(param1.listItemVo.itemAtCursor == null)
            {
               _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.playfieldRestricted");
            }
            else
            {
               _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory"," rcl.guiinfolayer.inventory.text.occupied");
            }
            this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
         }
         else if(param1.listItemVo.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE)
         {
            if(param1.listItemVo.purchaseSlotEnabled)
            {
               _loc3_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.extraSlot");
               if(param1.listItemVo.slotPrice > this._data.realCurrencyStock)
               {
                  _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.extraSlot.noRC");
               }
               else
               {
                  _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.extraSlot.affordable");
               }
               this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
            }
         }
         else if(param1.listItemVo.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED)
         {
            if(param1.listItemVo.itemAtCursor)
            {
               if(param1.listItemVo.itemAtCursor == param1.listItemVo.item)
               {
                  _loc3_ = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + param1.listItemVo.item.itemLocaleId + ".capital");
                  _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.occupied.own");
               }
               else
               {
                  _loc5_ = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                  _loc3_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.occupied.capital");
                  _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.occupied");
               }
               this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "type":ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION,
                  "cid":param1.listItemVo.item.configItem.id,
                  "lineId":LINE_ID_0,
                  "pt":_loc2_,
                  "bDTO":param1.listItemVo.item.buildingDTO,
                  "dVo":param1.listItemVo.item.decorationVo
               },NAME);
            }
         }
         else if(param1.listItemVo.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE)
         {
            if(param1.listItemVo.itemAtCursor)
            {
               if(param1.listItemVo.itemAtCursor.isBlocked)
               {
                  _loc3_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.blocked.capital");
                  _loc5_ = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                  if(param1.listItemVo.itemAtCursor.blockedReason == InventoryPlayfieldItemVo.BLOCKED_CONSTRUCTION)
                  {
                     _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.construction");
                  }
                  else if(param1.listItemVo.itemAtCursor.blockedReason == InventoryPlayfieldItemVo.BLOCKED_EMERGENCY)
                  {
                     _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.emergency");
                  }
                  else if(param1.listItemVo.itemAtCursor.blockedReason == InventoryPlayfieldItemVo.BLOCKED_TYPE)
                  {
                     _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.general");
                  }
               }
               else
               {
                  _loc3_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.freeSlot.capital");
                  _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.freeSlot.add");
               }
            }
            else
            {
               _loc3_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.freeSlot.capital");
               _loc4_ = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.freeSlot.select");
            }
            this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
         }
      }
      
      private function showTextInfoLayer(param1:String, param2:String, param3:Point, param4:String) : void
      {
         var _loc5_:SimpleTextUiInfolayerContentVo = null;
         if(param1 != "" && param2 != "" && Boolean(param3))
         {
            _loc5_ = new SimpleTextUiInfolayerContentVo(LINE_ID_0,param3,param2,param1,param4);
            sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc5_,this.getMediatorName());
         }
      }
      
      private function handleSlotOut(param1:PlayfieldItemInventoryEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleSlotClick(param1:PlayfieldItemInventoryEvent) : void
      {
         if(Boolean(param1.listItemVo) && param1.listItemVo.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE)
         {
            if(Boolean(param1.listItemVo.itemAtCursor) && !this.viewProxy.currentSelectedInventoryItem)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_PLAYFIELDITEM_TO_INVENTORY,param1.listItemVo.itemAtCursor.itemId);
            }
            else if(Boolean(param1.listItemVo.itemAtCursor) && Boolean(this.viewProxy.currentSelectedInventoryItem))
            {
               sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,true);
            }
         }
      }
      
      private function handleDeleteItemFromInventory(param1:PlayfieldItemInventoryEvent) : void
      {
         if(param1.listItemVo)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_REMOVE_INVENTORY_ITEM,param1.listItemVo);
         }
      }
      
      private function handlePurchaseSlot(param1:PlayfieldItemInventoryEvent) : void
      {
         param1.stopPropagation();
         if(param1.listItemVo)
         {
            if(param1.listItemVo.slotPrice <= this._data.realCurrencyStock)
            {
               if(param1.listItemVo.configBagId != -1)
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EXPAND_INVENTORY_BAG,param1.listItemVo.configBagId);
                  if(Boolean(param1.listItemVo.itemAtCursor) && Boolean(this.viewProxy.currentSelectedInventoryItem))
                  {
                     sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,false);
                  }
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleAllDeselected(param1:Event) : void
      {
         this.resetSelectedIndex();
         sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,true);
         sendNotification(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED,ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED,ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE,ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE,ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:InventoryPlayfieldItemVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED:
               this.setData();
               if(this._currentCursorItem)
               {
                  this.addItemAtCursorToData(this._currentCursorItem);
                  if(this._currentSelectedSlotIndex == -1)
                  {
                     this.scrollToUnoccupiedSlot(this._currentCursorItem.sortCategory);
                  }
               }
               break;
            case ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE:
               this.resetSelectedIndex();
               if(param1.getBody() is BillboardObject)
               {
                  _loc2_ = this.viewProxy.buildInventoryPlayfieldItemVo(BillboardObject(param1.getBody()));
               }
               else if(param1.getBody() is IPlaneObject)
               {
                  _loc2_ = new InventoryPlayfieldItemVo();
               }
               if(_loc2_)
               {
                  this.selectCategoryInInventory(_loc2_);
                  this.addItemAtCursorToData(_loc2_);
               }
               break;
            case ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE:
               this.resetSelectedIndex();
               this.addItemAtCursorToData(null);
               break;
            case ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED:
               this.setEmergencyRunning(this.emergencyProxy.emergencyActivelyRunning);
               this.resetInfrastructureItems();
         }
      }
      
      private function resetInfrastructureItems() : void
      {
         if(Boolean(this._currentCursorItem) && this.emergencyProxy.emergencyActivelyRunning)
         {
            if(this._currentCursorItem.sortCategory == PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY)
            {
               this.component.resetSelection();
            }
         }
      }
      
      private function setEmergencyRunning(param1:Boolean) : void
      {
         var _loc2_:PlayfieldItemInventoryListItemVo = null;
         this._data.emergencyRunning = param1;
         for each(_loc2_ in this._data.allListItems)
         {
            _loc2_.emergencyRunning = param1;
         }
      }
      
      private function selectCategoryInInventory(param1:InventoryPlayfieldItemVo) : void
      {
         if(param1.sortCategory != "")
         {
            this.component.sortCategory = param1.sortCategory;
            this.scrollToUnoccupiedSlot(param1.sortCategory);
         }
      }
      
      private function scrollToUnoccupiedSlot(param1:String) : void
      {
         if(this._data)
         {
            this.component.scrollToIndex(this._data.getFirstUnoccupiedSlotIndexByCat(param1));
         }
      }
      
      private function resetSelectedIndex() : void
      {
         this._currentSelectedSlotIndex = -1;
         if(this._data)
         {
            this._data.preselectedIndex = this._currentSelectedSlotIndex;
         }
      }
      
      override public function onRemove() : void
      {
         var _loc1_:ApplicationMediator = null;
         this.removeListener();
         this.viewProxy.currentSelectedInventoryItem = null;
         _loc1_ = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         _loc1_.component.mainView.inventoryTopBarView.removeElement(this.component);
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(PlayfieldItemInventoryView.EVENT_ALL_DESELECTED,this.handleAllDeselected);
         this.component.removeEventListener(PlayfieldItemInventoryView.EVENT_MINIMIZED_CHANGED,this.handleInventoryMinimizedChanged);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT,this.handlePurchaseSlot);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM,this.handleDeleteItemFromInventory);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT,this.handleSlotOut);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER,this.handleSlotOver);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK,this.handleSlotClick);
         this.component.removeEventListener(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,this.handleInventoryItemSelected);
      }
      
      public function get component() : PlayfieldItemInventoryView
      {
         return super.getViewComponent() as PlayfieldItemInventoryView;
      }
      
      private function get viewProxy() : PlayfieldItemInventoryViewProxy
      {
         if(!this._pIIVP)
         {
            this._pIIVP = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
         }
         return this._pIIVP;
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         if(!this._lSP)
         {
            this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         }
         return this._lSP;
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         if(!this._eP)
         {
            this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         }
         return this._eP;
      }
   }
}

