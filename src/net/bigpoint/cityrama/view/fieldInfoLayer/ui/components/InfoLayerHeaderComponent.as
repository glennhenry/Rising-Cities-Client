package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerHeaderVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class InfoLayerHeaderComponent extends Group implements IStateClient2
   {
      
      private var _15876775blueBar:BlueBarComponent;
      
      private var _1161933810headerGroup:Group;
      
      private var _1664780950layerIcon:BriskImageDynaLib;
      
      private var _58259577layerTitle:LocaLabel;
      
      private var _909318622statusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FieldInfoLayerHeaderVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _titleLengthSet:Boolean;
      
      private var _iconSizeSet:Boolean;
      
      public function InfoLayerHeaderComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.mxmlContent = [this._InfoLayerHeaderComponent_VGroup1_c(),this._InfoLayerHeaderComponent_BriskImageDynaLib1_i()];
         this.currentState = "normal";
         this.addEventListener("removedFromStage",this.___InfoLayerHeaderComponent_Group1_removedFromStage);
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
      
      public function set data(param1:FieldInfoLayerHeaderVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this._titleLengthSet = false;
            this._iconSizeSet = false;
            if(this._data.preHeaderText)
            {
               this.statusLabel.text = this._data.preHeaderText;
               this.statusLabel.includeInLayout = true;
               this.statusLabel.visible = true;
            }
            else
            {
               this.statusLabel.includeInLayout = false;
               this.statusLabel.visible = false;
            }
            this.layerTitle.text = this._data.headerText;
            this.layerTitle.addEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
            this.layerIcon.left = -5;
            this.layerIcon.visible = false;
            this.layerIcon.dynaBmpSourceName = this._data.icon_dynaBmpSourceName;
            this.layerIcon.dynaLibName = this._data.icon_dynaLibName;
            this.layerIcon.addEventListener(BriskImageDynaLibEvent.SIZE_CHANGED,this.layerIconSizeSet);
         }
      }
      
      private function layerTitleLengthSet(param1:FlexEvent) : void
      {
         if(this.layerTitle.width > 0)
         {
            this.layerTitle.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
            this._titleLengthSet = true;
         }
         if(this._titleLengthSet && this._iconSizeSet)
         {
            this.checkForIconReposition();
         }
      }
      
      private function layerIconSizeSet(param1:BriskImageDynaLibEvent) : void
      {
         if(this.layerIcon.width > 0)
         {
            this.layerIcon.removeEventListener(BriskImageDynaLibEvent.SIZE_CHANGED,this.layerIconSizeSet);
            this._iconSizeSet = true;
         }
         if(this._titleLengthSet && this._iconSizeSet)
         {
            this.checkForIconReposition();
         }
      }
      
      private function checkForIconReposition() : void
      {
         var _loc1_:Number = NaN;
         if(this.layerTitle.x <= this.layerIcon.x + this.layerIcon.width)
         {
            this.layerIcon.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
            _loc1_ = this.layerTitle.x - Math.round(this.layerIcon.width >> 1) - 10;
            this.layerIcon.left = Math.min(this.layerIcon.left + _loc1_,this.layerIcon.x);
         }
         else
         {
            this.layerIcon.visible = true;
         }
      }
      
      private function handleIconRepositioned(param1:FlexEvent) : void
      {
         this.layerIcon.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
         this.layerIcon.visible = true;
      }
      
      private function handleRemoved() : void
      {
         if(this.layerIcon)
         {
            this.layerIcon.removeEventListener(BriskImageDynaLibEvent.SIZE_CHANGED,this.layerIconSizeSet);
            this.layerIcon.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
         }
         if(this.layerTitle)
         {
            this.layerTitle.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return this.headerGroup.measuredHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.headerGroup.measuredWidth;
      }
      
      private function _InfoLayerHeaderComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 227;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_VGroup2_c()];
         _loc1_.id = "headerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerGroup = _loc1_;
         BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 10;
         _loc1_.right = 10;
         _loc1_.bottom = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_LocaLabel1_i(),this._InfoLayerHeaderComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 180;
         _loc1_.styleName = "infoLayerStatus";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "statusLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statusLabel = _loc1_;
         BindingManager.executeBindings(this,"statusLabel",this.statusLabel);
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_BlueBarComponent1_i(),this._InfoLayerHeaderComponent_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_BlueBarComponent1_i() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.id = "blueBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blueBar = _loc1_;
         BindingManager.executeBindings(this,"blueBar",this.blueBar);
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 25;
         _loc1_.top = 5;
         _loc1_.left = 5;
         _loc1_.right = 5;
         _loc1_.bottom = 5;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 150;
         _loc1_.styleName = "infoLayerTitle";
         _loc1_.id = "layerTitle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerTitle = _loc1_;
         BindingManager.executeBindings(this,"layerTitle",this.layerTitle);
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = -5;
         _loc1_.bottom = -5;
         _loc1_.id = "layerIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerIcon = _loc1_;
         BindingManager.executeBindings(this,"layerIcon",this.layerIcon);
         return _loc1_;
      }
      
      public function ___InfoLayerHeaderComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved();
      }
      
      [Bindable(event="propertyChange")]
      public function get blueBar() : BlueBarComponent
      {
         return this._15876775blueBar;
      }
      
      public function set blueBar(param1:BlueBarComponent) : void
      {
         var _loc2_:Object = this._15876775blueBar;
         if(_loc2_ !== param1)
         {
            this._15876775blueBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1161933810headerGroup;
         if(_loc2_ !== param1)
         {
            this._1161933810headerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerIcon() : BriskImageDynaLib
      {
         return this._1664780950layerIcon;
      }
      
      public function set layerIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1664780950layerIcon;
         if(_loc2_ !== param1)
         {
            this._1664780950layerIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerTitle() : LocaLabel
      {
         return this._58259577layerTitle;
      }
      
      public function set layerTitle(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._58259577layerTitle;
         if(_loc2_ !== param1)
         {
            this._58259577layerTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusLabel() : LocaLabel
      {
         return this._909318622statusLabel;
      }
      
      public function set statusLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._909318622statusLabel;
         if(_loc2_ !== param1)
         {
            this._909318622statusLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusLabel",_loc2_,param1));
            }
         }
      }
   }
}

