package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.VScrollItemSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ProfessionalCharacteristicsComponent extends Group
   {
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1790172313characterList:List;
      
      private var _1725723944informationLabel:LocaLabel;
      
      private var _1981812331operationAmountLabel:LocaLabel;
      
      private var _1451097651operationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IProfessionalCharacteristicsVo;
      
      private var _isDirty:Boolean;
      
      public function ProfessionalCharacteristicsComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib1_c(),this._ProfessionalCharacteristicsComponent_VGroup1_c()];
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
      
      public function set data(param1:IProfessionalCharacteristicsVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.fillContent();
         }
      }
      
      private function fillContent() : void
      {
         var _loc2_:int = 0;
         this.operationAmountLabel.text = this._data.operationsLeft.toString();
         this.operationLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.operations");
         this.operationLabel.toolTip = this.operationLabel.text;
         this.informationLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.information");
         var _loc1_:ArrayCollection = new ArrayCollection();
         if(this._data.characteristicEntries.length)
         {
            _loc2_ = 0;
            while(_loc2_ < this._data.characteristicEntries.length)
            {
               _loc1_.addItem(this._data.characteristicEntries[_loc2_]);
               _loc2_++;
            }
         }
         this.characterList.dataProvider = _loc1_;
         this.buyButton.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.rehire");
      }
      
      private function handleBuyOperation() : void
      {
         dispatchEvent(new Event("buyOperation",true));
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup_new";
         _loc1_.dynaBmpSourceName = "quadrillepaper_newproduktion";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 20;
         _loc1_.paddingBottom = 20;
         _loc1_.paddingLeft = 18;
         _loc1_.width = 214;
         _loc1_.gap = 4;
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_Group2_c(),this._ProfessionalCharacteristicsComponent_Group3_c(),this._ProfessionalCharacteristicsComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_HGroup1_c(),this._ProfessionalCharacteristicsComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib2_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib3_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.left = 8;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "departmentSecurityLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "informationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.informationLabel = _loc1_;
         BindingManager.executeBindings(this,"informationLabel",this.informationLabel);
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 100;
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 14;
         _loc1_.top = 4;
         _loc1_.focusEnabled = false;
         _loc1_.itemRenderer = this._ProfessionalCharacteristicsComponent_ClassFactory1_c();
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",VScrollItemSkin);
         _loc1_.id = "characterList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterList = _loc1_;
         BindingManager.executeBindings(this,"characterList",this.characterList);
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ScrollTextItemRenderer;
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_HGroup2_c(),this._ProfessionalCharacteristicsComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib5_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib6_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
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
      
      private function _ProfessionalCharacteristicsComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 4;
         _loc1_.paddingRight = -2;
         _loc1_.paddingLeft = 8;
         _loc1_.gap = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_LocaLabel2_i(),this._ProfessionalCharacteristicsComponent_LocaLabel3_i(),this._ProfessionalCharacteristicsComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.left = 8;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "departmentSecurityLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "operationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.operationLabel = _loc1_;
         BindingManager.executeBindings(this,"operationLabel",this.operationLabel);
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "professionalOperationAmountLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "operationAmountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.operationAmountLabel = _loc1_;
         BindingManager.executeBindings(this,"operationAmountLabel",this.operationAmountLabel);
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.verticalCenter = 0;
         _loc1_.iconImageName = "buy_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__buyButton_click);
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         this.handleBuyOperation();
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc2_ !== param1)
         {
            this._1271589544buyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterList() : List
      {
         return this._1790172313characterList;
      }
      
      public function set characterList(param1:List) : void
      {
         var _loc2_:Object = this._1790172313characterList;
         if(_loc2_ !== param1)
         {
            this._1790172313characterList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get informationLabel() : LocaLabel
      {
         return this._1725723944informationLabel;
      }
      
      public function set informationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1725723944informationLabel;
         if(_loc2_ !== param1)
         {
            this._1725723944informationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get operationAmountLabel() : LocaLabel
      {
         return this._1981812331operationAmountLabel;
      }
      
      public function set operationAmountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1981812331operationAmountLabel;
         if(_loc2_ !== param1)
         {
            this._1981812331operationAmountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationAmountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get operationLabel() : LocaLabel
      {
         return this._1451097651operationLabel;
      }
      
      public function set operationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1451097651operationLabel;
         if(_loc2_ !== param1)
         {
            this._1451097651operationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationLabel",_loc2_,param1));
            }
         }
      }
   }
}

