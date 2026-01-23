package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DataGridItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const ITEM_SELECTED:String = "itemSelected";
      
      private var _1273130016_DataGridItemRenderer_HGroup1:HGroup;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _1053257947countLabel:LocaLabel;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _865160299professionIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalListInfoVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DataGridItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.autoDrawBackground = false;
         this.height = 33;
         this.mxmlContent = [this._DataGridItemRenderer_HGroup1_i(),this._DataGridItemRenderer_HGroup2_c(),this._DataGridItemRenderer_BriskImageDynaLib6_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_DataGridItemRenderer_HGroup1",
               "name":"visible",
               "value":true
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               this._data = param1 as ProfessionalListInfoVo;
               this._dataIsDirty = true;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Boolean = false;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.professionIcon.dynaBmpSourceName = this._data.specialisationGfxId.toString();
            this.professionIcon.toolTip = LocaUtils.getString("rcl.professions","rcl.professions." + this._data.specialisationLocaId.toString());
            this.nameLabel.text = this._data.name;
            this.countLabel.text = this._data.operationsLeft.toString();
            if(this._data.operationsLeft > 0)
            {
               this.countLabel.styleName = "operationCount";
            }
            else
            {
               addEventListener(MouseEvent.CLICK,this.onOperationLowClick);
               this.countLabel.styleName = "operationCountLow";
            }
            _loc1_ = false;
            if(this._data.requiredDepartment == this._data.department)
            {
               if(this._data.requiredSpecialisationId == this._data.specialisationId || this._data.requiredSpecialisationRank == 1 || this._data.specialisationRank == 3)
               {
                  _loc1_ = true;
               }
            }
            if(_loc1_)
            {
               this.checkMark.dynaBmpSourceName = "checkmark_green_small";
               this.nameLabel.styleName = "specialistNameGreen";
            }
            else
            {
               this.checkMark.dynaBmpSourceName = "checkmark_grey_small";
               this.nameLabel.styleName = "specialistName";
            }
         }
      }
      
      public function get selectedItem() : *
      {
         return this._data;
      }
      
      private function onOperationLowClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(ITEM_SELECTED,true));
      }
      
      private function _DataGridItemRenderer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 99;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.alpha = 0.5;
         _loc1_.visible = false;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._DataGridItemRenderer_BriskImageDynaLib1_c(),this._DataGridItemRenderer_BriskImageDynaLib2_c(),this._DataGridItemRenderer_BriskImageDynaLib3_c()];
         _loc1_.id = "_DataGridItemRenderer_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DataGridItemRenderer_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_DataGridItemRenderer_HGroup1",this._DataGridItemRenderer_HGroup1);
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _DataGridItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _DataGridItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._DataGridItemRenderer_HGroup3_c(),this._DataGridItemRenderer_HGroup4_c(),this._DataGridItemRenderer_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.width = 65;
         _loc1_.mxmlContent = [this._DataGridItemRenderer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "icon_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.id = "professionIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionIcon = _loc1_;
         BindingManager.executeBindings(this,"professionIcon",this.professionIcon);
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._DataGridItemRenderer_LocaLabel1_i(),this._DataGridItemRenderer_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.text = "";
         _loc1_.styleName = "specialistName";
         _loc1_.id = "nameLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameLabel = _loc1_;
         BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "checkmark_green_small";
         _loc1_.id = "checkMark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMark = _loc1_;
         BindingManager.executeBindings(this,"checkMark",this.checkMark);
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DataGridItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.text = "5";
         _loc1_.styleName = "operationCount";
         _loc1_.id = "countLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.countLabel = _loc1_;
         BindingManager.executeBindings(this,"countLabel",this.countLabel);
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_taskline";
         _loc1_.width = 450;
         _loc1_.bottom = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _DataGridItemRenderer_HGroup1() : HGroup
      {
         return this._1273130016_DataGridItemRenderer_HGroup1;
      }
      
      public function set _DataGridItemRenderer_HGroup1(param1:HGroup) : void
      {
         var _loc2_:Object = this._1273130016_DataGridItemRenderer_HGroup1;
         if(_loc2_ !== param1)
         {
            this._1273130016_DataGridItemRenderer_HGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DataGridItemRenderer_HGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._398367733checkMark;
         if(_loc2_ !== param1)
         {
            this._398367733checkMark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get countLabel() : LocaLabel
      {
         return this._1053257947countLabel;
      }
      
      public function set countLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1053257947countLabel;
         if(_loc2_ !== param1)
         {
            this._1053257947countLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"countLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionIcon() : BriskImageDynaLib
      {
         return this._865160299professionIcon;
      }
      
      public function set professionIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._865160299professionIcon;
         if(_loc2_ !== param1)
         {
            this._865160299professionIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionIcon",_loc2_,param1));
            }
         }
      }
   }
}

