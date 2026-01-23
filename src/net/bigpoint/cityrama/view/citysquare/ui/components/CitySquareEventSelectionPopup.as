package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.EventSelectionListSkin;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventSelectionVo;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.EventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class CitySquareEventSelectionPopup extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _482228176eventSelectionList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareEventSelectionVo;
      
      private var _dirty:Boolean;
      
      public function CitySquareEventSelectionPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "eventselection";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventSelectionPopup_Array1_c);
         this.addEventListener("creationComplete",this.___CitySquareEventSelectionPopup_PaperPopupWindow1_creationComplete);
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
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         this.title = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.title.capital");
         this.flavorText.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.flavor");
      }
      
      public function set data(param1:CitySquareEventSelectionVo) : void
      {
         this._data = param1;
         this._dirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:EventSelectionVo = null;
         super.commitProperties();
         if(this._data != null && this._dirty)
         {
            this._dirty = false;
            _loc1_ = new ArrayCollection();
            for each(_loc2_ in this._data.allEvents)
            {
               _loc1_.addItem(_loc2_);
            }
            this.eventSelectionList.dataProvider = _loc1_;
         }
      }
      
      private function _CitySquareEventSelectionPopup_Array1_c() : Array
      {
         return [this._CitySquareEventSelectionPopup_VGroup1_c()];
      }
      
      private function _CitySquareEventSelectionPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.paddingTop = 25;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_HGroup1_c(),this._CitySquareEventSelectionPopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 320;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionPopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.height = 320;
         _loc1_.itemRenderer = this._CitySquareEventSelectionPopup_ClassFactory1_c();
         _loc1_.setStyle("skinClass",EventSelectionListSkin);
         _loc1_.id = "eventSelectionList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventSelectionList = _loc1_;
         BindingManager.executeBindings(this,"eventSelectionList",this.eventSelectionList);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CitySquareEventSelectionItemRenderer;
         return _loc1_;
      }
      
      public function ___CitySquareEventSelectionPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventSelectionList() : List
      {
         return this._482228176eventSelectionList;
      }
      
      public function set eventSelectionList(param1:List) : void
      {
         var _loc2_:Object = this._482228176eventSelectionList;
         if(_loc2_ !== param1)
         {
            this._482228176eventSelectionList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventSelectionList",_loc2_,param1));
            }
         }
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
   }
}

