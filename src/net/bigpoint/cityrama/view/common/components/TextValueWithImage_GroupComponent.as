package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class TextValueWithImage_GroupComponent extends HGroup
   {
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function TextValueWithImage_GroupComponent()
      {
         super();
         mx_internal::_document = this;
         this.gap = 0;
         this.verticalAlign = "middle";
         this.paddingBottom = 4;
         this.mxmlContent = [this._TextValueWithImage_GroupComponent_LocaLabel1_i(),this._TextValueWithImage_GroupComponent_Group1_c()];
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
      
      private function _TextValueWithImage_GroupComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "fontABlack";
         _loc1_.text = "+ 1112";
         _loc1_.maxWidth = 55;
         _loc1_.minWidth = 55;
         _loc1_.setStyle("paddingTop",6);
         _loc1_.setStyle("color",5726299);
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("fontSize",13);
         _loc1_.id = "textLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textLabel = _loc1_;
         BindingManager.executeBindings(this,"textLabel",this.textLabel);
         return _loc1_;
      }
      
      private function _TextValueWithImage_GroupComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 32;
         _loc1_.height = 28;
         _loc1_.mxmlContent = [this._TextValueWithImage_GroupComponent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TextValueWithImage_GroupComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "dd_button_icon";
         _loc1_.id = "visual";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visual = _loc1_;
         BindingManager.executeBindings(this,"visual",this.visual);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1055687225textLabel;
         if(_loc2_ !== param1)
         {
            this._1055687225textLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._816216256visual;
         if(_loc2_ !== param1)
         {
            this._816216256visual = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
            }
         }
      }
   }
}

