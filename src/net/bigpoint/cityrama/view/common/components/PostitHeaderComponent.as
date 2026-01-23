package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.VGroup;
   
   public class PostitHeaderComponent extends VGroup
   {
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _2094719709forcedstyleName:String = null;
      
      private var _dirty:Boolean = false;
      
      public function PostitHeaderComponent()
      {
         super();
         mx_internal::_document = this;
         this.horizontalAlign = "center";
         this.verticalAlign = "middle";
         this.gap = 0;
         this.percentWidth = 100;
         this.mxmlContent = [this._PostitHeaderComponent_LocaLabel1_i(),this._PostitHeaderComponent_BriskImageDynaLib1_i()];
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
         if(param1 != null)
         {
            this._dirty = true;
            this.textLabel.text = param1;
            if(this.forcedstyleName)
            {
               this.textLabel.styleName = this.forcedstyleName;
            }
            if(param1.length > 17)
            {
               if(this.textLabel.styleName != "postitHeaderSmall")
               {
                  this.textLabel.styleName = "postitHeaderSmall";
               }
            }
         }
      }
      
      private function _PostitHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "postitHeader";
         _loc1_.maxHeight = 30;
         _loc1_.percentWidth = 100;
         _loc1_.id = "textLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textLabel = _loc1_;
         BindingManager.executeBindings(this,"textLabel",this.textLabel);
         return _loc1_;
      }
      
      private function _PostitHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      [Bindable(event="propertyChange")]
      public function get forcedstyleName() : String
      {
         return this._2094719709forcedstyleName;
      }
      
      public function set forcedstyleName(param1:String) : void
      {
         var _loc2_:Object = this._2094719709forcedstyleName;
         if(_loc2_ !== param1)
         {
            this._2094719709forcedstyleName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forcedstyleName",_loc2_,param1));
            }
         }
      }
   }
}

