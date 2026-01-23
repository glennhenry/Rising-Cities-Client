package net.bigpoint.cityrama.view.architectBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.BlueprintGroupConstants;
   import net.bigpoint.cityrama.model.architecturalBook.SideMenuProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.components.*;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class ArchitectBookMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ArchitectBookMediator";
      
      private static const UI_INFOLAYER_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _architecturalBookProxy:ArchitecturalBookProxy;
      
      private var _sideMenuProxy:SideMenuProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _currentViewStack:Array;
      
      private var _gridTemplate:ArchitectTemplateDataGrid;
      
      private var _templateDict:Dictionary;
      
      private var _openCategoryIndex:int = -1;
      
      private var _openItemIndex:int = -1;
      
      private var _lineContainer:Group;
      
      public function ArchitectBookMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      private static function findOutType(param1:*) : String
      {
         if(param1 is ArchitectTemplate_Residential)
         {
            return BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL;
         }
         if(param1 is ArchitectTemplate_Commercial)
         {
            return BlueprintGroupConstants.BLUEPRINT_SHOP;
         }
         if(param1 is ArchitectTemplate_Academy || param1 is ArchitectTemplate_MysteryBuilding || param1 is ArchitectTemplate_SecurityBuilding || param1 is ArchitectTemplate_SecurityDevice || param1 is ArchitectTemplate_Special)
         {
            return BlueprintGroupConstants.BLUEPRINT_SPECIAL;
         }
         if(param1 is ArchitectTemplate_Decoration)
         {
            return BlueprintGroupConstants.BLUEPRINT_DECORATION;
         }
         if(param1 is ArchitectTemplate_Ground)
         {
            return BlueprintGroupConstants.BLUEPRINT_GROUNDS;
         }
         if(param1 is ArchitectTemplate_Powerplant)
         {
            return BlueprintGroupConstants.BLUEPRINT_POWERPLANT;
         }
         if(param1 is ArchitectTemplate_Production)
         {
            return BlueprintGroupConstants.BLUEPRINT_PRODUCTION;
         }
         return "";
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      public function init(param1:String = "", param2:Number = -1) : void
      {
         this._currentViewStack = [];
         if(!this._gridTemplate)
         {
            this._gridTemplate = new ArchitectTemplateDataGrid();
            this._gridTemplate.addEventListener(ItemClickEvent.ITEM_CLICK,this.handleShowDetailInfo);
         }
         facade.removeMediator(UI_INFOLAYER_MEDIATOR_NAME);
         this.removeListener();
         this.createGuiInfolayer();
         this.pushTemplate(this._gridTemplate);
         this.setupListeners();
         this.setArchitectData(param1,param2);
      }
      
      public function removeRelevantListener() : void
      {
         this.removeListener();
      }
      
      private function setArchitectData(param1:String, param2:Number) : void
      {
         if(param1 == null || param1 == "")
         {
            param1 = this._architecturalBookProxy.viewedArchitectureCategory;
         }
         if(param2 != -1)
         {
            param1 = this._architecturalBookProxy.getCategoryByConfigId(param2);
            this._openItemIndex = this._architecturalBookProxy.getItemIndexByCatAndConfigId(param1,param2);
         }
         this._openCategoryIndex = this._sideMenuProxy.getIndexByType(param1);
         this.handleAddedToStage(null);
      }
      
      private function prepareProxies() : void
      {
         this._architecturalBookProxy = facade.retrieveProxy(ArchitecturalBookProxy.NAME) as ArchitecturalBookProxy;
         this._sideMenuProxy = facade.retrieveProxy(SideMenuProxy.NAME) as SideMenuProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         this._serverStorageProxy = ServerStorageProxy(facade.retrieveProxy(ServerStorageProxy.NAME));
      }
      
      private function get templateDict() : Dictionary
      {
         if(this._templateDict == null)
         {
            this._templateDict = new Dictionary(true);
         }
         return this._templateDict;
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(PaperPopupWindow.BACK,this.handleBack);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBack);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
      }
      
      private function handleAddedToStage(param1:Event = null) : void
      {
         var _loc2_:Array = null;
         if(this._sideMenuProxy)
         {
            if(this.component)
            {
               if(this.component.sideMenuComponent)
               {
                  this.component.sideMenuComponent.addEventListener(IndexChangeEvent.CHANGE,this.handleSubMenuIndexChange);
                  this.component.sideMenuComponent.addEventListener("CloseDetailView_Event",this.handleSideMenuBack);
                  _loc2_ = this.findGroupsWithNewItems();
                  this._sideMenuProxy.addNewIconAt(_loc2_);
                  this.component.sideMenuComponent.dataProvider = this._sideMenuProxy.currentEntries;
                  if(this.component.sideMenuComponent.selectedIndex == -1)
                  {
                     this.component.sideMenuComponent.selectedIndex = this._openCategoryIndex;
                  }
                  this.handleSubMenuIndexChange();
               }
            }
         }
         this.createGuiInfolayer();
      }
      
      private function createGuiInfolayer() : void
      {
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         this._lineContainer = new Group();
         this._lineContainer.percentHeight = 100;
         this._lineContainer.percentWidth = 100;
         this.component.addElement(this._lineContainer);
         var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc2_.setProperties(590,95,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM,0);
         _loc1_.push(_loc2_);
         this._lineContainer.addElement(_loc2_);
         var _loc3_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc3_.setProperties(590,250,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,1);
         _loc1_.push(_loc3_);
         this._lineContainer.addElement(_loc3_);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
      }
      
      private function destroyGuiInfolayer() : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         facade.removeMediator(UI_INFOLAYER_MEDIATOR_NAME);
         if(this._lineContainer != null && this._lineContainer.parent != null)
         {
            this.component.removeElement(this._lineContainer);
         }
         this._lineContainer = null;
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
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "type":param1.callerType,
            "cid":_loc2_,
            "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
            "pt":_loc3_
         },NAME);
      }
      
      private function findGroupsWithNewItems() : Array
      {
         var _loc2_:String = null;
         var _loc1_:String = "";
         for each(_loc2_ in this._sideMenuProxy.getAllTypes())
         {
            _loc1_ += this.groupHasNewItems(_loc2_);
         }
         if(_loc1_.length > 0)
         {
            _loc1_ = _loc1_.substr(0,_loc1_.length - 1);
         }
         return _loc1_.split("|");
      }
      
      private function groupHasNewItems(param1:String) : String
      {
         var _loc3_:BlueprintVo = null;
         var _loc2_:ArrayCollection = this._architecturalBookProxy.getBlueprintsByGroup(param1);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_)
            {
               if(_loc3_.isItemNew)
               {
                  return param1 + "|";
               }
            }
         }
         return "";
      }
      
      private function handleSubMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _loc2_:String = null;
         while(this._currentViewStack.length > 1)
         {
            this.popTemplate();
         }
         this._soundProxy.playButtonClick();
         if(this.component.sideMenuComponent.selectedItem)
         {
            _loc2_ = SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type;
            this._architecturalBookProxy.viewedArchitectureCategory = _loc2_;
            this._gridTemplate.itemList.dataProvider = this._architecturalBookProxy.getBlueprintsByGroup(_loc2_);
            this.checkForItemToOpen();
            if(this._openItemIndex == -1)
            {
               this._gridTemplate.itemList.ensureIndexIsVisible(0);
            }
            else
            {
               this._gridTemplate.itemList.ensureIndexIsVisible(this._openItemIndex);
               this._gridTemplate.itemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleGridUpdateComplete);
            }
            this._gridTemplate.itemList.invalidateProperties();
            this._gridTemplate.flavorText.text = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),"rcl.booklayer.architect.flavortext_" + _loc2_);
         }
         this.createGuiInfolayer();
         this.checkSubMenuOpen(_loc2_);
      }
      
      private function handleGridUpdateComplete(param1:FlexEvent) : void
      {
         this._gridTemplate.itemList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleGridUpdateComplete);
         this._gridTemplate.itemList.ensureIndexIsVisible(this._openItemIndex);
         this._openItemIndex = -1;
      }
      
      private function checkForItemToOpen() : void
      {
         var _loc1_:BlueprintVo = null;
         if(this._openItemIndex != -1)
         {
            if(this._gridTemplate.itemList.dataProvider.getItemAt(this._openItemIndex) != null)
            {
               _loc1_ = this._gridTemplate.itemList.dataProvider.getItemAt(this._openItemIndex) as BlueprintVo;
               if(_loc1_)
               {
                  if(_loc1_.isItemNew)
                  {
                     this._serverStorageProxy.addPlayfieldItemConfigIdViewed(_loc1_.configObj.id);
                     facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
                     _loc1_.isItemNew = false;
                  }
                  this._gridTemplate.itemList.selectedIndex = this._openItemIndex;
                  this.pushTemplateByGroupName(SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type,_loc1_);
                  this.addViewEventListener(_loc1_);
               }
            }
         }
      }
      
      private function handleSideMenuBack(param1:Event) : void
      {
         if(this._currentViewStack.length > 1)
         {
            this.popTemplate();
         }
      }
      
      private function handleBack(param1:Event) : void
      {
         this.popTemplate();
      }
      
      private function handleClose() : void
      {
         sendNotification(ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST);
      }
      
      private function addViewEventListener(param1:BlueprintVo) : void
      {
         if(this._currentViewStack.length > 1)
         {
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("left",this.handleLeftClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("right",this.handleRightClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("buildNow",this.handleBuildNow);
            this._currentViewStack[this._currentViewStack.length - 1].center.centerItem.addEventListener("permissionFeatureClick",this.handleFeatureClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("effectFeatureClick",this.handleFeatureClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("restrictionFeatureClick",this.handleFeatureClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("residentFeatureClick",this.handleFeatureClick);
            this._currentViewStack[this._currentViewStack.length - 1].addEventListener("securitygradeFeatureClick",this.handleFeatureClick);
            this.updateBlueprintVoinTemplate(param1);
         }
      }
      
      private function handleShowDetailInfo(param1:ItemClickEvent) : void
      {
         if(param1.item == null)
         {
            return;
         }
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         _loc2_.playButtonClick();
         if(BlueprintVo(param1.item).isItemNew)
         {
            this._serverStorageProxy.addPlayfieldItemConfigIdViewed(BlueprintVo(param1.item).configObj.id);
            BlueprintVo(param1.item).isItemNew = false;
            facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
         }
         this.pushTemplateByGroupName(SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type,param1.target.data);
         this.addViewEventListener(param1.target.data);
      }
      
      private function getPossibleTemplateClass(param1:String, param2:BlueprintVo, param3:Boolean = false) : Class
      {
         var _loc4_:Class = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         switch(param1)
         {
            case BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_RESIDENTIAL_SELECTED;
               _loc4_ = ArchitectTemplate_Residential;
               break;
            case BlueprintGroupConstants.BLUEPRINT_PRODUCTION:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED;
               _loc4_ = ArchitectTemplate_Production;
               break;
            case BlueprintGroupConstants.BLUEPRINT_SHOP:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED;
               _loc4_ = ArchitectTemplate_Commercial;
               break;
            case BlueprintGroupConstants.BLUEPRINT_POWERPLANT:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED;
               _loc4_ = ArchitectTemplate_Powerplant;
               break;
            case BlueprintGroupConstants.BLUEPRINT_DECORATION:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED;
               _loc4_ = ArchitectTemplate_Decoration;
               break;
            case BlueprintGroupConstants.BLUEPRINT_GROUNDS:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_GROUND_SELECTED;
               _loc4_ = ArchitectTemplate_Ground;
               break;
            case BlueprintGroupConstants.BLUEPRINT_SPECIAL:
               _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED;
               _loc7_ = false;
               _loc8_ = false;
               _loc9_ = false;
               _loc10_ = false;
               for each(_loc6_ in param2.configObj.tagIds)
               {
                  switch(ConfigTagDTO(this._gameConfigProxy.config.tags[_loc6_]).tagName)
                  {
                     case ServerTagConstants.FIRE_DEPARTMENT:
                        _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_FIREDEPARTMENT_SELECTED;
                        break;
                     case ServerTagConstants.SECURITY_DEVICE:
                        _loc10_ = true;
                        break;
                     case ServerTagConstants.SCHOOL:
                        _loc7_ = true;
                        break;
                     case ServerTagConstants.BUILDING:
                        _loc8_ = true;
                        break;
                     case ServerTagConstants.MYSTERY:
                        _loc9_ = true;
                        break;
                     case ServerTagConstants.CINEMA:
                        _loc5_ = VirtualTaskNotificationInterest.ARCHITECTURAL_BOOK_CINEMA_SELECTED;
                  }
               }
               if(_loc10_ && !_loc8_)
               {
                  _loc5_ = VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_HYDRANT_SELECTED;
                  _loc4_ = ArchitectTemplate_SecurityDevice;
                  break;
               }
               if(_loc10_ && _loc8_)
               {
                  _loc4_ = ArchitectTemplate_SecurityBuilding;
                  break;
               }
               if(_loc7_)
               {
                  _loc4_ = ArchitectTemplate_Academy;
                  break;
               }
               if(_loc9_)
               {
                  _loc4_ = ArchitectTemplate_MysteryBuilding;
                  break;
               }
               _loc4_ = ArchitectTemplate_Special;
         }
         if(param3)
         {
            sendNotification(_loc5_);
         }
         return _loc4_;
      }
      
      private function pushTemplateByGroupName(param1:String, param2:BlueprintVo) : void
      {
         var _loc3_:Class = this.getPossibleTemplateClass(param1,param2,true);
         this.templateDict[_loc3_.NAME] = new _loc3_();
         this.pushTemplate(this.templateDict[_loc3_.NAME]);
      }
      
      private function handleBuildNow(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:BlueprintVo = this._currentViewStack[this._currentViewStack.length - 1].data;
         if(!_loc2_.userCanAfford)
         {
            if(_loc2_.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
            }
         }
         else
         {
            this._architecturalBookProxy.blueprintSelected(_loc2_);
         }
      }
      
      private function handleLeftClick(param1:Event) : void
      {
         if(this._gridTemplate.itemList.selectedIndex > 0)
         {
            this._soundProxy.playButtonClick();
            --this._gridTemplate.itemList.selectedIndex;
            this.checkTemplate(this._gridTemplate.itemList.selectedItem as BlueprintVo);
         }
      }
      
      private function handleRightClick(param1:Event) : void
      {
         if(this._gridTemplate.itemList.selectedIndex < this._gridTemplate.itemList.dataProvider.length - 1)
         {
            this._soundProxy.playButtonClick();
            ++this._gridTemplate.itemList.selectedIndex;
            this.checkTemplate(this._gridTemplate.itemList.selectedItem as BlueprintVo);
         }
      }
      
      private function handleFeatureClick(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = {};
         var _loc3_:String = ApplicationNotificationConstants.OPEN_FEATURESCREEN;
         switch(param1.type)
         {
            case "permissionFeatureClick":
               _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
               _loc2_.quest = false;
               break;
            case "effectFeatureClick":
               _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
               _loc2_.quest = false;
               break;
            case "restrictionFeatureClick":
               _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
               _loc2_.quest = false;
               break;
            case "residentFeatureClick":
               _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
               _loc2_.quest = false;
               break;
            case "securitygradeFeatureClick":
               _loc2_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES;
               _loc2_.quest = false;
               _loc3_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
         }
         sendNotification(_loc3_,_loc2_);
      }
      
      private function updateBlueprintVoinTemplate(param1:BlueprintVo) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this._serverStorageProxy.isPlayfieldItemConfigIdViewed(param1.configObj.id))
         {
            this._serverStorageProxy.addPlayfieldItemConfigIdViewed(param1.configObj.id);
            param1.isItemNew = false;
            facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
         }
         this._architecturalBookProxy.verifiedBlueprintVo.bluePrintVO = param1;
         this._currentViewStack[this._currentViewStack.length - 1].center.scrollLeft.visible = true;
         this._currentViewStack[this._currentViewStack.length - 1].center.scrollRight.visible = true;
         if(this.fillSubData(this._currentViewStack[this._currentViewStack.length - 1].name,param1))
         {
            this._currentViewStack[this._currentViewStack.length - 1].setData(this._architecturalBookProxy.verifiedBlueprintVo);
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < this._gridTemplate.itemList.dataProvider.length)
            {
               if(this._gridTemplate.itemList.dataProvider[_loc3_] == null)
               {
                  _loc2_ = _loc3_;
                  break;
               }
               _loc3_++;
            }
            if(_loc2_ == 1)
            {
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollLeft.visible = false;
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollRight.visible = false;
            }
            else if(this._gridTemplate.itemList.selectedIndex == _loc2_ - 1)
            {
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollRight.visible = false;
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollLeft.visible = true;
            }
            else if(this._gridTemplate.itemList.selectedIndex == 0)
            {
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollRight.visible = true;
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollLeft.visible = false;
            }
            else
            {
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollLeft.visible = true;
               this._currentViewStack[this._currentViewStack.length - 1].center.scrollRight.visible = true;
            }
         }
      }
      
      public function fillSubData(param1:String, param2:BlueprintVo) : Boolean
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         this._architecturalBookProxy.verifiedBlueprintVo.bluePrintVO = param2;
         switch(param1)
         {
            case ArchitectTemplate_Ground.NAME:
            case ArchitectTemplate_Decoration.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RealCurrencyAmount();
               break;
            case ArchitectTemplate_Powerplant.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RealCurrencyAmount();
               break;
            case ArchitectTemplate_Commercial.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RefillOutcome(param2);
               this._architecturalBookProxy.subData_RealCurrencyAmount();
               break;
            case ArchitectTemplate_Residential.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RefillCCOutcome(param2);
               this._architecturalBookProxy.subData_refillResidents(param2);
               this._architecturalBookProxy.subData_RealCurrencyAmount();
               break;
            case ArchitectTemplate_Production.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RefillOutcome(param2);
               this._architecturalBookProxy.subData_RealCurrencyAmount();
               break;
            case ArchitectTemplate_Special.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillDescription(param2);
               break;
            case ArchitectTemplate_SecurityDevice.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillDescription(param2);
               this._architecturalBookProxy.subData_RefillSecuritygrade(param2);
               break;
            case ArchitectTemplate_SecurityBuilding.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RefillSecuritygrade(param2);
               break;
            case ArchitectTemplate_Academy.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
               this._architecturalBookProxy.subData_RefillMaterial(param2);
               this._architecturalBookProxy.subData_RefillDescription(param2);
               break;
            case ArchitectTemplate_MysteryBuilding.NAME:
               this._architecturalBookProxy.subData_RefillCost(param2);
               this._architecturalBookProxy.subData_RefillEffects(param2);
         }
         return true;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this.destroyGuiInfolayer();
         sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
      }
      
      private function checkTemplate(param1:BlueprintVo) : void
      {
         var _loc2_:String = this.component.sideMenuComponent.selectedItem.type;
         var _loc3_:String = this.getPossibleTemplateClass(_loc2_,param1).NAME;
         if(Boolean(this._currentViewStack.length) && this._currentViewStack[this._currentViewStack.length - 1].name == _loc3_)
         {
            this.updateBlueprintVoinTemplate(param1);
            return;
         }
         this.popTemplate();
         this.pushTemplateByGroupName(_loc2_,param1);
         this.addViewEventListener(param1);
      }
      
      private function pushTemplate(param1:Group) : void
      {
         if(this._currentViewStack.length)
         {
            this.component.removeElement(this._currentViewStack[this._currentViewStack.length - 1]);
         }
         this._currentViewStack.push(param1);
         this.component.addElement(param1);
         this.invalidateBackButton();
      }
      
      private function popTemplate() : void
      {
         var _loc1_:* = undefined;
         if(this._currentViewStack.length)
         {
            _loc1_ = this._currentViewStack.pop();
            if(_loc1_.center != null)
            {
               _loc1_.center.centerItem.removeEventListener("permissionFeatureClick",this.handleFeatureClick);
            }
            _loc1_.removeEventListener("effectFeatureClick",this.handleFeatureClick);
            _loc1_.removeEventListener("restrictionFeatureClick",this.handleFeatureClick);
            _loc1_.removeEventListener("residentFeatureClick",this.handleFeatureClick);
            _loc1_.removeEventListener("securitygradeFeatureClick",this.handleFeatureClick);
            _loc1_.removeEventListener("left",this.handleLeftClick);
            _loc1_.removeEventListener("right",this.handleRightClick);
            _loc1_.removeEventListener("buildNow",this.handleBuildNow);
            this.component.removeElement(_loc1_);
            this.checkSubMenuOpen(findOutType(_loc1_));
         }
         if(this._currentViewStack.length)
         {
            this.component.addElement(this._currentViewStack[this._currentViewStack.length - 1]);
         }
         this.invalidateBackButton();
      }
      
      private function invalidateBackButton() : void
      {
         if(this._currentViewStack.length <= 1)
         {
            this.component.showBackButton = false;
         }
         else
         {
            this.component.showBackButton = true;
            this.component.backButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.back");
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:PlayfieldItemPermissionDTO = null;
         var _loc3_:BlueprintVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE:
               this.handleAddedToStage();
               break;
            case ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               _loc2_ = param1.getBody() as PlayfieldItemPermissionDTO;
               if(this._currentViewStack.length > 1)
               {
                  if(this._currentViewStack[this._currentViewStack.length - 1].data is BlueprintVo)
                  {
                     _loc3_ = this._currentViewStack[this._currentViewStack.length - 1].data;
                     if(_loc2_ != null)
                     {
                        _loc3_.permission = _loc2_;
                     }
                     this.updateBlueprintVoinTemplate(_loc3_);
                  }
                  break;
               }
               if(this._currentViewStack.length == 1)
               {
                  this.handleAddedToStage(null);
               }
         }
      }
      
      public function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function checkSubMenuOpen(param1:String) : void
      {
         switch(param1)
         {
            case BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_RESIDENTIAL_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_PRODUCTION:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_SHOP:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_POWERPLANT:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_DECORATION:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_GROUNDS:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTURAL_CATEGORY_GROUNDS_SELECTED);
               break;
            case BlueprintGroupConstants.BLUEPRINT_SPECIAL:
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED);
         }
      }
   }
}

