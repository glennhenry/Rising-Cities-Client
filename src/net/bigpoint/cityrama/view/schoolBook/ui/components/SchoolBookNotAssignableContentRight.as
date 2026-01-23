package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookNotAssignableContentRight extends Group
   {
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _1139881950topText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalDTO;
      
      public function SchoolBookNotAssignableContentRight()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._SchoolBookNotAssignableContentRight_BriskImageDynaLib1_c(),this._SchoolBookNotAssignableContentRight_VGroup1_c(),this._SchoolBookNotAssignableContentRight_HGroup3_c(),this._SchoolBookNotAssignableContentRight_BriskMCDynaLib1_c()];
         this.addEventListener("creationComplete",this.___SchoolBookNotAssignableContentRight_Group1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         this.fireButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
         this.informationHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.header.capital");
         this.assignButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.assign");
         this.topText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.text.top");
         this.bottomText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.text.bottom");
      }
      
      private function handleFireProfessionalClick() : void
      {
         var _loc1_:SchoolBookEvent = null;
         if(this._data)
         {
            _loc1_ = new SchoolBookEvent(SchoolBookEvent.FIRE_PROFESSIONAL,true);
            _loc1_.pDTO = this._data;
            dispatchEvent(_loc1_);
         }
      }
      
      public function set data(param1:ProfessionalDTO) : void
      {
         this._data = param1;
      }
      
      private function _SchoolBookNotAssignableContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bg_blue_finished";
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         _loc1_.width = 372;
         _loc1_.height = 280;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 372;
         _loc1_.height = 280;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_Group2_c(),this._SchoolBookNotAssignableContentRight_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_HeaderComponentSmall1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.percentWidth = 100;
         _loc1_.textHAlign = "center";
         _loc1_.bottom = 4;
         _loc1_.id = "informationHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.informationHeader = _loc1_;
         BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 230;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_HGroup1_c(),this._SchoolBookNotAssignableContentRight_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 50;
         _loc1_.percentWidth = 80;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "thirteenDarkCenter";
         _loc1_.percentWidth = 100;
         _loc1_.id = "topText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topText = _loc1_;
         BindingManager.executeBindings(this,"topText",this.topText);
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 50;
         _loc1_.percentWidth = 80;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "thirteenBlueCenter";
         _loc1_.percentWidth = 100;
         _loc1_.id = "bottomText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomText = _loc1_;
         BindingManager.executeBindings(this,"bottomText",this.bottomText);
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.bottom = 5;
         _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_MultistateButton1_i(),this._SchoolBookNotAssignableContentRight_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_schoolBook";
         _loc1_.imageNameLeft = "white_x_icon";
         _loc1_.styleName = "abort";
         _loc1_.width = 42;
         _loc1_.addEventListener("click",this.__fireButton_click);
         _loc1_.id = "fireButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.fireButton = _loc1_;
         BindingManager.executeBindings(this,"fireButton",this.fireButton);
         return _loc1_;
      }
      
      public function __fireButton_click(param1:MouseEvent) : void
      {
         this.handleFireProfessionalClick();
      }
      
      private function _SchoolBookNotAssignableContentRight_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.imageNameLeft = "button_icon_checkmark";
         _loc1_.width = 200;
         _loc1_.enabled = false;
         _loc1_.id = "assignButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.assignButton = _loc1_;
         BindingManager.executeBindings(this,"assignButton",this.assignButton);
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.top = 80;
         _loc1_.right = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SchoolBookNotAssignableContentRight_Group1_creationComplete(param1:FlexEvent) : void
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
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1682553352bottomText;
         if(_loc2_ !== param1)
         {
            this._1682553352bottomText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fireButton() : MultistateButton
      {
         return this._1112078072fireButton;
      }
      
      public function set fireButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1112078072fireButton;
         if(_loc2_ !== param1)
         {
            this._1112078072fireButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get informationHeader() : HeaderComponentSmall
      {
         return this._1846981337informationHeader;
      }
      
      public function set informationHeader(param1:HeaderComponentSmall) : void
      {
         var _loc2_:Object = this._1846981337informationHeader;
         if(_loc2_ !== param1)
         {
            this._1846981337informationHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1139881950topText;
         if(_loc2_ !== param1)
         {
            this._1139881950topText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
            }
         }
      }
   }
}

