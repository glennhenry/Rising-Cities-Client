package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.GradeVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.SeparatorList;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestTaskListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.CheckBox;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class CoverageInfoComponent extends Group
   {
      
      private var _1536861091checkBox:CheckBox;
      
      private var _262377712departmentList:SeparatorList;
      
      private var _776838274emergencyHeader:HeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean;
      
      public function CoverageInfoComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.maxWidth = 530;
         this.mxmlContent = [this._CoverageInfoComponent_VGroup1_c()];
         this.addEventListener("creationComplete",this.___CoverageInfoComponent_Group1_creationComplete);
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
      
      public function set data(param1:EmergencyZoneLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleCreationComplete() : void
      {
         this.emergencyHeader.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.securitystep"));
         this.checkBox.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.skiplabel"));
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayList = null;
         var _loc2_:String = null;
         var _loc3_:GradeVo = null;
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = new ArrayList();
            _loc2_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.status"));
            for each(_loc3_ in this._data.grades)
            {
               if(_loc3_.requiredGrade > 0)
               {
                  _loc1_.addItem(_loc3_);
               }
            }
            if(this.departmentList)
            {
               this.departmentList.dataProvider = _loc1_;
            }
         }
      }
      
      private function _CoverageInfoComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 30;
         _loc1_.paddingRight = 10;
         _loc1_.mxmlContent = [this._CoverageInfoComponent_CheckBox1_i(),this._CoverageInfoComponent_HeaderComponent1_i(),this._CoverageInfoComponent_SeparatorList1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CoverageInfoComponent_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.styleName = "emergencySkipBox";
         _loc1_.percentWidth = 100;
         _loc1_.id = "checkBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkBox = _loc1_;
         BindingManager.executeBindings(this,"checkBox",this.checkBox);
         return _loc1_;
      }
      
      private function _CoverageInfoComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.percentWidth = 100;
         _loc1_.label = "DEV:COVERAGE INFO";
         _loc1_.id = "emergencyHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyHeader = _loc1_;
         BindingManager.executeBindings(this,"emergencyHeader",this.emergencyHeader);
         return _loc1_;
      }
      
      private function _CoverageInfoComponent_SeparatorList1_i() : SeparatorList
      {
         var _loc1_:SeparatorList = new SeparatorList();
         _loc1_.itemRenderer = this._CoverageInfoComponent_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",QuestTaskListSkin);
         _loc1_.id = "departmentList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentList = _loc1_;
         BindingManager.executeBindings(this,"departmentList",this.departmentList);
         return _loc1_;
      }
      
      private function _CoverageInfoComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DepartmentTaskItemRenderer;
         return _loc1_;
      }
      
      public function ___CoverageInfoComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get checkBox() : CheckBox
      {
         return this._1536861091checkBox;
      }
      
      public function set checkBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1536861091checkBox;
         if(_loc2_ !== param1)
         {
            this._1536861091checkBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentList() : SeparatorList
      {
         return this._262377712departmentList;
      }
      
      public function set departmentList(param1:SeparatorList) : void
      {
         var _loc2_:Object = this._262377712departmentList;
         if(_loc2_ !== param1)
         {
            this._262377712departmentList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyHeader() : HeaderComponent
      {
         return this._776838274emergencyHeader;
      }
      
      public function set emergencyHeader(param1:HeaderComponent) : void
      {
         var _loc2_:Object = this._776838274emergencyHeader;
         if(_loc2_ !== param1)
         {
            this._776838274emergencyHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyHeader",_loc2_,param1));
            }
         }
      }
   }
}

