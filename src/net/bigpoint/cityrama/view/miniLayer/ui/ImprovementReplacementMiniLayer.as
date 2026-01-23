package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementReplacementMiniLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementReplacementMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const RENEW_IMPROVEMENT:String = "RENEW_IMPROVEMENT";
      
      public static const REPLACE_IMPROVEMENT:String = "REPLACE_IMPROVEMENT";
      
      public static const KEEP_IMPROVEMENT:String = "KEEP_IMPROVEMENT";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      public static const OLD_IMPRO_OVER:String = "OLD_IMPRO_OVER";
      
      public static const NEW_IMPRO_OVER:String = "NEW_IMPRO_OVER";
      
      public static const IMPRO_OUT:String = "IMPRO_OUT";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1632457241leftButton:MultistateButton;
      
      private var _305571606newImprovement:BriskImageDynaLib;
      
      private var _1784902884newImprovementBackground:BriskImageDynaLib;
      
      private var _36962861newImprovementBadge:BriskImageDynaLib;
      
      private var _42097929newImprovementGroup:Group;
      
      private var _411412433oldImprovement:BriskImageDynaLib;
      
      private var _1909676733oldImprovementBackground:BriskImageDynaLib;
      
      private var _859838644oldImprovementBadge:BriskImageDynaLib;
      
      private var _864973712oldImprovementGroup:Group;
      
      private var _580382470replaceButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementReplacementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementReplacementMiniLayer()
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
         bindings = this._ImprovementReplacementMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementReplacementMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementReplacementMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementReplacementMiniLayer_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementReplacementMiniLayer._watcherSetupUtil = param1;
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
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.replaceButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.replace.capital");
            this.replaceButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.replace.tooltip");
            this.oldImprovement.briskDynaVo = this._data.oldImproData;
            this.oldImprovementBackground.briskDynaVo = this._data.oldImproBackground;
            this.oldImprovementBadge.briskDynaVo = this._data.oldImproBadge;
            this.newImprovement.briskDynaVo = this._data.newImproData;
            this.newImprovementBackground.briskDynaVo = this._data.newImproBackground;
            this.newImprovementBadge.briskDynaVo = this._data.newImproBadge;
            if(this._data.state == ImprovementReplacementMiniLayerVo.STATE_REPLACE)
            {
               title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.title.capital");
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.flavour");
               this.leftButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.keep.capital");
               this.leftButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.keep.tooltip");
               this.leftButton.showSparkle = false;
               this.leftButton.setStyle("styleName","abort");
               this.leftButton.imageNameLeft = "icon_cancel";
               this.leftButton.libNameLeft = "gui_popups_miniLayer";
               this.leftButton.useConfirmation = false;
            }
            else if(this._data.state == ImprovementReplacementMiniLayerVo.STATE_REPLACE_EXPIRED)
            {
               title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.title.capital");
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.flavour");
               this.oldImprovement.alpha = 0.7;
               TweenMax.to(this.oldImprovement,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
               this.leftButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
               this.leftButton.imageNameLeft = "dd_button_icon";
               this.leftButton.libNameLeft = "gui_resources_icons";
               this.leftButton.useConfirmation = true;
               this.leftButton.priceToConfirm = this._data.improvementVo.renewalPrice;
               this.leftButton.showPlus = !this._data.renewalAffordable;
               this.leftButton.showSparkle = this._data.renewalAffordable;
               if(this._data.renewalAffordable)
               {
                  this.leftButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.tooltip");
               }
               this.leftButton.addEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
            }
         }
      }
      
      private function onLeftButtonRollOver(param1:MouseEvent) : void
      {
         this.leftButton.removeEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
         this.leftButton.addEventListener(MouseEvent.ROLL_OUT,this.onLeftButtonRollOut);
         this.leftButton.label = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.improvementVo.renewalPrice));
      }
      
      private function onLeftButtonRollOut(param1:MouseEvent) : void
      {
         this.leftButton.removeEventListener(MouseEvent.ROLL_OUT,this.onLeftButtonRollOut);
         this.leftButton.addEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
         this.leftButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
      }
      
      public function set data(param1:ImprovementReplacementMiniLayerVo) : void
      {
         this._data = param1;
         this._isDirty = true;
         invalidateProperties();
      }
      
      private function handleReplace() : void
      {
         dispatchEvent(new Event(REPLACE_IMPROVEMENT,true,true));
      }
      
      private function handleLeftButtonAction() : void
      {
         if(this._data.state == ImprovementReplacementMiniLayerVo.STATE_REPLACE)
         {
            dispatchEvent(new Event(KEEP_IMPROVEMENT,true,true));
         }
         else if(this._data.state == ImprovementReplacementMiniLayerVo.STATE_REPLACE_EXPIRED)
         {
            if(this.leftButton.showPlus)
            {
               dispatchEvent(new Event(OPEN_TREASURY,true,true));
            }
            else
            {
               dispatchEvent(new Event(RENEW_IMPROVEMENT,true,true));
            }
         }
      }
      
      private function handleImprovementOver(param1:MouseEvent) : void
      {
         if(param1.currentTarget is Group)
         {
            if(param1.currentTarget as Group == this.oldImprovementGroup)
            {
               dispatchEvent(new Event(OLD_IMPRO_OVER,true,true));
            }
            else if(param1.currentTarget as Group == this.newImprovementGroup)
            {
               dispatchEvent(new Event(NEW_IMPRO_OVER,true,true));
            }
         }
      }
      
      private function handleImprovementOut(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(IMPRO_OUT,true,true));
      }
      
      private function _ImprovementReplacementMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementReplacementMiniLayer_VGroup1_c(),this._ImprovementReplacementMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementReplacementMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_HGroup1_c(),this._ImprovementReplacementMiniLayer_HGroup2_c(),this._ImprovementReplacementMiniLayer_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 50;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_LocaLabel1_i() : LocaLabel
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
      
      private function _ImprovementReplacementMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_Group1_i(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib5_c(),this._ImprovementReplacementMiniLayer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib1_i(),this._ImprovementReplacementMiniLayer_HGroup3_c(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib3_i(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib4_c()];
         _loc1_.addEventListener("mouseOver",this.__oldImprovementGroup_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__oldImprovementGroup_mouseOut);
         _loc1_.id = "oldImprovementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.oldImprovementGroup = _loc1_;
         BindingManager.executeBindings(this,"oldImprovementGroup",this.oldImprovementGroup);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_cardboard_small";
         _loc1_.id = "oldImprovementBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.oldImprovementBackground = _loc1_;
         BindingManager.executeBindings(this,"oldImprovementBackground",this.oldImprovementBackground);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 118;
         _loc1_.width = 118;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "oldImprovement";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.oldImprovement = _loc1_;
         BindingManager.executeBindings(this,"oldImprovement",this.oldImprovement);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.left = 3;
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.id = "oldImprovementBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.oldImprovementBadge = _loc1_;
         BindingManager.executeBindings(this,"oldImprovementBadge",this.oldImprovementBadge);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "delete_indicator";
         _loc1_.right = -6;
         _loc1_.top = -6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __oldImprovementGroup_mouseOver(param1:MouseEvent) : void
      {
         this.handleImprovementOver(param1);
      }
      
      public function __oldImprovementGroup_mouseOut(param1:MouseEvent) : void
      {
         this.handleImprovementOut(param1);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "replace_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib6_i(),this._ImprovementReplacementMiniLayer_HGroup4_c(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib8_i()];
         _loc1_.addEventListener("mouseOver",this.__newImprovementGroup_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__newImprovementGroup_mouseOut);
         _loc1_.id = "newImprovementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newImprovementGroup = _loc1_;
         BindingManager.executeBindings(this,"newImprovementGroup",this.newImprovementGroup);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_cardboard_small";
         _loc1_.id = "newImprovementBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newImprovementBackground = _loc1_;
         BindingManager.executeBindings(this,"newImprovementBackground",this.newImprovementBackground);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 118;
         _loc1_.width = 118;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "newImprovement";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newImprovement = _loc1_;
         BindingManager.executeBindings(this,"newImprovement",this.newImprovement);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.left = 3;
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.id = "newImprovementBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newImprovementBadge = _loc1_;
         BindingManager.executeBindings(this,"newImprovementBadge",this.newImprovementBadge);
         return _loc1_;
      }
      
      public function __newImprovementGroup_mouseOver(param1:MouseEvent) : void
      {
         this.handleImprovementOver(param1);
      }
      
      public function __newImprovementGroup_mouseOut(param1:MouseEvent) : void
      {
         this.handleImprovementOut(param1);
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_MultistateButton1_i(),this._ImprovementReplacementMiniLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__leftButton_click);
         _loc1_.id = "leftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftButton = _loc1_;
         BindingManager.executeBindings(this,"leftButton",this.leftButton);
         return _loc1_;
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         this.handleLeftButtonAction();
      }
      
      private function _ImprovementReplacementMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_check";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.styleName = "confirm";
         _loc1_.addEventListener("click",this.__replaceButton_click);
         _loc1_.id = "replaceButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.replaceButton = _loc1_;
         BindingManager.executeBindings(this,"replaceButton",this.replaceButton);
         return _loc1_;
      }
      
      public function __replaceButton_click(param1:MouseEvent) : void
      {
         this.handleReplace();
      }
      
      private function _ImprovementReplacementMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 74;
         _loc1_.top = 65;
         _loc1_.right = 80;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return ImprovementReplacementMiniLayerMediator.LINE_ID_0;
         },null,"uiInfolayerAlignmentLine.lineId");
         return result;
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
      public function get leftButton() : MultistateButton
      {
         return this._1632457241leftButton;
      }
      
      public function set leftButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1632457241leftButton;
         if(_loc2_ !== param1)
         {
            this._1632457241leftButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovement() : BriskImageDynaLib
      {
         return this._305571606newImprovement;
      }
      
      public function set newImprovement(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._305571606newImprovement;
         if(_loc2_ !== param1)
         {
            this._305571606newImprovement = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovement",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementBackground() : BriskImageDynaLib
      {
         return this._1784902884newImprovementBackground;
      }
      
      public function set newImprovementBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1784902884newImprovementBackground;
         if(_loc2_ !== param1)
         {
            this._1784902884newImprovementBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementBadge() : BriskImageDynaLib
      {
         return this._36962861newImprovementBadge;
      }
      
      public function set newImprovementBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._36962861newImprovementBadge;
         if(_loc2_ !== param1)
         {
            this._36962861newImprovementBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementGroup() : Group
      {
         return this._42097929newImprovementGroup;
      }
      
      public function set newImprovementGroup(param1:Group) : void
      {
         var _loc2_:Object = this._42097929newImprovementGroup;
         if(_loc2_ !== param1)
         {
            this._42097929newImprovementGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldImprovement() : BriskImageDynaLib
      {
         return this._411412433oldImprovement;
      }
      
      public function set oldImprovement(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._411412433oldImprovement;
         if(_loc2_ !== param1)
         {
            this._411412433oldImprovement = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovement",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldImprovementBackground() : BriskImageDynaLib
      {
         return this._1909676733oldImprovementBackground;
      }
      
      public function set oldImprovementBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1909676733oldImprovementBackground;
         if(_loc2_ !== param1)
         {
            this._1909676733oldImprovementBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldImprovementBadge() : BriskImageDynaLib
      {
         return this._859838644oldImprovementBadge;
      }
      
      public function set oldImprovementBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._859838644oldImprovementBadge;
         if(_loc2_ !== param1)
         {
            this._859838644oldImprovementBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldImprovementGroup() : Group
      {
         return this._864973712oldImprovementGroup;
      }
      
      public function set oldImprovementGroup(param1:Group) : void
      {
         var _loc2_:Object = this._864973712oldImprovementGroup;
         if(_loc2_ !== param1)
         {
            this._864973712oldImprovementGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get replaceButton() : MultistateButton
      {
         return this._580382470replaceButton;
      }
      
      public function set replaceButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._580382470replaceButton;
         if(_loc2_ !== param1)
         {
            this._580382470replaceButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"replaceButton",_loc2_,param1));
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

