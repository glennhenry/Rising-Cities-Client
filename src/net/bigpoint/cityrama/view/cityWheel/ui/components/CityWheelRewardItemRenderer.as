package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   
   public class CityWheelRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityWheelRewardVo;
      
      private var _dataDirty:Boolean;
      
      public function CityWheelRewardItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 130;
         this.height = 95;
         this.autoDrawBackground = false;
         this.alpha = 1;
         this.mxmlContent = [this._CityWheelRewardItemRenderer_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___CityWheelRewardItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___CityWheelRewardItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"locked",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.3
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataDirty = true;
            this._data = param1 as CityWheelRewardVo;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty && Boolean(this._data))
         {
            switch(this._data.rewardType)
            {
               case ServerTagConstants.WHEEL_REWARD_JACKPOT:
                  this.background.dynaBmpSourceName = "item_background_jackpot";
                  this.background.visible = this.background.includeInLayout = true;
                  break;
               case ServerTagConstants.WHEEL_REWARD_HIGH:
                  this.background.dynaBmpSourceName = "item_background_good";
                  this.background.visible = this.background.includeInLayout = true;
                  break;
               default:
                  this.background.visible = this.background.includeInLayout = false;
            }
            this.icon.dynaBmpSourceName = this._data.iconName;
            this.icon.dynaLibName = this._data.libName;
            if(this._data.outputType == ServerOutputConstants.PERMISSION || this._data.outputType == ServerOutputConstants.ASSIST)
            {
               var _loc1_:GlowFilter = new GlowFilter(16777215,1,8,8,8,1,false,false);
               var _loc2_:DropShadowFilter = new DropShadowFilter(0,1,0,1,3,3);
               this.icon.filters = [null,null];
            }
            else
            {
               this.icon.filters = [];
            }
            this._dataDirty = false;
         }
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OVER,true,this.itemIndex));
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OUT,true));
      }
      
      private function _CityWheelRewardItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 95;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_BriskImageDynaLib1_i(),this._CityWheelRewardItemRenderer_VGroup1_c(),this._CityWheelRewardItemRenderer_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 95;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "separator_main";
         _loc1_.height = 95;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___CityWheelRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      public function ___CityWheelRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
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
   }
}

