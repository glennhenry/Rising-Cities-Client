package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class ConnectionLostMiniLayer extends MiniLayerWindow
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
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ConnectionLostMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConnectionLostMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ConnectionLostMiniLayer_MiniLayerWindow1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         title = LocaUtils.getString("rcl.miniLayer.connectionlost","rcl.miniLayer.connectionlost.title");
         this.flavourText.text = LocaUtils.getString("rcl.miniLayer.connectionlost","rcl.miniLayer.connectionlost.flavour");
      }
      
      private function _ConnectionLostMiniLayer_Array1_c() : Array
      {
         return [this._ConnectionLostMiniLayer_VGroup1_i()];
      }
      
      private function _ConnectionLostMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 2;
         _loc1_.paddingTop = -40;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConnectionLostMiniLayer_Group1_c(),this._ConnectionLostMiniLayer_LocaLabel1_i(),this._ConnectionLostMiniLayer_BriskImageDynaLib1_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ConnectionLostMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConnectionLostMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 360;
         _loc1_.maxHeight = 130;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _ConnectionLostMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "connection_lost_polaroid";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ConnectionLostMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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

