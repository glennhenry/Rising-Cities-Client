package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class RequirementMiniComponent extends HGroup
   {
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _102265gfx:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _canAfford:Boolean;
      
      private var _data:ConfigOutputDTO;
      
      private var _dirty:Boolean;
      
      public function RequirementMiniComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.verticalAlign = "middle";
         this.gap = 0;
         this.mxmlContent = [this._RequirementMiniComponent_BriskImageDynaLib1_i(),this._RequirementMiniComponent_Group1_c(),this._RequirementMiniComponent_LocaLabel1_i(),this._RequirementMiniComponent_Group2_c(),this._RequirementMiniComponent_BriskImageDynaLib2_i()];
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
      
      public function setData(param1:ConfigOutputDTO, param2:Boolean) : void
      {
         if(RandomUtilities.isUnEqual(this._data,param1) || param2 != this._canAfford)
         {
            this._dirty = true;
            this._data = param1;
            this._canAfford = param2;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dirty)
         {
            this._dirty = false;
            this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.outputAmount));
            if(this._data.goodConfig)
            {
               this.gfx.dynaBmpSourceName = "small_" + this._data.goodConfig.gfxId;
               this.gfx.dynaLibName = "gui_popups_smallGoodIcons";
            }
            else if(this._data.resourceConfig)
            {
               switch(this._data.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     this.gfx.dynaBmpSourceName = "cc_icon_medium";
               }
               this.gfx.dynaLibName = "gui_popups_paperPopup";
            }
            this.checkmark.dynaBmpSourceName = this._canAfford ? "checkmark_green" : "checkmark_gray";
         }
      }
      
      private function _RequirementMiniComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "gfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.gfx = _loc1_;
         BindingManager.executeBindings(this,"gfx",this.gfx);
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "levelLabel";
         _loc1_.id = "amountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountLabel = _loc1_;
         BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_gray";
         _loc1_.id = "checkmark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkmark = _loc1_;
         BindingManager.executeBindings(this,"checkmark",this.checkmark);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229015684amountLabel;
         if(_loc2_ !== param1)
         {
            this._1229015684amountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._399321045checkmark;
         if(_loc2_ !== param1)
         {
            this._399321045checkmark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gfx() : BriskImageDynaLib
      {
         return this._102265gfx;
      }
      
      public function set gfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._102265gfx;
         if(_loc2_ !== param1)
         {
            this._102265gfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfx",_loc2_,param1));
            }
         }
      }
   }
}

