package net.bigpoint.cityrama.view.emergencyBook.ui.skins
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PagingItemRenderer;
   import net.bigpoint.cityrama.view.common.skins.PagingListSkin;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencyDataGridComponent;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class EmergencyDataGridSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _742810227badgeSortButton:ToggleButton;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _505663145listLeftButton:DynamicImageButton;
      
      private var _1541462256listRightButton:DynamicImageButton;
      
      private var _1590968485nameSortButton:ToggleButton;
      
      private var _1337706616operationCountSortButton:ToggleButton;
      
      private var _1708347080pagingLabel:LocaLabel;
      
      private var _1302042186pagingList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:EmergencyDataGridComponent;
      
      public function EmergencyDataGridSkin()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._EmergencyDataGridSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencyDataGridSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EmergencyDataGridSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._EmergencyDataGridSkin_VGroup1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EmergencyDataGridSkin._watcherSetupUtil = param1;
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
      }
      
      private function _EmergencyDataGridSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_HGroup1_c(),this._EmergencyDataGridSkin_List1_i(),this._EmergencyDataGridSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_Group1_c(),this._EmergencyDataGridSkin_VGroup2_c(),this._EmergencyDataGridSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 38;
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "listLeftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.listLeftButton = _loc1_;
         BindingManager.executeBindings(this,"listLeftButton",this.listLeftButton);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_HGroup2_c(),this._EmergencyDataGridSkin_DataGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_ToggleButton1_i(),this._EmergencyDataGridSkin_ToggleButton2_i(),this._EmergencyDataGridSkin_ToggleButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "badgeSort";
         _loc1_.id = "badgeSortButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badgeSortButton = _loc1_;
         BindingManager.executeBindings(this,"badgeSortButton",this.badgeSortButton);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_ToggleButton2_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "nameSort";
         _loc1_.percentWidth = 100;
         _loc1_.id = "nameSortButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameSortButton = _loc1_;
         BindingManager.executeBindings(this,"nameSortButton",this.nameSortButton);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_ToggleButton3_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "operationCountSort";
         _loc1_.percentWidth = 100;
         _loc1_.id = "operationCountSortButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.operationCountSortButton = _loc1_;
         BindingManager.executeBindings(this,"operationCountSortButton",this.operationCountSortButton);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.layout = this._EmergencyDataGridSkin_VerticalLayout1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.requestedMaxRowCount = 4;
         _loc1_.requestedRowCount = 4;
         _loc1_.gap = -2;
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 38;
         _loc1_.mxmlContent = [this._EmergencyDataGridSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "listRightButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.listRightButton = _loc1_;
         BindingManager.executeBindings(this,"listRightButton",this.listRightButton);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._EmergencyDataGridSkin_ClassFactory1_c();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.setStyle("skinClass",PagingListSkin);
         _loc1_.id = "pagingList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pagingList = _loc1_;
         BindingManager.executeBindings(this,"pagingList",this.pagingList);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PagingItemRenderer;
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "pagingTextNormal";
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 0;
         _loc1_.id = "pagingLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pagingLabel = _loc1_;
         BindingManager.executeBindings(this,"pagingLabel",this.pagingLabel);
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return dataGroup.width;
         },null,"pagingList.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeSortButton() : ToggleButton
      {
         return this._742810227badgeSortButton;
      }
      
      public function set badgeSortButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._742810227badgeSortButton;
         if(_loc2_ !== param1)
         {
            this._742810227badgeSortButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeSortButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listLeftButton() : DynamicImageButton
      {
         return this._505663145listLeftButton;
      }
      
      public function set listLeftButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._505663145listLeftButton;
         if(_loc2_ !== param1)
         {
            this._505663145listLeftButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listLeftButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listRightButton() : DynamicImageButton
      {
         return this._1541462256listRightButton;
      }
      
      public function set listRightButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1541462256listRightButton;
         if(_loc2_ !== param1)
         {
            this._1541462256listRightButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listRightButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameSortButton() : ToggleButton
      {
         return this._1590968485nameSortButton;
      }
      
      public function set nameSortButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1590968485nameSortButton;
         if(_loc2_ !== param1)
         {
            this._1590968485nameSortButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameSortButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get operationCountSortButton() : ToggleButton
      {
         return this._1337706616operationCountSortButton;
      }
      
      public function set operationCountSortButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1337706616operationCountSortButton;
         if(_loc2_ !== param1)
         {
            this._1337706616operationCountSortButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationCountSortButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingLabel() : LocaLabel
      {
         return this._1708347080pagingLabel;
      }
      
      public function set pagingLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1708347080pagingLabel;
         if(_loc2_ !== param1)
         {
            this._1708347080pagingLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingList() : List
      {
         return this._1302042186pagingList;
      }
      
      public function set pagingList(param1:List) : void
      {
         var _loc2_:Object = this._1302042186pagingList;
         if(_loc2_ !== param1)
         {
            this._1302042186pagingList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : EmergencyDataGridComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:EmergencyDataGridComponent) : void
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

