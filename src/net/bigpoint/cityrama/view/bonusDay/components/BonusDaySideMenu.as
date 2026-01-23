package net.bigpoint.cityrama.view.bonusDay.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class BonusDaySideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      private var _3226745icon:DynamicImageButton;
      
      private var _738471190iconBase:BriskImageDynaLib;
      
      private var _1412649594iconGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Boolean;
      
      private var _dataDirty:Boolean;
      
      public function BonusDaySideMenu()
      {
         super();
         mx_internal::_document = this;
         this.width = 55;
         this.minWidth = 55;
         this.measuredWidth = 55;
         this.height = 53;
         this.minHeight = 53;
         this.measuredHeight = 53;
         this.mxmlContent = [this._BonusDaySideMenu_VGroup1_c(),this._BonusDaySideMenu_Group3_i()];
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
      
      public function setData(param1:Boolean) : void
      {
         this._dataDirty = true;
         this._data = param1;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            if(this._data)
            {
               this.iconBase.briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base_noShadow");
               this.icon.styleName = "bonusDayButtonActive";
               TweenMax.to(this.iconGroup,0,{"glowFilter":{
                  "color":63231,
                  "alpha":1,
                  "blurX":10,
                  "blurY":10,
                  "strength":1
               }});
            }
            else
            {
               this.iconBase.briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base");
               this.icon.styleName = "bonusDayButton";
               this.iconGroup.filters = [];
            }
         }
      }
      
      private function _BonusDaySideMenu_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 55;
         _loc1_.height = 53;
         _loc1_.mxmlContent = [this._BonusDaySideMenu_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDaySideMenu_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabledWhereTransparent = false;
         _loc1_.mxmlContent = [this._BonusDaySideMenu_BriskImageDynaLib1_i(),this._BonusDaySideMenu_DynamicImageButton1_i()];
         _loc1_.addEventListener("click",this.__iconGroup_click);
         _loc1_.addEventListener("rollOver",this.__iconGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__iconGroup_rollOut);
         _loc1_.id = "iconGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconGroup = _loc1_;
         BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
         return _loc1_;
      }
      
      private function _BonusDaySideMenu_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "questmarker_base";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "iconBase";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconBase = _loc1_;
         BindingManager.executeBindings(this,"iconBase",this.iconBase);
         return _loc1_;
      }
      
      private function _BonusDaySideMenu_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "bonusDayButton";
         _loc1_.width = 61;
         _loc1_.height = 60;
         _loc1_.top = 3;
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      public function __iconGroup_click(param1:MouseEvent) : void
      {
         this.onClick();
      }
      
      public function __iconGroup_rollOver(param1:MouseEvent) : void
      {
         this.onMouseOver();
      }
      
      public function __iconGroup_rollOut(param1:MouseEvent) : void
      {
         this.onMouseOut();
      }
      
      private function _BonusDaySideMenu_Group3_i() : Group
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
      public function get icon() : DynamicImageButton
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBase() : BriskImageDynaLib
      {
         return this._738471190iconBase;
      }
      
      public function set iconBase(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._738471190iconBase;
         if(_loc2_ !== param1)
         {
            this._738471190iconBase = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBase",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1412649594iconGroup;
         if(_loc2_ !== param1)
         {
            this._1412649594iconGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
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

