package net.bigpoint.cityrama.view.miniLayer.components
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
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.shopBook.ui.components.NumericStepperComponent;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CitySquareDepositItemRenderer extends ItemRenderer
   {
      
      public static const PLUS_CLICKED_FOR_MARKET:String = "PLUS_CLICKED_FOR_MARKET";
      
      public static const PLUS_CLICKED_FOR_REBUY:String = "PLUS_CLICKED_FOR_REBUY";
      
      public static const VALUE_CHANGED:String = "VALUE_CHANGED";
      
      public static const KEY_ENTER:String = "KEY_ENTER";
      
      private var _985912867depositPlayerstockLabel:LocaLabel;
      
      private var _1345056391goodCardBoard:BriskImageDynaLib;
      
      private var _1354855362goodGroup:Group;
      
      private var _405102819goodIconBriskImageDynaLib:BriskImageDynaLib;
      
      private var _1358953527goodLabel:LocaLabel;
      
      private var _884864252numericStepper:NumericStepperComponent;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EventChallengeStepDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      public function CitySquareDepositItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.height = 135;
         this.width = 320;
         this.mxmlContent = [this._CitySquareDepositItemRenderer_StickyNoteComponent1_c(),this._CitySquareDepositItemRenderer_VGroup1_c(),this._CitySquareDepositItemRenderer_Group2_i()];
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._dataIsDirty)
         {
            this._dataIsDirty = false;
            if(this._data.targetGoodIsEventGood)
            {
               this.goodCardBoard.dynaBmpSourceName = "eventgood_cardBoard_small";
               this.goodIconBriskImageDynaLib.dynaSWFFileName = this._data.currentEventGfxId.toString();
               this.goodIconBriskImageDynaLib.dynaLibName = this._data.currentEventGfxId + "_gui_resources_icons";
               this.goodIconBriskImageDynaLib.dynaBmpSourceName = "ressource_" + this._data.gfxId + "_medium";
               this.goodLabel.text = LocaUtils.getString("rcl.citysquarequests." + this._data.currentEventLocaleId,"rcl.citysquarequests." + this._data.currentEventLocaleId + ".goods.goodname." + this._data.localeId);
               this.plusIcon.includeInLayout = this.plusIcon.visible = false;
            }
            else
            {
               this.goodIconBriskImageDynaLib.dynaSWFFileName = null;
               this.goodIconBriskImageDynaLib.dynaLibName = "gui_resources_icons";
               this.goodIconBriskImageDynaLib.dynaBmpSourceName = "ressource_" + this._data.gfxId + "_medium";
               this.goodCardBoard.dynaBmpSourceName = "ressource_cardboard1_small";
               this.goodLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.localeId);
               this.plusIcon.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.depositminilayer.marketlink");
               this.plusIcon.includeInLayout = this.plusIcon.visible = true;
            }
            this.depositPlayerstockLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.playerStock);
            var _loc1_:int = this._data.eventStockTarget - this._data.eventStock;
            _loc1_ = Math.min(0,this._data.playerStock);
            this.numericStepper.setMaxMin(0,this._data.playerStock > 0 ? 1 : 0);
            this.numericStepper.setLimit(0);
         }
      }
      
      private function onStepperChanged(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(param1 is KeyboardEvent)
         {
            if((param1 as KeyboardEvent).charCode == Keyboard.ENTER)
            {
               dispatchEvent(new Event(KEY_ENTER,true));
            }
         }
         dispatchEvent(new Event(VALUE_CHANGED,true));
      }
      
      private function onPlusClicked(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(PLUS_CLICKED_FOR_MARKET,true,true));
      }
      
      public function get listData() : Object
      {
         var _loc1_:Object = {};
         _loc1_.goodCid = this._data.targetGoodCid;
         _loc1_.amount = this.numericStepper.value;
         return _loc1_;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 is EventChallengeStepDetailViewVo)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               this._dataIsDirty = true;
               super.data = param1;
               this._data = param1 as EventChallengeStepDetailViewVo;
               invalidateProperties();
            }
         }
      }
      
      public function get depositData() : EventChallengeStepDetailViewVo
      {
         return this._data;
      }
      
      private function handleGoodOver(param1:MouseEvent) : void
      {
         if(this._data)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD,this._data.targetGoodCid));
         }
      }
      
      private function handleGoodOut(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function _CitySquareDepositItemRenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 125;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 0;
         _loc1_.width = 320;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.left = 124;
         _loc1_.percentWidth = 90;
         _loc1_.height = 100;
         _loc1_.gap = 0;
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_VGroup2_c(),this._CitySquareDepositItemRenderer_HGroup1_c(),this._CitySquareDepositItemRenderer_NumericStepperComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_LocaLabel1_i(),this._CitySquareDepositItemRenderer_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "depositPlayerstockLabel";
         _loc1_.id = "goodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodLabel = _loc1_;
         BindingManager.executeBindings(this,"goodLabel",this.goodLabel);
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 165;
         _loc1_.height = 20;
         _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_BriskImageDynaLib1_c(),this._CitySquareDepositItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "icon_product";
         _loc1_.dynaLibName = "gui_popups_storagePopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "depositPlayerstockLabel";
         _loc1_.id = "depositPlayerstockLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositPlayerstockLabel = _loc1_;
         BindingManager.executeBindings(this,"depositPlayerstockLabel",this.depositPlayerstockLabel);
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_NumericStepperComponent1_i() : NumericStepperComponent
      {
         var _loc1_:NumericStepperComponent = new NumericStepperComponent();
         _loc1_.width = 175;
         _loc1_.addEventListener("change",this.__numericStepper_change);
         _loc1_.addEventListener("keyUp",this.__numericStepper_keyUp);
         _loc1_.id = "numericStepper";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.numericStepper = _loc1_;
         BindingManager.executeBindings(this,"numericStepper",this.numericStepper);
         return _loc1_;
      }
      
      public function __numericStepper_change(param1:Event) : void
      {
         this.onStepperChanged(param1);
      }
      
      public function __numericStepper_keyUp(param1:KeyboardEvent) : void
      {
         this.onStepperChanged(param1);
      }
      
      private function _CitySquareDepositItemRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_BriskImageDynaLib2_i(),this._CitySquareDepositItemRenderer_BriskImageDynaLib3_i(),this._CitySquareDepositItemRenderer_BriskMCDynaLib1_c(),this._CitySquareDepositItemRenderer_BriskImageDynaLib4_i()];
         _loc1_.id = "goodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodGroup = _loc1_;
         BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "ressource_cardboard3_small";
         _loc1_.dynaLibName = "gui_popups_storagePopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 0;
         _loc1_.addEventListener("rollOver",this.__goodCardBoard_rollOver);
         _loc1_.addEventListener("rollOut",this.__goodCardBoard_rollOut);
         _loc1_.id = "goodCardBoard";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodCardBoard = _loc1_;
         BindingManager.executeBindings(this,"goodCardBoard",this.goodCardBoard);
         return _loc1_;
      }
      
      public function __goodCardBoard_rollOver(param1:MouseEvent) : void
      {
         this.handleGoodOver(param1);
      }
      
      public function __goodCardBoard_rollOut(param1:MouseEvent) : void
      {
         this.handleGoodOut(param1);
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.addEventListener("rollOver",this.__goodIconBriskImageDynaLib_rollOver);
         _loc1_.addEventListener("rollOut",this.__goodIconBriskImageDynaLib_rollOut);
         _loc1_.id = "goodIconBriskImageDynaLib";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodIconBriskImageDynaLib = _loc1_;
         BindingManager.executeBindings(this,"goodIconBriskImageDynaLib",this.goodIconBriskImageDynaLib);
         return _loc1_;
      }
      
      public function __goodIconBriskImageDynaLib_rollOver(param1:MouseEvent) : void
      {
         this.handleGoodOver(param1);
      }
      
      public function __goodIconBriskImageDynaLib_rollOut(param1:MouseEvent) : void
      {
         this.handleGoodOut(param1);
      }
      
      private function _CitySquareDepositItemRenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.percentWidth = 100;
         _loc1_.top = -10;
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.addEventListener("click",this.__plusIcon_click);
         _loc1_.addEventListener("mouseOver",this.__plusIcon_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__plusIcon_mouseOut);
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      public function __plusIcon_click(param1:MouseEvent) : void
      {
         this.onPlusClicked(param1);
      }
      
      public function __plusIcon_mouseOver(param1:MouseEvent) : void
      {
         this.plusIcon.scaleX += 0.05;
         this.plusIcon.scaleY += 0.05;
      }
      
      public function __plusIcon_mouseOut(param1:MouseEvent) : void
      {
         this.plusIcon.scaleX = 1;
         this.plusIcon.scaleY = 1;
      }
      
      [Bindable(event="propertyChange")]
      public function get depositPlayerstockLabel() : LocaLabel
      {
         return this._985912867depositPlayerstockLabel;
      }
      
      public function set depositPlayerstockLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._985912867depositPlayerstockLabel;
         if(_loc2_ !== param1)
         {
            this._985912867depositPlayerstockLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositPlayerstockLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodCardBoard() : BriskImageDynaLib
      {
         return this._1345056391goodCardBoard;
      }
      
      public function set goodCardBoard(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1345056391goodCardBoard;
         if(_loc2_ !== param1)
         {
            this._1345056391goodCardBoard = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodCardBoard",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : Group
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1354855362goodGroup;
         if(_loc2_ !== param1)
         {
            this._1354855362goodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodIconBriskImageDynaLib() : BriskImageDynaLib
      {
         return this._405102819goodIconBriskImageDynaLib;
      }
      
      public function set goodIconBriskImageDynaLib(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._405102819goodIconBriskImageDynaLib;
         if(_loc2_ !== param1)
         {
            this._405102819goodIconBriskImageDynaLib = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodIconBriskImageDynaLib",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodLabel() : LocaLabel
      {
         return this._1358953527goodLabel;
      }
      
      public function set goodLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1358953527goodLabel;
         if(_loc2_ !== param1)
         {
            this._1358953527goodLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numericStepper() : NumericStepperComponent
      {
         return this._884864252numericStepper;
      }
      
      public function set numericStepper(param1:NumericStepperComponent) : void
      {
         var _loc2_:Object = this._884864252numericStepper;
         if(_loc2_ !== param1)
         {
            this._884864252numericStepper = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numericStepper",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc2_ !== param1)
         {
            this._1849499341plusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
            }
         }
      }
   }
}

