package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CategoryMenuListItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _908477250_CategoryMenuListItemRenderer_BlueBarComponent1:BlueBarComponent;
      
      private var _425901719categoryIcon:BriskImageDynaLib;
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CategoryMenuListVo;
      
      private var _isDirty:Boolean;
      
      private var _currentState:String;
      
      public function CategoryMenuListItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._CategoryMenuListItemRenderer_VGroup1_c()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___CategoryMenuListItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___CategoryMenuListItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"categoryLabel",
               "name":"styleName",
               "value":"professionalCharacteristicsLabel"
            })]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"categoryLabel",
               "name":"styleName",
               "value":"departmentSecurityLabel"
            })]
         }),new State({
            "name":"overAndSelected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"categoryLabel",
               "name":"styleName",
               "value":"departmentSecurityLabel"
            })]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"categoryLabel",
               "name":"styleName",
               "value":"departmentSecurityLabel"
            })]
         }),new State({
            "name":"inactive",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"categoryLabel",
               "name":"styleName",
               "value":"disabledLabel"
            })]
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            var _temp_2:* = this;
            this.mouseChildren = true;
            _temp_2.mouseEnabled = true;
            this.categoryLabel.text = this._data.categoryName;
            this.categoryIcon.briskDynaVo = this._data.categoryIcon;
            if(this._data.disabled)
            {
               var _temp_3:* = this;
               var _loc1_:Boolean;
               this.mouseChildren = _loc1_ = false;
               _temp_3.mouseEnabled = true;
               this.categoryIcon.dynaLibName = "gui_popups_goodRebuyPopup";
               this.categoryIcon.dynaBmpSourceName = "locked_category_icon";
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as CategoryMenuListVo;
            this._isDirty = true;
            this.determineCurrentState();
            invalidateProperties();
         }
      }
      
      private function determineCurrentState() : void
      {
         if(this._data)
         {
            if(this._data.disabled)
            {
               this.setCurrentState("inactive");
            }
            else if(!selected)
            {
               this.setCurrentState("normal");
            }
            else
            {
               this.setCurrentState("selected");
            }
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(this._currentState != "inactive")
         {
            if(param1)
            {
               if(this.getCurrentRendererState() == "over")
               {
                  this._currentState = "overAndSelected";
               }
               else if(this.getCurrentRendererState() == "normal")
               {
                  this._currentState = "selected";
               }
            }
            else if(this.getCurrentRendererState() == "overAndSelected")
            {
               this._currentState = "over";
            }
            else
            {
               this._currentState = "normal";
            }
         }
         else
         {
            this._currentState = "overAndSelected";
         }
         super.selected = param1;
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         this._currentState = param1;
         super.setCurrentState(param1,param2);
      }
      
      override protected function getCurrentRendererState() : String
      {
         if(this._currentState != "")
         {
            return this._currentState;
         }
         return super.getCurrentRendererState();
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         this.setCurrentState("over",false);
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         if(!selected)
         {
            this.setCurrentState("normal",false);
         }
      }
      
      private function _CategoryMenuListItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.paddingRight = 2;
         _loc1_.paddingLeft = 0;
         _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_Group1_c(),this._CategoryMenuListItemRenderer_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_BlueBarComponent1_i(),this._CategoryMenuListItemRenderer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_BlueBarComponent1_i() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_CategoryMenuListItemRenderer_BlueBarComponent1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CategoryMenuListItemRenderer_BlueBarComponent1 = _loc1_;
         BindingManager.executeBindings(this,"_CategoryMenuListItemRenderer_BlueBarComponent1",this._CategoryMenuListItemRenderer_BlueBarComponent1);
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_HGroup2_c(),this._CategoryMenuListItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 32;
         _loc1_.maxWidth = 32;
         _loc1_.height = 27;
         _loc1_.maxHeight = 27;
         _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.id = "categoryIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryIcon = _loc1_;
         BindingManager.executeBindings(this,"categoryIcon",this.categoryIcon);
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.minWidth = 1;
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.setStyle("lineBreak","toFit");
         _loc1_.id = "categoryLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryLabel = _loc1_;
         BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "scalable_greyline";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___CategoryMenuListItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function ___CategoryMenuListItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get _CategoryMenuListItemRenderer_BlueBarComponent1() : BlueBarComponent
      {
         return this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1;
      }
      
      public function set _CategoryMenuListItemRenderer_BlueBarComponent1(param1:BlueBarComponent) : void
      {
         var _loc2_:Object = this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1;
         if(_loc2_ !== param1)
         {
            this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CategoryMenuListItemRenderer_BlueBarComponent1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryIcon() : BriskImageDynaLib
      {
         return this._425901719categoryIcon;
      }
      
      public function set categoryIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._425901719categoryIcon;
         if(_loc2_ !== param1)
         {
            this._425901719categoryIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._320749718categoryLabel;
         if(_loc2_ !== param1)
         {
            this._320749718categoryLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
            }
         }
      }
   }
}

