package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.components.CitySquareDepositItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.CitySquareDepositSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.List;
   
   use namespace mx_internal;
   
   public class CitysquareDepositMinilayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const DEPOSIT_CLICKED:String = "DEPOSIT_CLICKED";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _371311760depositButton:MultistateButton;
      
      private var _1798747784depositFlavorLabel:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _valueInvalidated:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitysquareDepositMinilayer()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._CitysquareDepositMinilayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CitysquareDepositMinilayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CitysquareDepositMinilayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitysquareDepositMinilayer_Array1_c);
         this.addEventListener("creationComplete",this.___CitysquareDepositMinilayer_MiniLayerWindow1_creationComplete);
         this.addEventListener("removedFromStage",this.___CitysquareDepositMinilayer_MiniLayerWindow1_removedFromStage);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CitysquareDepositMinilayer._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function handleRemoved(param1:Event) : void
      {
         this.itemList.removeEventListener(CitySquareDepositSkin.LOCKED,this.onListLock);
         this.itemList.removeEventListener(CitySquareDepositSkin.UNLOCKED,this.onListUnLock);
         this.itemList.removeEventListener(CitySquareDepositItemRenderer.VALUE_CHANGED,this.onValueChanged);
         this.itemList.removeEventListener(CitySquareDepositItemRenderer.KEY_ENTER,this.onEnterKey);
      }
      
      private function onEnterKey(param1:Event) : void
      {
         if(this.depositButton.enabled)
         {
            dispatchEvent(new Event(DEPOSIT_CLICKED,true,true));
         }
      }
      
      private function handleEventButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(DEPOSIT_CLICKED,true,true));
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         title = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.header");
         this.depositFlavorLabel.text = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.flavour");
         this.depositButton.label = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.button.deposit");
         this.depositButton.skin.setCurrentState("down");
         this.depositButton.skin.setCurrentState("up");
         this.itemList.addEventListener(CitySquareDepositSkin.LOCKED,this.onListLock);
         this.itemList.addEventListener(CitySquareDepositSkin.UNLOCKED,this.onListUnLock);
         this.itemList.addEventListener(CitySquareDepositItemRenderer.VALUE_CHANGED,this.onValueChanged);
         this.itemList.addEventListener(CitySquareDepositItemRenderer.KEY_ENTER,this.onEnterKey);
         this._valueInvalidated = true;
         invalidateProperties();
      }
      
      private function onValueChanged(param1:Event = null) : void
      {
         this._valueInvalidated = true;
         invalidateProperties();
      }
      
      private function onListLock(param1:Event = null) : void
      {
         this.depositButton.mouseEnabled = false;
      }
      
      private function onListUnLock(param1:Event = null) : void
      {
         this.depositButton.mouseEnabled = true;
         this.onValueChanged();
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         this._data = param1;
         this._dataIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayList = null;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:EventChallengeStepDetailViewVo = null;
         var _loc4_:int = 0;
         var _loc5_:CitySquareDepositItemRenderer = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            _loc1_ = new ArrayList();
            for each(_loc2_ in this._data.eventList[0].listOfChallenges)
            {
               if(_loc2_.state == QuestSystemStateConst.VALID)
               {
                  for each(_loc3_ in _loc2_.listOfSteps)
                  {
                     if(_loc3_.eventStockTarget > _loc3_.eventStock)
                     {
                        _loc1_.addItem(_loc3_);
                     }
                  }
               }
            }
            this.itemList.dataProvider = _loc1_;
         }
         if(this._valueInvalidated)
         {
            this._valueInvalidated = false;
            _loc4_ = int(this.itemList.dataGroup.getItemIndicesInView()[0]);
            _loc5_ = this.itemList.dataGroup.getElementAt(_loc4_) as CitySquareDepositItemRenderer;
            _loc6_ = _loc5_.numericStepper.value > 0;
            _loc7_ = _loc5_.depositData.playerStock > 0;
            _loc8_ = _loc5_.numericStepper.value <= _loc5_.depositData.eventStockTarget - _loc5_.depositData.eventStock;
            _loc9_ = _loc5_.numericStepper.value <= _loc5_.depositData.playerStock;
            this.depositButton.enabled = _loc6_ && _loc8_ && _loc7_ && _loc9_;
         }
      }
      
      private function _CitysquareDepositMinilayer_Array1_c() : Array
      {
         return [this._CitysquareDepositMinilayer_Group1_c(),this._CitysquareDepositMinilayer_MultistateButton1_i()];
      }
      
      private function _CitysquareDepositMinilayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 80;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._CitysquareDepositMinilayer_LocaLabel1_i(),this._CitysquareDepositMinilayer_List1_i(),this._CitysquareDepositMinilayer_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxHeight = 50;
         _loc1_.maxWidth = 340;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.percentWidth = 100;
         _loc1_.id = "depositFlavorLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositFlavorLabel = _loc1_;
         BindingManager.executeBindings(this,"depositFlavorLabel",this.depositFlavorLabel);
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._CitysquareDepositMinilayer_ClassFactory1_c();
         _loc1_.top = 40;
         _loc1_.left = 30;
         _loc1_.width = 320;
         _loc1_.setStyle("skinClass",CitySquareDepositSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CitySquareDepositItemRenderer;
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 80;
         _loc1_.top = 110;
         _loc1_.right = 300;
         _loc1_.lineId = 0;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.imageNameLeft = "button_icon_goto";
         _loc1_.width = 207;
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 10;
         _loc1_.addEventListener("click",this.__depositButton_click);
         _loc1_.id = "depositButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositButton = _loc1_;
         BindingManager.executeBindings(this,"depositButton",this.depositButton);
         return _loc1_;
      }
      
      public function __depositButton_click(param1:MouseEvent) : void
      {
         this.handleEventButtonClick(param1);
      }
      
      public function ___CitysquareDepositMinilayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___CitysquareDepositMinilayer_MiniLayerWindow1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved(param1);
      }
      
      private function _CitysquareDepositMinilayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get depositButton() : MultistateButton
      {
         return this._371311760depositButton;
      }
      
      public function set depositButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._371311760depositButton;
         if(_loc2_ !== param1)
         {
            this._371311760depositButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositFlavorLabel() : LocaLabel
      {
         return this._1798747784depositFlavorLabel;
      }
      
      public function set depositFlavorLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1798747784depositFlavorLabel;
         if(_loc2_ !== param1)
         {
            this._1798747784depositFlavorLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositFlavorLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
   }
}

