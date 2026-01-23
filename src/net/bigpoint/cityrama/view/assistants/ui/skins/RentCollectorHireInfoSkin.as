package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class RentCollectorHireInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _231206217attentionIcon:BriskImageDynaLib;
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorHireInfoSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 250;
         this.minHeight = 90;
         this.mxmlContent = [this._RentCollectorHireInfoSkin_Group1_c()];
         this.currentState = "normal";
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
      
      private function _RentCollectorHireInfoSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorHireInfoSkin_HGroup1_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib4_i(),this._RentCollectorHireInfoSkin_BriskImageDynaLib5_i(),this._RentCollectorHireInfoSkin_HGroup2_c(),this._RentCollectorHireInfoSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.id = "bubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubble = _loc1_;
         BindingManager.executeBindings(this,"bubble",this.bubble);
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 9;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_BriskImageDynaLib1_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib2_c(),this._RentCollectorHireInfoSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.left = -8;
         _loc1_.top = -10;
         _loc1_.id = "attentionIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attentionIcon = _loc1_;
         BindingManager.executeBindings(this,"attentionIcon",this.attentionIcon);
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_sale";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.left = -25;
         _loc1_.top = -10;
         _loc1_.id = "saleIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleIcon = _loc1_;
         BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 5;
         _loc1_.top = 11;
         _loc1_.right = 10;
         _loc1_.height = 30;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventName";
         _loc1_.maxWidth = 170;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = 45;
         _loc1_.minHeight = 30;
         _loc1_.mxmlContent = [this._RentCollectorHireInfoSkin_LocaLabel2_i(),this._RentCollectorHireInfoSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 60;
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "infoText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoText = _loc1_;
         BindingManager.executeBindings(this,"infoText",this.infoText);
         return _loc1_;
      }
      
      private function _RentCollectorHireInfoSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionIcon() : BriskImageDynaLib
      {
         return this._231206217attentionIcon;
      }
      
      public function set attentionIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._231206217attentionIcon;
         if(_loc2_ !== param1)
         {
            this._231206217attentionIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _loc2_:Object = this._1378241396bubble;
         if(_loc2_ !== param1)
         {
            this._1378241396bubble = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._177936123infoText;
         if(_loc2_ !== param1)
         {
            this._177936123infoText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1935734112saleIcon;
         if(_loc2_ !== param1)
         {
            this._1935734112saleIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
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

