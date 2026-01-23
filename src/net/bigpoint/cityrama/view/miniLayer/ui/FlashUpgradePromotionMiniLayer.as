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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FlashUpgradePromotionMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1642411238linkLabel:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FlashUpgradePromotionMiniLayer()
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
         bindings = this._FlashUpgradePromotionMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_FlashUpgradePromotionMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FlashUpgradePromotionMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FlashUpgradePromotionMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___FlashUpgradePromotionMiniLayer_MiniLayerWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         FlashUpgradePromotionMiniLayer._watcherSetupUtil = param1;
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
         this.title = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.title.capital");
         this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.flavour");
         this.acceptButton.label = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.closebutton");
         this.linkLabel.text = "http://get.adobe.com/flashplayer/";
      }
      
      private function linkLabel_rollOverHandler(param1:MouseEvent) : void
      {
         this.linkLabel.styleName = "miniLayerLinkTextOver";
      }
      
      private function linkLabel_rollOutHandler(param1:MouseEvent) : void
      {
         this.linkLabel.styleName = "miniLayerLinkText";
      }
      
      private function _FlashUpgradePromotionMiniLayer_Array1_c() : Array
      {
         return [this._FlashUpgradePromotionMiniLayer_HGroup1_c()];
      }
      
      private function _FlashUpgradePromotionMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 20;
         _loc1_.paddingLeft = 10;
         _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_Group1_c(),this._FlashUpgradePromotionMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 30;
         _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1_i(),this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = -1;
         _loc1_.verticalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 258;
         _loc1_.height = 213;
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3_i(),this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4_i(),this._FlashUpgradePromotionMiniLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = -10;
         _loc1_.top = -10;
         _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 258;
         _loc1_.paddingTop = 55;
         _loc1_.paddingLeft = 10;
         _loc1_.gap = 10;
         _loc1_.paddingRight = 10;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_LocaLabel1_i(),this._FlashUpgradePromotionMiniLayer_LocaLabel2_i(),this._FlashUpgradePromotionMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerLinkText";
         _loc1_.addEventListener("rollOver",this.__linkLabel_rollOver);
         _loc1_.addEventListener("rollOut",this.__linkLabel_rollOut);
         _loc1_.id = "linkLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.linkLabel = _loc1_;
         BindingManager.executeBindings(this,"linkLabel",this.linkLabel);
         return _loc1_;
      }
      
      public function __linkLabel_rollOver(param1:MouseEvent) : void
      {
         this.linkLabel_rollOverHandler(param1);
      }
      
      public function __linkLabel_rollOut(param1:MouseEvent) : void
      {
         this.linkLabel_rollOutHandler(param1);
      }
      
      private function _FlashUpgradePromotionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 210;
         _loc1_.id = "acceptButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButton = _loc1_;
         BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
         return _loc1_;
      }
      
      public function ___FlashUpgradePromotionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _FlashUpgradePromotionMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo(BriskDynaVo.LIB_QUEST,"quest_polaroidframe");
         },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1.briskDynaVo");
         result[1] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo(BriskDynaVo.LIB_QUEST,"quest_polaroid_reward");
         },null,"polaroidImage.briskDynaVo");
         result[2] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo(BriskDynaVo.LIB_RESIDENTIAL_NEW,"quadrille_paper_small");
         },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3.briskDynaVo");
         result[3] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo(BriskDynaVo.LIB_FIELD_INFOLAYER,"infolayer_icon_attention");
         },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4.briskDynaVo");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
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
      public function get linkLabel() : LocaLabel
      {
         return this._1642411238linkLabel;
      }
      
      public function set linkLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1642411238linkLabel;
         if(_loc2_ !== param1)
         {
            this._1642411238linkLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc2_ !== param1)
         {
            this._2112922897polaroidImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
            }
         }
      }
   }
}

