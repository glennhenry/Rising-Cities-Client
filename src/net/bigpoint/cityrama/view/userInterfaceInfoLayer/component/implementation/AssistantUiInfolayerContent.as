package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AssistantUiInfolayerContentVo;
   import spark.components.VGroup;
   
   public class AssistantUiInfolayerContent extends AbstractUIInfolayerComponent
   {
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      private var _178889435infotext:LocaLabel;
      
      private var _500208440timerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:AssistantUiInfolayerContentVo;
      
      public function AssistantUiInfolayerContent()
      {
         super();
         mx_internal::_document = this;
         this.maxWidth = 230;
         this.width = 230;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AssistantUiInfolayerContent_Array1_c);
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
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         if(param1 is AbstractUIInfolayerContentVo)
         {
            this._implementationData = param1 as AssistantUiInfolayerContentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong Vo for this component use AssistantUiInfolayerContentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._implementationData) && _dirty)
         {
            this.infotext.text = this._implementationData.infoText;
            this.timerComponent.data = this._implementationData.runtimeVo;
            var _temp_2:* = headerIcon;
            headerIcon.visible = false;
            _temp_2.includeInLayout = false;
         }
         super.commitProperties();
      }
      
      private function _AssistantUiInfolayerContent_Array1_c() : Array
      {
         return [this._AssistantUiInfolayerContent_VGroup1_c()];
      }
      
      private function _AssistantUiInfolayerContent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._AssistantUiInfolayerContent_LocaLabel1_i(),this._AssistantUiInfolayerContent_BriskImageDynaLib1_c(),this._AssistantUiInfolayerContent_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _AssistantUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         _loc1_.id = "infotext";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infotext = _loc1_;
         BindingManager.executeBindings(this,"infotext",this.infotext);
         return _loc1_;
      }
      
      private function _AssistantUiInfolayerContent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.percentWidth = 90;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _AssistantUiInfolayerContent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.activeTimer = false;
         _loc1_.percentWidth = 90;
         _loc1_.id = "timerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerComponent = _loc1_;
         BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get infotext() : LocaLabel
      {
         return this._178889435infotext;
      }
      
      public function set infotext(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._178889435infotext;
         if(_loc2_ !== param1)
         {
            this._178889435infotext = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infotext",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : TimerBarComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc2_ !== param1)
         {
            this._500208440timerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
            }
         }
      }
   }
}

