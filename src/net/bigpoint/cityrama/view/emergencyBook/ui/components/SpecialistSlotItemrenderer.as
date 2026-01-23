package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class SpecialistSlotItemrenderer extends ItemRenderer
   {
      
      public static const SPECIALIST_SLOT_CLICKED:String = "SPECIALIST_SLOT_CLICKED";
      
      public static const SPECIALIST_REMOVE_CLICKED:String = "SPECIALIST_REMOVE_CLICKED";
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1420004117emptySlot:Group;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _1339123498removeButton:DynamicImageButton;
      
      private var _1042337429requiredLabel:LocaLabel;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistSlotItemrenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 137;
         this.percentHeight = 100;
         this.mxmlContent = [this._SpecialistSlotItemrenderer_Group1_i(),this._SpecialistSlotItemrenderer_Group3_i()];
         this.addEventListener("click",this.___SpecialistSlotItemrenderer_ItemRenderer1_click);
         this.addEventListener("creationComplete",this.___SpecialistSlotItemrenderer_ItemRenderer1_creationComplete);
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
      
      private function handleClick(param1:Event = null) : void
      {
         if(!this._data || this._data.empty)
         {
            dispatchEvent(new Event(SPECIALIST_SLOT_CLICKED,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as ProfessionalSlotVo;
            this._dataIsDirty = true;
            invalidateProperties();
         }
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
               var _loc1_:String = ResourceManager.getInstance().getString("rcl.emergencybook.layer" + "","rcl.emergencybook.layer.requiredGrade" + "");
               var _loc2_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.reqSpecialisationLocaId.toString());
               _loc1_ = null.replace("{0}",null);
               _loc1_ = null.replace("{1}",this._data.reqSecurityGrade.toString());
               this.requiredLabel.text = null;
               var _loc3_:String = ResourceManager.getInstance().getString("rcl.tooltips.emergencyLayer" + "","rcl.tooltips.emergencyLayer.clickToAssign" + "");
               _loc3_ = null.replace("{0}",null);
               this.toolTip = null;
            }
            else
            {
               this.profImage.dynaLibName = this._data.profLib;
               this.profImage.dynaBmpSourceName = this._data.profImage;
               this.nameDisplay.text = this._data.name;
               this.badgeImage.dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
               var _loc4_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.profSpecialisationLocaId.toString());
               this.badgeImage.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.specialization" + "",[null]);
               var _loc5_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.reqSpecialisationLocaId.toString());
               var _loc6_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.profSpecialisationLocaId.toString());
               if(this._data.reqSpecialisationLocaId == this._data.profSpecialisationLocaId)
               {
                  _loc3_ = ResourceManager.getInstance().getString("rcl.tooltips.emergencyLayer" + "","rcl.tooltips.emergencyLayer.optimalAssigned" + "");
               }
               else
               {
                  _loc3_ = ResourceManager.getInstance().getString("rcl.tooltips.emergencyLayer" + "","rcl.tooltips.emergencyLayer.notOptimalAssigned" + "");
               }
               _loc3_ = null.replace("{0}",null);
               _loc3_ = null.replace("{1}",null);
               toolTip = null;
            }
         }
      }
      
      private function handleRemoveClick() : void
      {
         dispatchEvent(new Event(SPECIALIST_REMOVE_CLICKED,true));
      }
      
      private function handleCreationComplete() : void
      {
         this.assignButton.label = ResourceManager.getInstance().getString("rcl.emergencybook.layer" + "","rcl.emergencybook.layer.click" + "");
      }
      
      private function _SpecialistSlotItemrenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_VGroup1_c()];
         _loc1_.id = "emptySlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emptySlot = _loc1_;
         BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -10;
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_StickyNoteComponent1_c(),this._SpecialistSlotItemrenderer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeTop = true;
         _loc1_.percentWidth = 100;
         _loc1_.height = 140;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotItemrenderer_Array4_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_Array4_c() : Array
      {
         return [this._SpecialistSlotItemrenderer_VGroup2_c()];
      }
      
      private function _SpecialistSlotItemrenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_BriskImageDynaLib1_i(),this._SpecialistSlotItemrenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _SpecialistSlotItemrenderer_LocaLabel1_i() : LocaLabel
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
      
      private function _SpecialistSlotItemrenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "emergencySlotButton";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.label = "";
         _loc1_.id = "assignButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.assignButton = _loc1_;
         BindingManager.executeBindings(this,"assignButton",this.assignButton);
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 165;
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_StickyNoteComponent2_c(),this._SpecialistSlotItemrenderer_BriskImageDynaLib2_i(),this._SpecialistSlotItemrenderer_BriskImageDynaLib3_i(),this._SpecialistSlotItemrenderer_Group4_c()];
         _loc1_.id = "filledSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filledSlot = _loc1_;
         BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 93;
         _loc1_.height = 60;
         _loc1_.bottom = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotItemrenderer_Array8_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_Array8_c() : Array
      {
         return [this._SpecialistSlotItemrenderer_LocaLabel2_i()];
      }
      
      private function _SpecialistSlotItemrenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.height = 35;
         _loc1_.maxDisplayedLines = 1;
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
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "diagonal_badges";
         _loc1_.top = 0;
         _loc1_.left = 0;
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
      
      private function _SpecialistSlotItemrenderer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.width = 25;
         _loc1_.height = 25;
         _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "removeProfessionalButton";
         _loc1_.addEventListener("click",this.__removeButton_click);
         _loc1_.id = "removeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.removeButton = _loc1_;
         BindingManager.executeBindings(this,"removeButton",this.removeButton);
         return _loc1_;
      }
      
      public function __removeButton_click(param1:MouseEvent) : void
      {
         this.handleRemoveClick();
      }
      
      public function ___SpecialistSlotItemrenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.handleClick();
      }
      
      public function ___SpecialistSlotItemrenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get assignButton() : MultistateButton
      {
         return this._1474880769assignButton;
      }
      
      public function set assignButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1474880769assignButton;
         if(_loc2_ !== param1)
         {
            this._1474880769assignButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assignButton",_loc2_,param1));
            }
         }
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
      public function get removeButton() : DynamicImageButton
      {
         return this._1339123498removeButton;
      }
      
      public function set removeButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1339123498removeButton;
         if(_loc2_ !== param1)
         {
            this._1339123498removeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeButton",_loc2_,param1));
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

