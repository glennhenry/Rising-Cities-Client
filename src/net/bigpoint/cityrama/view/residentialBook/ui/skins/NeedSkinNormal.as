package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.skins.SparkSkin;
   
   public class NeedSkinNormal extends SparkSkin implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinNormal()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._NeedSkinNormal_BriskImageDynaLib1_c(),this._NeedSkinNormal_BriskImageDynaLib2_c(),this._NeedSkinNormal_BriskImageDynaLib3_i(),this._NeedSkinNormal_BriskImageDynaLib4_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___NeedSkinNormal_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         this.setIconData();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.setIconData();
         this.icon.addEventListener(BriskImageDynaLibEvent.LOAD_COMPLETE,this.onLoadComplete);
      }
      
      private function setIconData() : void
      {
         var _loc1_:ResidentialNeedVo = null;
         var _loc2_:ProductionNeedVo = null;
         if(this.hostComponent.data is ResidentialNeedVo)
         {
            _loc1_ = this.hostComponent.data as ResidentialNeedVo;
            if(_loc1_ != null)
            {
               this.icon.dynaLibName = _loc1_.assetLibName;
               this.icon.dynaBmpSourceName = _loc1_.assetImageName;
            }
         }
         else if(this.hostComponent.data is ProductionNeedVo)
         {
            _loc2_ = this.hostComponent.data as ProductionNeedVo;
            if(_loc2_ != null)
            {
               this.icon.dynaSWFFileName = _loc2_.assetSWFName;
               this.icon.dynaLibName = _loc2_.assetLibName;
               this.icon.dynaBmpSourceName = _loc2_.assetImageName;
            }
         }
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.icon.invalidateDisplayList();
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "needframe_open";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "needframe_bg_grey";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxWidth = 60;
         _loc1_.maxHeight = 52;
         _loc1_.smoothing = true;
         _loc1_.maintainAspectRation = true;
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_gray";
         _loc1_.top = -3;
         _loc1_.right = -8;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___NeedSkinNormal_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : NeedItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:NeedItemComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

