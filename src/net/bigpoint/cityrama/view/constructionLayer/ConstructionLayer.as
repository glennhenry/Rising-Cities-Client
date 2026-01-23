package net.bigpoint.cityrama.view.constructionLayer
{
   import com.greensock.TweenMax;
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerVo;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.VerticalScrollbarList;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ConstructionLayer extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _2120349464constructionGfx:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1822366839instantBuyButton:MultistateButton;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _188974544levelLabel:LocaLabel;
      
      private var _750240179scrollShadow:BriskImageDynaLib;
      
      private var _1428284810stepList:List;
      
      private var _501248986typeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerVo;
      
      private var _dataDirty:Boolean;
      
      private var _hasInterval:Boolean;
      
      private var _intervalId:uint;
      
      private var _toolTipDirty:Boolean;
      
      private var _toolTipVisible:Boolean;
      
      private var _toolTipEvent:ToolTipEvent;
      
      private var _costs:Number;
      
      public function ConstructionLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 775;
         this.height = 440;
         this.styleName = "tabbedConstruction";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ConstructionLayer_PaperPopupWindow1_creationComplete);
         this.addEventListener("removedFromStage",this.___ConstructionLayer_PaperPopupWindow1_removedFromStage);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.addEventListener(ConstructionLayerMediator.START_STEP_NORMAL,this.stepStartedHandler);
         this.instantBuyButton.addEventListener(ToolTipEvent.TOOL_TIP_SHOW,this.toolTipShowHandler);
         this.instantBuyButton.addEventListener(ToolTipEvent.TOOL_TIP_HIDE,this.toolTipHideHandler);
      }
      
      public function set data(param1:ConstructionLayerVo) : void
      {
         this._data = param1;
         this._dataDirty = true;
         invalidateProperties();
      }
      
      public function updateData() : void
      {
         if(this._data)
         {
            (this.stepList.dataProvider as ArrayCollection).refresh();
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:ConstructionLayerStepVo = null;
         super.commitProperties();
         if(Boolean(this._data) && this._dataDirty)
         {
            this._dataDirty = false;
            this.stepList.dataProvider = this._data.constructionSteps;
            _loc1_ = false;
            for each(_loc2_ in this._data.constructionSteps)
            {
               if(_loc2_.state == ConstructionLayerStepVo.STATE_RUNNING)
               {
                  this.stepStartedHandler(null);
                  _loc1_ = true;
                  break;
               }
            }
            if(!_loc1_ && this._hasInterval)
            {
               clearInterval(this._intervalId);
               this._hasInterval = false;
            }
            TweenMax.delayedCall(0.1,this.keepCurrentStepVisible);
            this.setTabData();
            this.headerLabel.text = this._data.headerLabel;
            this.flavourLabel.text = this._data.flavourLabel;
            this.setItemGfx();
            this.setItemText();
            this.setButtonLabel();
            this.setConstructionSign();
            this.scrollShadow.visible = this.scrollShadow.includeInLayout = this._data.constructionSteps.length > 3;
         }
      }
      
      private function keepCurrentStepVisible() : void
      {
         var _loc1_:int = 0;
         if(this._data)
         {
            _loc1_ = 0;
            while(_loc1_ < this._data.constructionSteps.length)
            {
               if(this._data.constructionSteps[_loc1_].state == ConstructionLayerStepVo.STATE_RUNNING || this._data.constructionSteps[_loc1_].state == ConstructionLayerStepVo.STATE_AVAILABLE)
               {
                  this.stepList.ensureIndexIsVisible(_loc1_);
                  break;
               }
               _loc1_++;
            }
         }
      }
      
      private function setConstructionSign() : void
      {
         if(this._data)
         {
            if(this.calculateCosts() != 0)
            {
               this.constructionGfx.visible = this.constructionGfx.includeInLayout = this._data.billboardObject.billboardObjectVo.isUnderConstruction();
            }
         }
      }
      
      private function setTabData() : void
      {
         var _loc1_:Array = [];
         var _loc2_:TabsVo = new TabsVo();
         _loc2_.styleName = "departments";
         if(Boolean(this._data) && this._data.isUpgrade)
         {
            _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.title.capital.upgrade");
         }
         else
         {
            _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.title.capital.construction");
         }
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         _loc1_.push(_loc2_);
         this.tabData = new ArrayCollection(_loc1_);
      }
      
      private function setItemGfx() : void
      {
         var _loc1_:int = 0;
         if(this._data)
         {
            _loc1_ = this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.upgradeLevel + 1;
            this.itemGfx.dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo);
            this.itemGfx.dynaBmpSourceName = "FieldItem_" + this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.gfxId + "_level" + _loc1_ + "_big";
         }
      }
      
      private function setItemText() : void
      {
         var _loc1_:int = 0;
         if(this._data)
         {
            _loc1_ = this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.upgradeLevel + 1;
            this.levelLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.levelLabel",[_loc1_]);
            if(!this._data.isUpgrade)
            {
               this.typeLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.instantLabel.construction");
            }
            else
            {
               this.typeLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.instantLabel.upgrade");
            }
         }
      }
      
      private function calculateCosts() : Number
      {
         var _loc2_:ConstructionLayerStepVo = null;
         this._costs = 0;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this._data.constructionSteps)
         {
            this._costs += _loc2_.instantFinishCost;
            if(_loc2_.state != ConstructionLayerStepVo.STATE_DONE)
            {
               _loc1_ = true;
            }
         }
         this._costs = Math.floor(this._costs);
         if(this._costs < 1)
         {
            if(_loc1_)
            {
               this._costs = 1;
            }
            else
            {
               this._costs = 0;
            }
         }
         return this._costs;
      }
      
      private function setButtonLabel() : void
      {
         var _loc1_:Number = NaN;
         if(this._data)
         {
            _loc1_ = this.calculateCosts();
            if(_loc1_ == 0)
            {
               dispatchEvent(new Event(Event.CLOSE));
               return;
            }
            this.instantBuyButton.showPlus = this._data.rcStock < _loc1_;
            this.instantBuyButton.label = LocaUtils.getThousendSeperatedNumber(_loc1_);
            this.instantBuyButton.priceToConfirm = _loc1_;
            if(this._data.isUpgrade)
            {
               this.instantBuyButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishAll.upgrade",[LocaUtils.getThousendSeperatedNumber(_loc1_)]);
            }
            else
            {
               this.instantBuyButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishAll.construction",[LocaUtils.getThousendSeperatedNumber(_loc1_)]);
            }
         }
      }
      
      private function instantBuyButton_rollOverHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this._data)
         {
            if(this._data.isUpgrade)
            {
               _loc2_ = this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.upgradeLevel + 1;
               if(this._data.isUpgrade && !this._data.billboardObject.billboardObjectVo.isUnderConstruction())
               {
                  _loc2_ += 1;
               }
               this.itemGfx.dynaBmpSourceName = "FieldItem_" + this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.gfxId + "_level" + _loc2_ + "_big";
            }
            var _temp_2:* = this.constructionGfx;
            this.constructionGfx.includeInLayout = false;
            _temp_2.visible = false;
         }
      }
      
      private function instantBuyButton_rollOutHandler(param1:MouseEvent) : void
      {
         this.setItemGfx();
         this.setConstructionSign();
      }
      
      private function instantBuyButton_clickHandler(param1:MouseEvent) : void
      {
         this.instantBuyButton.enabled = false;
         dispatchEvent(new Event(ConstructionLayerMediator.INSTANT_FINISH_ALL));
      }
      
      private function stepStartedHandler(param1:Event) : void
      {
         if(this._hasInterval)
         {
            clearInterval(this._intervalId);
         }
         this._intervalId = setInterval(this.updateRunningStep,1000);
         this._hasInterval = true;
      }
      
      private function updateRunningStep() : void
      {
         var _loc1_:Number = this._costs;
         this.setButtonLabel();
         if(_loc1_ != this._costs)
         {
            this._toolTipDirty = true;
            if(this._toolTipVisible)
            {
               this.toolTipShowHandler(this._toolTipEvent);
            }
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         if(this._hasInterval)
         {
            clearInterval(this._intervalId);
         }
      }
      
      protected function toolTipHideHandler(param1:ToolTipEvent) : void
      {
         this._toolTipVisible = false;
      }
      
      private function toolTipShowHandler(param1:ToolTipEvent) : void
      {
         var _loc2_:Number = NaN;
         this._toolTipVisible = true;
         this._toolTipEvent = param1;
         if(this._toolTipDirty)
         {
            _loc2_ = this.calculateCosts();
            param1.toolTip.text = this.instantBuyButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc2_]);
         }
      }
      
      private function _ConstructionLayer_Array1_c() : Array
      {
         return [this._ConstructionLayer_VGroup1_c()];
      }
      
      private function _ConstructionLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -28;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ConstructionLayer_Group1_c(),this._ConstructionLayer_VGroup2_c(),this._ConstructionLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 55;
         _loc1_.mxmlContent = [this._ConstructionLayer_HGroup1_c(),this._ConstructionLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionLayer_BlueBarComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 80;
         _loc1_.height = 33;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib1_c(),this._ConstructionLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_upgrade";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 18;
         _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.maxWidth = 500;
         _loc1_.styleName = "sixteenWhiteCenter";
         _loc1_.top = 4;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _ConstructionLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 500;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 280;
         _loc1_.mxmlContent = [this._ConstructionLayer_Group3_c(),this._ConstructionLayer_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 190;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ConstructionLayer_Group4_c(),this._ConstructionLayer_Group5_c(),this._ConstructionLayer_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskMCDynaLib1_c(),this._ConstructionLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "postit_bg";
         _loc1_.width = 193;
         _loc1_.height = 95;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 70;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "bottom";
         _loc1_.bottom = 15;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel3_i(),this._ConstructionLayer_LocaLabel4_i(),this._ConstructionLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "elevenDarkCenter";
         _loc1_.maxWidth = 170;
         _loc1_.id = "typeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.typeLabel = _loc1_;
         BindingManager.executeBindings(this,"typeLabel",this.typeLabel);
         return _loc1_;
      }
      
      private function _ConstructionLayer_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "thirteenBlueCenter";
         _loc1_.maxWidth = 170;
         _loc1_.id = "levelLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelLabel = _loc1_;
         BindingManager.executeBindings(this,"levelLabel",this.levelLabel);
         return _loc1_;
      }
      
      private function _ConstructionLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 160;
         _loc1_.imageNameLeft = "dd_button_icon";
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.useConfirmation = true;
         _loc1_.addEventListener("rollOver",this.__instantBuyButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__instantBuyButton_rollOut);
         _loc1_.addEventListener("click",this.__instantBuyButton_click);
         _loc1_.id = "instantBuyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.instantBuyButton = _loc1_;
         BindingManager.executeBindings(this,"instantBuyButton",this.instantBuyButton);
         return _loc1_;
      }
      
      public function __instantBuyButton_rollOver(param1:MouseEvent) : void
      {
         this.instantBuyButton_rollOverHandler(param1);
      }
      
      public function __instantBuyButton_rollOut(param1:MouseEvent) : void
      {
         this.instantBuyButton_rollOutHandler(param1);
      }
      
      public function __instantBuyButton_click(param1:MouseEvent) : void
      {
         this.instantBuyButton_clickHandler(param1);
      }
      
      private function _ConstructionLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib2_c(),this._ConstructionLayer_HGroup4_c(),this._ConstructionLayer_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "architect_blueprint_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "itemGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGfx = _loc1_;
         BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "construction_sign";
         _loc1_.id = "constructionGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.constructionGfx = _loc1_;
         BindingManager.executeBindings(this,"constructionGfx",this.constructionGfx);
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 542;
         _loc1_.height = 271;
         _loc1_.mxmlContent = [this._ConstructionLayer_DebossedBackgroundComponent1_c(),this._ConstructionLayer_List1_i(),this._ConstructionLayer_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ConstructionLayer_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = false;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.right = 4;
         _loc1_.setStyle("skinClass",VerticalScrollbarList);
         _loc1_.id = "stepList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepList = _loc1_;
         BindingManager.executeBindings(this,"stepList",this.stepList);
         return _loc1_;
      }
      
      private function _ConstructionLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ConstructionStepItemRenderer;
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "shadow_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 3;
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.id = "scrollShadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollShadow = _loc1_;
         BindingManager.executeBindings(this,"scrollShadow",this.scrollShadow);
         return _loc1_;
      }
      
      public function ___ConstructionLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___ConstructionLayer_PaperPopupWindow1_removedFromStage(param1:Event) : void
      {
         this.removedFromStageHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionGfx() : BriskImageDynaLib
      {
         return this._2120349464constructionGfx;
      }
      
      public function set constructionGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2120349464constructionGfx;
         if(_loc2_ !== param1)
         {
            this._2120349464constructionGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc2_ !== param1)
         {
            this._1166031975headerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get instantBuyButton() : MultistateButton
      {
         return this._1822366839instantBuyButton;
      }
      
      public function set instantBuyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1822366839instantBuyButton;
         if(_loc2_ !== param1)
         {
            this._1822366839instantBuyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantBuyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2116181862itemGfx;
         if(_loc2_ !== param1)
         {
            this._2116181862itemGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : LocaLabel
      {
         return this._188974544levelLabel;
      }
      
      public function set levelLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._188974544levelLabel;
         if(_loc2_ !== param1)
         {
            this._188974544levelLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollShadow() : BriskImageDynaLib
      {
         return this._750240179scrollShadow;
      }
      
      public function set scrollShadow(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._750240179scrollShadow;
         if(_loc2_ !== param1)
         {
            this._750240179scrollShadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollShadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepList() : List
      {
         return this._1428284810stepList;
      }
      
      public function set stepList(param1:List) : void
      {
         var _loc2_:Object = this._1428284810stepList;
         if(_loc2_ !== param1)
         {
            this._1428284810stepList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : LocaLabel
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._501248986typeLabel;
         if(_loc2_ !== param1)
         {
            this._501248986typeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
            }
         }
      }
   }
}

