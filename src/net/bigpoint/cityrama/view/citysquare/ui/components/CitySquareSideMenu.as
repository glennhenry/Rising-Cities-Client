package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class CitySquareSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      private var _58777855citySquareIcon:DynamicImageButton;
      
      private var _1784090142menuContainer:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function CitySquareSideMenu()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 55;
         this.minHeight = 53;
         this.mxmlContent = [this._CitySquareSideMenu_VGroup1_c(),this._CitySquareSideMenu_Group3_i()];
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
      
      private function onClick() : void
      {
         dispatchEvent(new Event(CLICK_INFO,true,true));
      }
      
      private function onMouseOver() : void
      {
         dispatchEvent(new Event(SHOW_INFO,true,true));
      }
      
      private function onMouseOut() : void
      {
         dispatchEvent(new Event(HIDE_INFO,true,true));
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _CitySquareSideMenu_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.measuredWidth = 55;
         _loc1_.measuredHeight = 53;
         _loc1_.mxmlContent = [this._CitySquareSideMenu_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareSideMenu_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabledWhereTransparent = false;
         _loc1_.mxmlContent = [this._CitySquareSideMenu_BriskImageDynaLib1_c(),this._CitySquareSideMenu_DynamicImageButton1_i()];
         _loc1_.addEventListener("click",this.___CitySquareSideMenu_Group2_click);
         _loc1_.addEventListener("rollOver",this.___CitySquareSideMenu_Group2_rollOver);
         _loc1_.addEventListener("rollOut",this.___CitySquareSideMenu_Group2_rollOut);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareSideMenu_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "questmarker_base";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareSideMenu_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "citySquareButton";
         _loc1_.width = 44;
         _loc1_.height = 46;
         _loc1_.top = 3;
         _loc1_.left = 5;
         _loc1_.id = "citySquareIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.citySquareIcon = _loc1_;
         BindingManager.executeBindings(this,"citySquareIcon",this.citySquareIcon);
         return _loc1_;
      }
      
      public function ___CitySquareSideMenu_Group2_click(param1:MouseEvent) : void
      {
         this.onClick();
      }
      
      public function ___CitySquareSideMenu_Group2_rollOver(param1:MouseEvent) : void
      {
         this.onMouseOver();
      }
      
      public function ___CitySquareSideMenu_Group2_rollOut(param1:MouseEvent) : void
      {
         this.onMouseOut();
      }
      
      private function _CitySquareSideMenu_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = -250;
         _loc1_.top = -5;
         _loc1_.id = "menuContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.menuContainer = _loc1_;
         BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get citySquareIcon() : DynamicImageButton
      {
         return this._58777855citySquareIcon;
      }
      
      public function set citySquareIcon(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._58777855citySquareIcon;
         if(_loc2_ !== param1)
         {
            this._58777855citySquareIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citySquareIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         var _loc2_:Object = this._1784090142menuContainer;
         if(_loc2_ !== param1)
         {
            this._1784090142menuContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
            }
         }
      }
   }
}

