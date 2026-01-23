package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class SpecialistSlotComponent extends Group
   {
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistSlotComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 137;
         this.mxmlContent = [this._SpecialistSlotComponent_Group2_i()];
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
      
      public function set data(param1:IProfessionalSlotVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as IProfessionalSlotVo;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.profImage.dynaLibName = this._data.profLib;
            this.profImage.dynaBmpSourceName = this._data.profImage;
            this.nameDisplay.text = this._data.name;
            if(this._data.profSpecialisationGfxId)
            {
               _loc1_ = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.profSpecialisationLocaId.toString());
               this.badgeImage.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.specialization" + "",[_loc1_]);
               this.badgeImage.dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
               this.badgeImage.includeInLayout = this.badgeImage.visible = true;
            }
            else
            {
               this.badgeImage.includeInLayout = this.badgeImage.visible = false;
            }
         }
      }
      
      private function _SpecialistSlotComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SpecialistSlotComponent_StickyNoteComponent1_c(),this._SpecialistSlotComponent_BriskImageDynaLib1_i(),this._SpecialistSlotComponent_BriskImageDynaLib2_i()];
         _loc1_.id = "filledSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filledSlot = _loc1_;
         BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
         return _loc1_;
      }
      
      private function _SpecialistSlotComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 93;
         _loc1_.height = 60;
         _loc1_.top = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotComponent_Array3_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotComponent_Array3_c() : Array
      {
         return [this._SpecialistSlotComponent_LocaLabel1_i()];
      }
      
      private function _SpecialistSlotComponent_LocaLabel1_i() : LocaLabel
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
      
      private function _SpecialistSlotComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "profImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.profImage = _loc1_;
         BindingManager.executeBindings(this,"profImage",this.profImage);
         return _loc1_;
      }
      
      private function _SpecialistSlotComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "diagonal_badges";
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
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
   }
}

