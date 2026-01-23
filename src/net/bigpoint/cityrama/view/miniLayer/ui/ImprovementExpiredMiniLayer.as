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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementInfoMiniLayerComponentVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementExpiredMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementExpiredMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      public static const RENEW_IMPROVEMENT:String = "RENEW_IMPROVEMENT";
      
      public static const REMOVE_IMPROVEMENT:String = "REMOVE_IMPROVEMENT";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1245745987deleteButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2062861329infoComponent:ImprovementInfoMiniLayerComponent;
      
      private var _1851539487renewButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementExpiredMiniLayer()
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
         bindings = this._ImprovementExpiredMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementExpiredMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementExpiredMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementExpiredMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ImprovementExpiredMiniLayer_MiniLayerWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementExpiredMiniLayer._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.title.capital");
         this.flavourText.text = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.flavour");
         this.renewButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
         this.renewButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.tooltip");
         this.deleteButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.btn.remove.capital");
         this.deleteButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.btn.remove.tooltip");
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ImprovementInfoMiniLayerComponentVo = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.renewButton.showSparkle = this._data.renewalAffordable;
            this.renewButton.showPlus = !this._data.renewalAffordable;
            this.renewButton.priceToConfirm = this._data.improvementVo.renewalPrice;
            if(this._data.renewalAffordable)
            {
               this.renewButton.addEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
            }
            _loc1_ = new ImprovementInfoMiniLayerComponentVo();
            _loc1_.state = ImprovementInfoMiniLayerComponentVo.STATE_EXPIRED;
            _loc1_.improvementVo = this._data.improvementVo;
            this.infoComponent.data = _loc1_;
         }
      }
      
      private function onRenewRollOver(param1:MouseEvent) : void
      {
         this.renewButton.removeEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
         this.renewButton.addEventListener(MouseEvent.MOUSE_OUT,this.onRenewRollOut);
         this.renewButton.label = LocaUtils.getThousendSeperatedNumber(this._data.improvementVo.renewalPrice);
      }
      
      private function onRenewRollOut(param1:MouseEvent) : void
      {
         this.renewButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onRenewRollOut);
         this.renewButton.addEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
         this.renewButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
      }
      
      public function set data(param1:ImprovementMiniLayerVo) : void
      {
         this._data = param1;
         this._isDirty = true;
         invalidateProperties();
      }
      
      private function handleRemove() : void
      {
         dispatchEvent(new Event(REMOVE_IMPROVEMENT,true,true));
      }
      
      private function handleRenew() : void
      {
         if(this.renewButton.showPlus)
         {
            dispatchEvent(new Event(OPEN_TREASURY,true,true));
         }
         else
         {
            dispatchEvent(new Event(RENEW_IMPROVEMENT,true,true));
         }
      }
      
      private function _ImprovementExpiredMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementExpiredMiniLayer_VGroup1_c(),this._ImprovementExpiredMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementExpiredMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.gap = -11;
         _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_HGroup1_c(),this._ImprovementExpiredMiniLayer_ImprovementInfoMiniLayerComponent1_i(),this._ImprovementExpiredMiniLayer_Group1_c(),this._ImprovementExpiredMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 50;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_ImprovementInfoMiniLayerComponent1_i() : ImprovementInfoMiniLayerComponent
      {
         var _loc1_:ImprovementInfoMiniLayerComponent = new ImprovementInfoMiniLayerComponent();
         _loc1_.id = "infoComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoComponent = _loc1_;
         BindingManager.executeBindings(this,"infoComponent",this.infoComponent);
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 16;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 14;
         _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_MultistateButton1_i(),this._ImprovementExpiredMiniLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.useConfirmation = true;
         _loc1_.imageNameLeft = "dd_button_icon";
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.addEventListener("click",this.__renewButton_click);
         _loc1_.id = "renewButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.renewButton = _loc1_;
         BindingManager.executeBindings(this,"renewButton",this.renewButton);
         return _loc1_;
      }
      
      public function __renewButton_click(param1:MouseEvent) : void
      {
         this.handleRenew();
      }
      
      private function _ImprovementExpiredMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_cancel";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.styleName = "abort";
         _loc1_.addEventListener("click",this.__deleteButton_click);
         _loc1_.id = "deleteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deleteButton = _loc1_;
         BindingManager.executeBindings(this,"deleteButton",this.deleteButton);
         return _loc1_;
      }
      
      public function __deleteButton_click(param1:MouseEvent) : void
      {
         this.handleRemove();
      }
      
      private function _ImprovementExpiredMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 60;
         _loc1_.top = 58;
         _loc1_.right = 315;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      public function ___ImprovementExpiredMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _ImprovementExpiredMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return ImprovementExpiredMiniLayerMediator.LINE_ID_0;
         },null,"uiInfolayerAlignmentLine.lineId");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteButton() : MultistateButton
      {
         return this._1245745987deleteButton;
      }
      
      public function set deleteButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1245745987deleteButton;
         if(_loc2_ !== param1)
         {
            this._1245745987deleteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoComponent() : ImprovementInfoMiniLayerComponent
      {
         return this._2062861329infoComponent;
      }
      
      public function set infoComponent(param1:ImprovementInfoMiniLayerComponent) : void
      {
         var _loc2_:Object = this._2062861329infoComponent;
         if(_loc2_ !== param1)
         {
            this._2062861329infoComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get renewButton() : MultistateButton
      {
         return this._1851539487renewButton;
      }
      
      public function set renewButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1851539487renewButton;
         if(_loc2_ !== param1)
         {
            this._1851539487renewButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"renewButton",_loc2_,param1));
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

