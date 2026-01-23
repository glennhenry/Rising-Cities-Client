package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class NoPermissionsLeftMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _3242771item:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _dataDirty:Boolean;
      
      public function NoPermissionsLeftMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NoPermissionsLeftMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___NoPermissionsLeftMiniLayer_MiniLayerWindow1_creationComplete);
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
         this.title = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.title");
         this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.flavour");
         this.buyButton.toolTip = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.button.ok.tooltip");
      }
      
      public function set data(param1:BlueprintVo) : void
      {
         this._data = param1;
         this._dataDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty && Boolean(this._data))
         {
            this._dataDirty = false;
            this.item.data = this._data;
            this.buyButton.label = LocaUtils.getThousendSeperatedNumber(this._data.price);
            this.buyButton.priceToConfirm = this._data.price;
            this.buyButton.showPlus = !this._data.userCanAfford;
            this.buyButton.showSparkle = this._data.userCanAfford;
         }
      }
      
      private function _NoPermissionsLeftMiniLayer_Array1_c() : Array
      {
         return [this._NoPermissionsLeftMiniLayer_VGroup1_c()];
      }
      
      private function _NoPermissionsLeftMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 10;
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_HGroup1_c(),this._NoPermissionsLeftMiniLayer_Group1_c(),this._NoPermissionsLeftMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 400;
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 120;
         _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_GridItemComponent1_i(),this._NoPermissionsLeftMiniLayer_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_GridItemComponent1_i() : GridItemComponent
      {
         var _loc1_:GridItemComponent = new GridItemComponent();
         _loc1_.showPrice = false;
         _loc1_.showInfoIcon = false;
         _loc1_.showStickyTape = false;
         _loc1_.id = "item";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.item = _loc1_;
         BindingManager.executeBindings(this,"item",this.item);
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 0;
         _loc1_.left = -15;
         _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 200;
         _loc1_.useConfirmation = true;
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.imageNameRight = "dd_button_icon";
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      public function ___NoPermissionsLeftMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : MultistateButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc2_ !== param1)
         {
            this._1271589544buyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
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
      public function get item() : GridItemComponent
      {
         return this._3242771item;
      }
      
      public function set item(param1:GridItemComponent) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
            }
         }
      }
   }
}

