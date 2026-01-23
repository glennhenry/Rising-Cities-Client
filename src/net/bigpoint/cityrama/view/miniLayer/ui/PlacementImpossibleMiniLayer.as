package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class PlacementImpossibleMiniLayer extends MiniLayerWindow
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
      
      private var _1446441988acceptNoPlacement:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PlacementImpossibleMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PlacementImpossibleMiniLayer_Array1_c);
         this.addEventListener("addedToStage",this.___PlacementImpossibleMiniLayer_MiniLayerWindow1_addedToStage);
         this.addEventListener("creationComplete",this.___PlacementImpossibleMiniLayer_MiniLayerWindow1_creationComplete);
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
      
      private function handleAddedPlace() : void
      {
         this.title = LocaUtils.getString("rcl.miniLayer.placement","rcl.miniLayer.placement.title");
      }
      
      private function handleCreationCompletePlace(param1:FlexEvent) : void
      {
         this.acceptNoPlacement.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.button"));
         this.acceptNoPlacement.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.placement.button"));
      }
      
      private function _PlacementImpossibleMiniLayer_Array1_c() : Array
      {
         return [this._PlacementImpossibleMiniLayer_VGroup1_i()];
      }
      
      private function _PlacementImpossibleMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 45;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PlacementImpossibleMiniLayer_LocaLabel1_i(),this._PlacementImpossibleMiniLayer_BriskImageDynaLib1_i(),this._PlacementImpossibleMiniLayer_Group1_c(),this._PlacementImpossibleMiniLayer_MultistateButton1_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _PlacementImpossibleMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 66;
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _PlacementImpossibleMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "head_line_long";
         _loc1_.id = "line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.line = _loc1_;
         BindingManager.executeBindings(this,"line",this.line);
         return _loc1_;
      }
      
      private function _PlacementImpossibleMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 28;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlacementImpossibleMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_attention";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.id = "acceptNoPlacement";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptNoPlacement = _loc1_;
         BindingManager.executeBindings(this,"acceptNoPlacement",this.acceptNoPlacement);
         return _loc1_;
      }
      
      public function ___PlacementImpossibleMiniLayer_MiniLayerWindow1_addedToStage(param1:Event) : void
      {
         this.handleAddedPlace();
      }
      
      public function ___PlacementImpossibleMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationCompletePlace(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptNoPlacement() : MultistateButton
      {
         return this._1446441988acceptNoPlacement;
      }
      
      public function set acceptNoPlacement(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1446441988acceptNoPlacement;
         if(_loc2_ !== param1)
         {
            this._1446441988acceptNoPlacement = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptNoPlacement",_loc2_,param1));
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
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3321844line;
         if(_loc2_ !== param1)
         {
            this._3321844line = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
   }
}

