package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CityTreasuryPackItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1194063234iconBG:BriskImageDynaLib;
      
      private var _1638757991iconNew:BriskImageDynaLib;
      
      private var _1780140989iconTopLeft:BriskImageDynaLib;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _283910695masterBG:BriskImageDynaLib;
      
      private var _1360146064miniIcon:BriskImageDynaLib;
      
      private var _1360135771miniInfo:LocaLabel;
      
      private var _315061426priceBG:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityTreasuryInternalPackItemVo;
      
      private var _dirty:Boolean;
      
      private var _currentState:String = "normal";
      
      public function CityTreasuryPackItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 78;
         this.minHeight = 72;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib1_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib2_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib3_i(),this._CityTreasuryPackItemRenderer_VGroup1_c(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib6_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib7_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___CityTreasuryPackItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("rollOver",this.___CityTreasuryPackItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___CityTreasuryPackItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            })]
         }),new State({
            "name":"overAndSelected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            })]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            })]
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.autoDrawBackground = false;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.getCurrentRendererState() == "over")
            {
               this._currentState = "overAndSelected";
            }
            else if(this.getCurrentRendererState() == "normal")
            {
               this._currentState = "selected";
            }
         }
         else if(this.getCurrentRendererState() == "overAndSelected")
         {
            this._currentState = "over";
         }
         else
         {
            this._currentState = "normal";
         }
         super.selected = param1;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dirty = true;
            this._data = CityTreasuryInternalPackItemVo(param1);
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._data) && this._dirty)
         {
            this._dirty = false;
            this.iconBG.briskDynaVo = this._data.listBackgroundGfx;
            this.miniIcon.briskDynaVo = this._data.amountIconGfx;
            this.itemIcon.briskDynaVo = this._data.smallPackGfx;
            this.iconTopLeft.briskDynaVo = this._data.smallTopLeftIconGfx;
            this.miniInfo.text = LocaUtils.getThousendSeperatedNumber(this._data.packContentAmount);
            toolTip = this._data.tooltip;
         }
         super.commitProperties();
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         this.setCurrentState("over",false);
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         if(!selected)
         {
            this.setCurrentState("normal",false);
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         this._currentState = param1;
         super.setCurrentState(param1,param2);
      }
      
      override protected function getCurrentRendererState() : String
      {
         if(this._currentState != "")
         {
            return this._currentState;
         }
         return super.getCurrentRendererState();
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "item_master_bg_normal";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 3;
         _loc1_.id = "masterBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masterBG = _loc1_;
         BindingManager.executeBindings(this,"masterBG",this.masterBG);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "item_amount_bg";
         _loc1_.top = 66;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "priceBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceBG = _loc1_;
         BindingManager.executeBindings(this,"priceBG",this.priceBG);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 6;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "iconBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconBG = _loc1_;
         BindingManager.executeBindings(this,"iconBG",this.iconBG);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 1;
         _loc1_.top = 8;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_VGroup2_c(),this._CityTreasuryPackItemRenderer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 60;
         _loc1_.width = 64;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvementStore";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "itemIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemIcon = _loc1_;
         BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 60;
         _loc1_.minWidth = 1;
         _loc1_.maxWidth = 60;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib5_i(),this._CityTreasuryPackItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "mini_icon_good";
         _loc1_.minWidth = 14;
         _loc1_.minHeight = 14;
         _loc1_.id = "miniIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.miniIcon = _loc1_;
         BindingManager.executeBindings(this,"miniIcon",this.miniIcon);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 52;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "tenLeftDark";
         _loc1_.setStyle("paddingTop",5);
         _loc1_.id = "miniInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.miniInfo = _loc1_;
         BindingManager.executeBindings(this,"miniInfo",this.miniInfo);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.left = 5;
         _loc1_.id = "iconTopLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconTopLeft = _loc1_;
         BindingManager.executeBindings(this,"iconTopLeft",this.iconTopLeft);
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "new_icon";
         _loc1_.width = 24;
         _loc1_.height = 24;
         _loc1_.left = 5;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "iconNew";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconNew = _loc1_;
         BindingManager.executeBindings(this,"iconNew",this.iconNew);
         return _loc1_;
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBG() : BriskImageDynaLib
      {
         return this._1194063234iconBG;
      }
      
      public function set iconBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1194063234iconBG;
         if(_loc2_ !== param1)
         {
            this._1194063234iconBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconNew() : BriskImageDynaLib
      {
         return this._1638757991iconNew;
      }
      
      public function set iconNew(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1638757991iconNew;
         if(_loc2_ !== param1)
         {
            this._1638757991iconNew = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNew",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTopLeft() : BriskImageDynaLib
      {
         return this._1780140989iconTopLeft;
      }
      
      public function set iconTopLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1780140989iconTopLeft;
         if(_loc2_ !== param1)
         {
            this._1780140989iconTopLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTopLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemIcon() : BriskImageDynaLib
      {
         return this._1177184812itemIcon;
      }
      
      public function set itemIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1177184812itemIcon;
         if(_loc2_ !== param1)
         {
            this._1177184812itemIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masterBG() : BriskImageDynaLib
      {
         return this._283910695masterBG;
      }
      
      public function set masterBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._283910695masterBG;
         if(_loc2_ !== param1)
         {
            this._283910695masterBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masterBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get miniIcon() : BriskImageDynaLib
      {
         return this._1360146064miniIcon;
      }
      
      public function set miniIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1360146064miniIcon;
         if(_loc2_ !== param1)
         {
            this._1360146064miniIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get miniInfo() : LocaLabel
      {
         return this._1360135771miniInfo;
      }
      
      public function set miniInfo(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1360135771miniInfo;
         if(_loc2_ !== param1)
         {
            this._1360135771miniInfo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniInfo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceBG() : BriskImageDynaLib
      {
         return this._315061426priceBG;
      }
      
      public function set priceBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._315061426priceBG;
         if(_loc2_ !== param1)
         {
            this._315061426priceBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceBG",_loc2_,param1));
            }
         }
      }
   }
}

