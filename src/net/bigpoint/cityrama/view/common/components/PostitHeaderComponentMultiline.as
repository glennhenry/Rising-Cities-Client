package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.VGroup;
   
   public class PostitHeaderComponentMultiline extends VGroup
   {
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PostitHeaderComponentMultiline()
      {
         super();
         mx_internal::_document = this;
         this.horizontalAlign = "center";
         this.verticalAlign = "middle";
         this.gap = 3;
         this.percentWidth = 100;
         this.mxmlContent = [this._PostitHeaderComponentMultiline_LocaLabel1_i(),this._PostitHeaderComponentMultiline_BriskImageDynaLib1_i()];
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
      
      public function set text(param1:String) : void
      {
         this.textLabel.text = param1;
         if(param1.length > 17)
         {
            if(this.textLabel.styleName != "postitHeaderSmallMultiLine")
            {
               this.textLabel.styleName = "postitHeaderSmallMultiLine";
            }
         }
      }
      
      private function _PostitHeaderComponentMultiline_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "postitHeader";
         _loc1_.maxWidth = 195;
         _loc1_.percentHeight = 100;
         _loc1_.id = "textLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textLabel = _loc1_;
         BindingManager.executeBindings(this,"textLabel",this.textLabel);
         return _loc1_;
      }
      
      private function _PostitHeaderComponentMultiline_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "head_line";
         _loc1_.id = "line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.line = _loc1_;
         BindingManager.executeBindings(this,"line",this.line);
         return _loc1_;
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
   }
}

