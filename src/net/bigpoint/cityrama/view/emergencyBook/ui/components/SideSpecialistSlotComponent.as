package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class SideSpecialistSlotComponent extends Group
   {
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1420004117emptySlot:Group;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _3387378note:StickyNoteComponent;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _1042337429requiredLabel:LocaLabel;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideSpecialistSlotComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 137;
         this.mxmlContent = [this._SideSpecialistSlotComponent_Group2_i(),this._SideSpecialistSlotComponent_Group3_i()];
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
      
      public function set data(param1:ProfessionalSlotVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as ProfessionalSlotVo;
            this._dataIsDirty = true;
            invalidateProperties();
            validateNow();
         }
      }
      
      public function get professionalId() : Number
      {
         return this._data != null ? this._data.professionalId : 0;
      }
      
      public function enableNameDisplay(param1:Boolean) : void
      {
         this.nameDisplay.visible = param1;
         this.nameDisplay.includeInLayout = param1;
         this.note.visible = param1;
         this.note.includeInLayout = param1;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.emptySlot.visible = this.emptySlot.includeInLayout = this._data.empty;
            this.filledSlot.visible = this.filledSlot.includeInLayout = !this._data.empty;
            if(this._data.empty)
            {
               this.serviceImage.dynaBmpSourceName = this._data.reqSpecialisationGfxId.toString();
               var _loc1_:String = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGrade"));
               switch(this._data.reqDepartment)
               {
                  case ServerTagConstants.FIRE_DEPARTMENT:
                     var _loc2_:String = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameFirefighting"));
                     break;
                  case ServerTagConstants.HOSPITAL:
                     _loc2_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameMedical"));
                     break;
                  case ServerTagConstants.POLICE_DEPARTMENT:
                     _loc2_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameCrime"));
               }
               _loc1_ = null.replace("{0}",null);
               _loc1_ = null.replace("{1}",this._data.reqSpecialisationrank.toString());
               this.requiredLabel.text = null;
            }
            else
            {
               this.profImage.dynaLibName = this._data.profLib;
               this.profImage.dynaBmpSourceName = this._data.profImage;
               this.nameDisplay.text = this._data.name;
               this.badgeImage.dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
               var _loc3_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.profSpecialisationLocaId.toString());
               this.badgeImage.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.specialization" + ""),null);
            }
         }
      }
      
      private function _SideSpecialistSlotComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_VGroup1_c()];
         _loc1_.id = "emptySlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emptySlot = _loc1_;
         BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -5;
         _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_StickyNoteComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeTop = true;
         _loc1_.percentWidth = 100;
         _loc1_.height = 140;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SideSpecialistSlotComponent_Array4_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Array4_c() : Array
      {
         return [this._SideSpecialistSlotComponent_VGroup2_c()];
      }
      
      private function _SideSpecialistSlotComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_BriskImageDynaLib1_i(),this._SideSpecialistSlotComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "big_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.id = "serviceImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.serviceImage = _loc1_;
         BindingManager.executeBindings(this,"serviceImage",this.serviceImage);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "requiredSpecialistSlot";
         _loc1_.text = "DEV: Required Firefighter level 3";
         _loc1_.id = "requiredLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.requiredLabel = _loc1_;
         BindingManager.executeBindings(this,"requiredLabel",this.requiredLabel);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_StickyNoteComponent2_i(),this._SideSpecialistSlotComponent_Group4_c()];
         _loc1_.id = "filledSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filledSlot = _loc1_;
         BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 93;
         _loc1_.height = 60;
         _loc1_.top = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SideSpecialistSlotComponent_Array7_c);
         _loc1_.id = "note";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.note = _loc1_;
         BindingManager.executeBindings(this,"note",this.note);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Array7_c() : Array
      {
         return [this._SideSpecialistSlotComponent_LocaLabel2_i()];
      }
      
      private function _SideSpecialistSlotComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "specialistSlotName";
         _loc1_.id = "nameDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameDisplay = _loc1_;
         BindingManager.executeBindings(this,"nameDisplay",this.nameDisplay);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 121;
         _loc1_.height = 120;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_BriskImageDynaLib2_i(),this._SideSpecialistSlotComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "polaroid_friend";
         _loc1_.id = "profImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.profImage = _loc1_;
         BindingManager.executeBindings(this,"profImage",this.profImage);
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "diagonal_badges";
         _loc1_.top = 0;
         _loc1_.left = -20;
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.dynaBmpSourceName = "";
         _loc1_.id = "badgeImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badgeImage = _loc1_;
         BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1060367224badgeImage;
         if(_loc2_ !== param1)
         {
            this._1060367224badgeImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlot() : Group
      {
         return this._1420004117emptySlot;
      }
      
      public function set emptySlot(param1:Group) : void
      {
         var _loc2_:Object = this._1420004117emptySlot;
         if(_loc2_ !== param1)
         {
            this._1420004117emptySlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get filledSlot() : Group
      {
         return this._76117376filledSlot;
      }
      
      public function set filledSlot(param1:Group) : void
      {
         var _loc2_:Object = this._76117376filledSlot;
         if(_loc2_ !== param1)
         {
            this._76117376filledSlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filledSlot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameDisplay() : LocaLabel
      {
         return this._1844466615nameDisplay;
      }
      
      public function set nameDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1844466615nameDisplay;
         if(_loc2_ !== param1)
         {
            this._1844466615nameDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get note() : StickyNoteComponent
      {
         return this._3387378note;
      }
      
      public function set note(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._3387378note;
         if(_loc2_ !== param1)
         {
            this._3387378note = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"note",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get profImage() : BriskImageDynaLib
      {
         return this._1034926718profImage;
      }
      
      public function set profImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1034926718profImage;
         if(_loc2_ !== param1)
         {
            this._1034926718profImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredLabel() : LocaLabel
      {
         return this._1042337429requiredLabel;
      }
      
      public function set requiredLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1042337429requiredLabel;
         if(_loc2_ !== param1)
         {
            this._1042337429requiredLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serviceImage() : BriskImageDynaLib
      {
         return this._339532710serviceImage;
      }
      
      public function set serviceImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._339532710serviceImage;
         if(_loc2_ !== param1)
         {
            this._339532710serviceImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serviceImage",_loc2_,param1));
            }
         }
      }
   }
}

