package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class PriceComponent extends Group
   {
      
      private var _2008488570ImageContainer:HGroup;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _1595195676visualOK:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _priceLabel:String;
      
      private var _affordable:Boolean = true;
      
      private var _isDirtyPrice:Boolean;
      
      private var _isDirtyAffordable:Boolean;
      
      private var _currencyType:String;
      
      public function PriceComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._PriceComponent_HGroup1_i()];
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirtyPrice)
         {
            this.textLabel.text = this._priceLabel;
            this._isDirtyPrice = false;
         }
         if(this._isDirtyAffordable)
         {
            if(this._affordable)
            {
               this.visualOK.dynaBmpSourceName = "checkmark_green";
            }
            else
            {
               this.visualOK.dynaBmpSourceName = "checkmark_gray";
            }
            this._isDirtyAffordable = false;
         }
      }
      
      public function set currencyType(param1:String) : void
      {
         if(param1 != this._currencyType)
         {
            this._currencyType = param1;
            switch(param1)
            {
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  this.icon.dynaLibName = "gui_popups_productionPopup_new";
                  this.icon.dynaBmpSourceName = "icon_paper_gloves";
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  this.icon.dynaLibName = "gui_infield_gui_infolayer";
                  this.icon.dynaBmpSourceName = "educationpoint_icon";
                  break;
               default:
                  this.icon.dynaLibName = "gui_popups_paperPopup";
                  this.icon.dynaBmpSourceName = "cc_icon_medium";
            }
         }
      }
      
      public function get currencyType() : String
      {
         return this._currencyType;
      }
      
      public function set priceLabel(param1:String) : void
      {
         if(!RandomUtilities.isEqual(param1,this._priceLabel))
         {
            this._priceLabel = param1;
            this._isDirtyPrice = true;
            invalidateProperties();
         }
      }
      
      public function set affordable(param1:Boolean) : void
      {
         if(!RandomUtilities.isEqual(param1,this._affordable))
         {
            this._affordable = param1;
            this._isDirtyAffordable = true;
            invalidateProperties();
         }
      }
      
      public function get priceLabel() : String
      {
         return this._priceLabel;
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      private function _PriceComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PriceComponent_LocaLabel1_i(),this._PriceComponent_BriskImageDynaLib1_i(),this._PriceComponent_BriskImageDynaLib2_i()];
         _loc1_.id = "ImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ImageContainer = _loc1_;
         BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
         return _loc1_;
      }
      
      private function _PriceComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "postitHeaderAlignRight";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "textLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textLabel = _loc1_;
         BindingManager.executeBindings(this,"textLabel",this.textLabel);
         return _loc1_;
      }
      
      private function _PriceComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "cc_icon_medium";
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _PriceComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.id = "visualOK";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visualOK = _loc1_;
         BindingManager.executeBindings(this,"visualOK",this.visualOK);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : HGroup
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:HGroup) : void
      {
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc2_ !== param1)
         {
            this._2008488570ImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
            }
         }
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
      public function get visualOK() : BriskImageDynaLib
      {
         return this._1595195676visualOK;
      }
      
      public function set visualOK(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1595195676visualOK;
         if(_loc2_ !== param1)
         {
            this._1595195676visualOK = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualOK",_loc2_,param1));
            }
         }
      }
   }
}

