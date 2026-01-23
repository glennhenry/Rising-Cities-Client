package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import spark.components.VGroup;
   
   public class SimpleTextUiInfolayerContent extends AbstractUIInfolayerComponent
   {
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      private var _1031434259textfield:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:SimpleTextUiInfolayerContentVo;
      
      public function SimpleTextUiInfolayerContent()
      {
         super();
         mx_internal::_document = this;
         this.maxWidth = 230;
         this.width = 230;
         this.minWidth = 230;
         this.minHeight = 40;
         this.maxHeight = 800;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SimpleTextUiInfolayerContent_Array1_c);
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
         if(param1 is SimpleTextUiInfolayerContentVo)
         {
            this._implementationData = param1 as SimpleTextUiInfolayerContentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong VBo for this compoent use ImprovementUiInfolayerContentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(_dirty)
         {
            this.textfield.text = this._implementationData.data;
            if(!isNaN(this._implementationData.width))
            {
               width = this._implementationData.width;
            }
            if(this._implementationData.headerIconDynaVo)
            {
               super.headerIcon.briskDynaVo = this._implementationData.headerIconDynaVo;
            }
         }
         super.commitProperties();
      }
      
      private function _SimpleTextUiInfolayerContent_Array1_c() : Array
      {
         return [this._SimpleTextUiInfolayerContent_VGroup1_c()];
      }
      
      private function _SimpleTextUiInfolayerContent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SimpleTextUiInfolayerContent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SimpleTextUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 95;
         _loc1_.percentHeight = 100;
         _loc1_.id = "textfield";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textfield = _loc1_;
         BindingManager.executeBindings(this,"textfield",this.textfield);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get textfield() : LocaLabel
      {
         return this._1031434259textfield;
      }
      
      public function set textfield(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1031434259textfield;
         if(_loc2_ !== param1)
         {
            this._1031434259textfield = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textfield",_loc2_,param1));
            }
         }
      }
   }
}

