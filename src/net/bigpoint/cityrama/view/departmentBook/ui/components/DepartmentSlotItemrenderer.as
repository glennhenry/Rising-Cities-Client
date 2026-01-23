package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DepartmentSlotItemrenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      private var _1422826205attentionImage:BriskImageDynaLib;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _795017652clickLabel:LocaLabel;
      
      private var _1420004117emptySlot:Group;
      
      private var _116713604expireImage:BriskImageDynaLib;
      
      private var _76117376filledSlot:Group;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1211656884nameGroup:Group;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalDepartmentSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DepartmentSlotItemrenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 137;
         this.percentHeight = 100;
         this.mxmlContent = [this._DepartmentSlotItemrenderer_Group1_i(),this._DepartmentSlotItemrenderer_Group3_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib9_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___DepartmentSlotItemrenderer_ItemRenderer1_creationComplete);
         this.addEventListener("click",this.___DepartmentSlotItemrenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"infoIcon",
               "name":"dynaBmpSourceName",
               "value":"architect_icon_detailinfo_mouseover"
            })]
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         TweenMax.to(this.infoIcon,0,{"glowFilter":{
            "color":13475921,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":20
         }});
      }
      
      override public function set currentState(param1:String) : void
      {
         super.currentState = param1;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as ProfessionalDepartmentSlotVo;
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
            this.clickLabel.text = ResourceManager.getInstance().getString("rcl.booklayer.departmentBook" + "","rcl.booklayer.departmentBook.professionalSlot.free" + "");
            this.emptySlot.visible = this.emptySlot.includeInLayout = this._data.empty;
            this.filledSlot.visible = this.filledSlot.includeInLayout = !this._data.empty;
            this.attentionImage.visible = this.attentionImage.includeInLayout = this._data.canLevelUp;
            this.expireImage.visible = this.expireImage.includeInLayout = false;
            if(this._data.empty)
            {
               this.serviceImage.dynaBmpSourceName = this._data.departmentGfxId.toString();
               if(this._data.activeAcademy)
               {
                  var _loc1_:String = ResourceManager.getInstance().getString("rcl.emergencybook.layer" + "","emergencybook.layer.department." + this._data.profDepartment);
                  this.emptySlot.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.freeSlot" + ""),null);
                  this.infoIcon.visible = true;
               }
               else
               {
                  this.infoIcon.visible = false;
                  this.emptySlot.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.freeSlotAcademyDeactive" + "");
               }
            }
            else
            {
               this.profImage.dynaLibName = this._data.profLib;
               this.profImage.dynaBmpSourceName = this._data.profImage;
               this.nameDisplay.text = this._data.name;
               if(this._data.operationsLeft > 0)
               {
                  this.nameDisplay.styleName = "specialistSlotName";
               }
               else
               {
                  this.nameDisplay.styleName = "specialistSlotNameOperationLow";
               }
               this.badgeImage.dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
               var _loc2_:String = ResourceManager.getInstance().getString("rcl.professions" + "","rcl.professions." + this._data.profSpecialisationLocaId.toString());
               this.badgeImage.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.specialization" + ""),null);
               this.attentionImage.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.leveledUp" + "");
               this.expireImage.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.noMoreOperations" + "");
            }
         }
      }
      
      private function handleClick(param1:Event = null) : void
      {
         if(this._data)
         {
            dispatchEvent(new Event(SLOT_CLICKED,true));
         }
      }
      
      private function _DepartmentSlotItemrenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_VGroup1_c()];
         _loc1_.id = "emptySlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emptySlot = _loc1_;
         BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -5;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_StickyNoteComponent1_c(),this._DepartmentSlotItemrenderer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeTop = true;
         _loc1_.percentWidth = 100;
         _loc1_.height = 140;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentSlotItemrenderer_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_Array5_c() : Array
      {
         return [this._DepartmentSlotItemrenderer_VGroup2_c()];
      }
      
      private function _DepartmentSlotItemrenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "big_badges";
         _loc1_.dynaBmpSourceName = "";
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
      
      private function _DepartmentSlotItemrenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 44;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_HGroup1_c(),this._DepartmentSlotItemrenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 8;
         _loc1_.right = 8;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib2_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib3_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "emergencySlotClickLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "clickLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.clickLabel = _loc1_;
         BindingManager.executeBindings(this,"clickLabel",this.clickLabel);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_Group4_i(),this._DepartmentSlotItemrenderer_Group5_c()];
         _loc1_.id = "filledSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filledSlot = _loc1_;
         BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 12;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_StickyNoteComponent2_c()];
         _loc1_.id = "nameGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameGroup = _loc1_;
         BindingManager.executeBindings(this,"nameGroup",this.nameGroup);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 93;
         _loc1_.height = 60;
         _loc1_.bottom = -10;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentSlotItemrenderer_Array11_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_Array11_c() : Array
      {
         return [this._DepartmentSlotItemrenderer_LocaLabel2_i()];
      }
      
      private function _DepartmentSlotItemrenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.showTruncationTip = true;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
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
      
      private function _DepartmentSlotItemrenderer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib5_i(),this._DepartmentSlotItemrenderer_BriskMCDynaLib1_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib6_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib7_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 8;
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
      
      private function _DepartmentSlotItemrenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = -5;
         _loc1_.percentWidth = 60;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
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
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.dynaBmpSourceName = "people_indicator_expire";
         _loc1_.id = "expireImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.expireImage = _loc1_;
         BindingManager.executeBindings(this,"expireImage",this.expireImage);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.dynaBmpSourceName = "icon_levelUp_mini";
         _loc1_.id = "attentionImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attentionImage = _loc1_;
         BindingManager.executeBindings(this,"attentionImage",this.attentionImage);
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 62;
         _loc1_.right = 24;
         _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
         _loc1_.id = "infoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoIcon = _loc1_;
         BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
         return _loc1_;
      }
      
      public function ___DepartmentSlotItemrenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___DepartmentSlotItemrenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.handleClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionImage() : BriskImageDynaLib
      {
         return this._1422826205attentionImage;
      }
      
      public function set attentionImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1422826205attentionImage;
         if(_loc2_ !== param1)
         {
            this._1422826205attentionImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionImage",_loc2_,param1));
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
      public function get clickLabel() : LocaLabel
      {
         return this._795017652clickLabel;
      }
      
      public function set clickLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._795017652clickLabel;
         if(_loc2_ !== param1)
         {
            this._795017652clickLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickLabel",_loc2_,param1));
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
      public function get expireImage() : BriskImageDynaLib
      {
         return this._116713604expireImage;
      }
      
      public function set expireImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._116713604expireImage;
         if(_loc2_ !== param1)
         {
            this._116713604expireImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expireImage",_loc2_,param1));
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
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._177606215infoIcon;
         if(_loc2_ !== param1)
         {
            this._177606215infoIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
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
      public function get nameGroup() : Group
      {
         return this._1211656884nameGroup;
      }
      
      public function set nameGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1211656884nameGroup;
         if(_loc2_ !== param1)
         {
            this._1211656884nameGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameGroup",_loc2_,param1));
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

