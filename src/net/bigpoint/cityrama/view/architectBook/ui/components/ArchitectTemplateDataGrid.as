package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ArchitectTemplateDataGrid extends Group
   {
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ArchitectTemplateDataGrid()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ArchitectTemplateDataGrid_VGroup1_c()];
         this.addEventListener("creationComplete",this.___ArchitectTemplateDataGrid_Group1_creationComplete);
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
      
      private function setTooltips() : void
      {
         var _loc1_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow");
         var _loc2_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow");
         this.itemList.setStyle("tooltipScrollLeft",_loc1_);
         this.itemList.setStyle("tooltipScrollRight",_loc2_);
      }
      
      private function _ArchitectTemplateDataGrid_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.height = 335;
         _loc1_.bottom = 10;
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ArchitectTemplateDataGrid_LocaLabel1_i(),this._ArchitectTemplateDataGrid_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplateDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.height = 25;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _ArchitectTemplateDataGrid_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ArchitectTemplateDataGrid_ClassFactory1_c();
         _loc1_.height = 315;
         _loc1_.width = 728;
         _loc1_.setStyle("skinClass",GridSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _ArchitectTemplateDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ArchitectItemRenderer;
         return _loc1_;
      }
      
      public function ___ArchitectTemplateDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.setTooltips();
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
   }
}

