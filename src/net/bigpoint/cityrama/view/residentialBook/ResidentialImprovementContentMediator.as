package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementInventoryLayerComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialImprovementContentComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentialImprovementContentMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ResidentialImprovementContentMediator";
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      public static const LINE_ID_0:uint = 0;
      
      public static const LINE_ID_1:uint = 1;
      
      private var _data:ResidentialImprovementViewVo;
      
      private var _component:ResidentialImprovementContentComponent;
      
      private var _iLP:ImprovementLayerProxy;
      
      private var _iCP:ImprovementCursorProxy;
      
      private var _tP:TimerProxy;
      
      private var _fP:FeatureProxy;
      
      private var _indexToSelect:int;
      
      public function ResidentialImprovementContentMediator(param1:String, param2:ResidentialPopup)
      {
         super(param1,param2);
      }
      
      public function init(param1:ResidentialFieldObjectVo) : void
      {
         if(!this._component)
         {
            this._component = new ResidentialImprovementContentComponent();
         }
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLineTop,this.component.uiInfolayerAlignmentLineBottom],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
         this.setImprovementData(param1);
         this.container.contentGroup.addElement(this.component);
         this.addListener();
         this.checkCurrentSelection();
      }
      
      private function checkCurrentSelection() : void
      {
         var _loc1_:Number = NaN;
         if(this.cursorProxy.currentSelectedImprovementCid != -1)
         {
            _loc1_ = this.cursorProxy.currentSelectedImprovementCid;
            this._indexToSelect = this._data.getImprovementIndex(_loc1_,this._component.currentInventorySortFilter);
            if(this.component.inventory.improvementItemList.selectedIndex != this._indexToSelect)
            {
               this._component.inventory.improvementItemList.selectedIndex = this._indexToSelect;
            }
            this._component.inventory.improvementItemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleItemListUpdated);
         }
      }
      
      private function handleItemListUpdated(param1:FlexEvent) : void
      {
         this._component.inventory.improvementItemList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleItemListUpdated);
         if(!isNaN(this._indexToSelect))
         {
            this._component.inventory.improvementItemList.ensureIndexIsVisible(this._indexToSelect);
            if(this._component.inventory.improvementItemList.selectedIndex != this._indexToSelect)
            {
               this._component.inventory.improvementItemList.selectedIndex = this._indexToSelect;
            }
            this.component.highlightSlots();
            this._indexToSelect = NaN;
         }
      }
      
      override public function onRemove() : void
      {
         sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_CLOSED);
         this.handleDetachItem(null);
         this.removeListener();
         super.onRemove();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(ResidentialImprovementContentComponent.OPEN_FEATURE_SCREEN,this.handleOpenFeatureScreen);
         this.component.addEventListener(ResidentialImprovementContentComponent.OPEN_IMPROVEMENT_STORE,this.handleOpenStore);
         this.component.addEventListener(ImprovementInventoryItemRenderer.GET_MORE_EVENT,this.handleOpenStore);
         this.component.addEventListener(ImprovementInventoryLayerComponent.DESELECT_ALL,this.handleDetachItem);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.handleImprovementSelected);
         this.component.addEventListener(ImprovementSlotComponent.SLOT_CLICKED,this.handleSlotClicked);
         this.component.addEventListener(ImprovementSlotComponent.SLOT_OVER,this.handleSlotOver);
         this.component.addEventListener(ImprovementSlotComponent.SLOT_OUT,this.handleSlotOut);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.ITEM_OUT,this.handleInventoryItemOut);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.ITEM_OVER,this.handleInventoryItemOver);
      }
      
      private function handleInventoryItemOver(param1:ImprovementInventoryItemRendererEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         var _loc2_:Number = param1.selectedConfigID;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         if(!isNaN(_loc2_) && Boolean(param1.improvementVo))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":LINE_ID_1,
               "pt":_loc3_,
               "impro":param1.improvementVo
            },this.getMediatorName());
         }
         else if(_loc2_ == ImprovementInventoryItemRendererVo.GET_MORE_CONFIG_ID_DUMMY && !param1.improvementVo)
         {
            _loc4_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.shoplink.header.capital");
            _loc5_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.shoplink.text");
            _loc6_ = new SimpleTextUiInfolayerContentVo(LINE_ID_1,_loc3_,_loc5_,_loc4_);
            sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,this.getMediatorName());
         }
      }
      
      private function handleInventoryItemOut(param1:ImprovementInventoryItemRendererEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleSlotClicked(param1:Event) : void
      {
         var _loc3_:ImprovementVo = null;
         var _loc4_:ImprovementSlotComponentVo = null;
         var _loc5_:ImprovementSlotComponentVo = null;
         param1.stopPropagation();
         var _loc2_:ImprovementSlotComponent = param1.target as ImprovementSlotComponent;
         if(_loc2_)
         {
            if(this.cursorProxy.currentSelectedImprovementCid == -1)
            {
               if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_ACTIVE)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_INFO,{
                     "buildingId":this._data.residentialVo.buildingDTO.id,
                     "slotId":_loc2_.data.configSlot.id,
                     "impro":_loc2_.data.improvementVo
                  });
               }
               else if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_EXPIRED)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_EXPIRED,{
                     "buildingId":this._data.residentialVo.buildingDTO.id,
                     "slotId":_loc2_.data.configSlot.id,
                     "impro":_loc2_.data.improvementVo
                  });
               }
            }
            else
            {
               _loc3_ = this._data.getImprovementByConfigId(this.cursorProxy.currentSelectedImprovementCid);
               if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_PREVIEW)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_EQUIP,{
                     "buildingId":this._data.residentialVo.buildingDTO.id,
                     "slotId":_loc2_.data.configSlot.id,
                     "impro":_loc3_
                  });
               }
               else if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_ACTIVE)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_REPLACE,{
                     "buildingId":this._data.residentialVo.buildingDTO.id,
                     "slotId":_loc2_.data.configSlot.id,
                     "impro":_loc2_.data.improvementVo,
                     "newImpro":_loc3_
                  });
               }
               else if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_EXPIRED)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_REPLACE_EXPIRED,{
                     "buildingId":this._data.residentialVo.buildingDTO.id,
                     "slotId":_loc2_.data.configSlot.id,
                     "impro":_loc2_.data.improvementVo,
                     "newImpro":_loc3_
                  });
               }
               if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_PREVIEW)
               {
                  for each(_loc5_ in this._data.slotData)
                  {
                     if(_loc5_.configSlot.id == _loc2_.data.configSlot.id)
                     {
                        _loc4_ = _loc5_;
                        _loc4_.currentTime = this.timerProxy.currentTimeStamp;
                        break;
                     }
                  }
                  _loc2_.data = _loc4_;
               }
            }
         }
      }
      
      private function handleSlotOver(param1:Event) : void
      {
         var _loc2_:ImprovementSlotComponent = null;
         var _loc3_:ImprovementVo = null;
         var _loc4_:Point = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:ImprovementSlotComponentVo = null;
         var _loc8_:Number = NaN;
         var _loc9_:SimpleTextUiInfolayerContentVo = null;
         param1.stopPropagation();
         _loc2_ = param1.target as ImprovementSlotComponent;
         if(_loc2_)
         {
            if(this.cursorProxy.currentSelectedImprovementCid != -1)
            {
               if(_loc2_.data.currentState == ImprovementSlotComponent.STATE_SLOT_FREE)
               {
                  _loc3_ = this._data.getImprovementByConfigId(this.cursorProxy.currentSelectedImprovementCid);
                  _loc7_ = new ImprovementSlotComponentVo();
                  _loc7_.configSlot = _loc2_.data.configSlot;
                  _loc7_.currentState = ImprovementSlotComponent.STATE_SLOT_PREVIEW;
                  _loc7_.improvementVo = _loc3_;
                  _loc2_.data = _loc7_;
               }
            }
            _loc4_ = _loc2_.localToGlobal(new Point());
            _loc4_.x += _loc2_.width / 2;
            _loc5_ = "";
            _loc6_ = "";
            switch(_loc2_.currentSlotState)
            {
               case ImprovementSlotComponent.STATE_SLOT_ACTIVE:
               case ImprovementSlotComponent.STATE_SLOT_EXPIRED:
                  _loc8_ = _loc2_.data.improvementVo.config.id;
                  if(!isNaN(_loc8_) && Boolean(_loc2_.data.improvementVo))
                  {
                     sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                        "cid":_loc8_,
                        "lineId":LINE_ID_0,
                        "pt":_loc4_,
                        "impro":_loc2_.data.improvementVo
                     },this.getMediatorName());
                  }
                  break;
               case ImprovementSlotComponent.STATE_SLOT_FREE:
                  _loc5_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.header.capital");
                  _loc6_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.text");
                  break;
               case ImprovementSlotComponent.STATE_SLOT_PREVIEW:
                  if(_loc3_)
                  {
                     _loc5_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.improvatcursor.header.capital");
                     _loc6_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.improvatcursor.text",[ImprovementLayerProxy.improvementName(_loc3_.config)]);
                  }
                  break;
               case ImprovementSlotComponent.STATE_SLOT_LOCKED:
                  _loc5_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotlocked.header.capital");
                  _loc6_ = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotlocked.text",[_loc2_.data.unlockLevel]);
            }
            if(_loc5_ != "" && _loc6_ != "")
            {
               _loc9_ = new SimpleTextUiInfolayerContentVo(LINE_ID_0,_loc4_,_loc6_,_loc5_);
               sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc9_,this.getMediatorName());
            }
         }
      }
      
      private function handleSlotOut(param1:Event) : void
      {
         var _loc3_:ImprovementSlotComponentVo = null;
         var _loc4_:ImprovementSlotComponentVo = null;
         param1.stopPropagation();
         var _loc2_:ImprovementSlotComponent = param1.target as ImprovementSlotComponent;
         if(_loc2_)
         {
            if(this.cursorProxy.currentSelectedImprovementCid != -1)
            {
               if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_PREVIEW)
               {
                  for each(_loc4_ in this._data.slotData)
                  {
                     if(_loc4_.configSlot.id == _loc2_.data.configSlot.id)
                     {
                        _loc3_ = _loc4_;
                        _loc4_.currentTime = this.timerProxy.currentTimeStamp;
                        break;
                     }
                  }
                  _loc2_.data = _loc3_;
               }
            }
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleImprovementSelected(param1:ImprovementInventoryItemRendererEvent) : void
      {
         if(param1)
         {
            sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,param1.selectedConfigID);
         }
      }
      
      private function handleDetachItem(param1:Event) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
      }
      
      private function handleOpenFeatureScreen(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = new Object();
         _loc2_.quest = false;
         _loc2_.feature = QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS;
         sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
      }
      
      private function handleOpenStore(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_INGAME_STORE_POPUP,{"index":IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX});
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(ResidentialImprovementContentComponent.OPEN_FEATURE_SCREEN,this.handleOpenFeatureScreen);
         this.component.removeEventListener(ResidentialImprovementContentComponent.OPEN_IMPROVEMENT_STORE,this.handleOpenStore);
         this.component.removeEventListener(ImprovementInventoryItemRenderer.GET_MORE_EVENT,this.handleOpenStore);
         this.component.removeEventListener(ImprovementInventoryLayerComponent.DESELECT_ALL,this.handleDetachItem);
         this.component.removeEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.handleImprovementSelected);
         this.component.removeEventListener(ImprovementSlotComponent.SLOT_CLICKED,this.handleSlotClicked);
         this.component.removeEventListener(ImprovementSlotComponent.SLOT_OVER,this.handleSlotOver);
         this.component.removeEventListener(ImprovementSlotComponent.SLOT_OUT,this.handleSlotOut);
         this.component.removeEventListener(ImprovementInventoryItemRendererEvent.ITEM_OUT,this.handleInventoryItemOut);
         this.component.removeEventListener(ImprovementInventoryItemRendererEvent.ITEM_OVER,this.handleInventoryItemOver);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED,ApplicationNotificationConstants.IMPROVEMENT_DELETED,ApplicationNotificationConstants.IMPROVEMENT_UPDATED,ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED,ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Boolean = false;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.IMPROVEMENT_DELETED:
            case ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED:
            case ApplicationNotificationConstants.IMPROVEMENT_UPDATED:
            case ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED:
               sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
               this.component.highlightSlots(false);
               this.setImprovementData(this._data.residentialVo);
               this.checkCurrentSelection();
               break;
            case ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT:
               _loc2_ = Boolean(param1.getBody());
               this.component.highlightSlots(_loc2_);
         }
      }
      
      private function setImprovementData(param1:ResidentialFieldObjectVo) : void
      {
         this._data = this.layerProxy.getResidentialImprovementViewVo(param1);
         this.component.data = this._data;
         if(!this.featureProxy.improvementFeatureUnlocked)
         {
            this._component.locked(this.featureProxy.improvementFeatureUnlockLevel);
         }
      }
      
      private function get container() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      public function get component() : ResidentialImprovementContentComponent
      {
         return this._component;
      }
      
      private function get layerProxy() : ImprovementLayerProxy
      {
         if(this._iLP == null)
         {
            this._iLP = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         }
         return this._iLP;
      }
      
      private function get cursorProxy() : ImprovementCursorProxy
      {
         if(this._iCP == null)
         {
            this._iCP = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         }
         return this._iCP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(this._tP == null)
         {
            this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tP;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         if(this._fP == null)
         {
            this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
         return this._fP;
      }
      
      override public function onRegister() : void
      {
         sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_OPENED);
      }
   }
}

