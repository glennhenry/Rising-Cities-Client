package net.bigpoint.cityrama.view.quest.ui.components
{
   import flash.geom.Point;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class QuestHeaderComponent extends Group implements IStateClient2
   {
      
      private var _1977519450headerText:LocaLabel;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var _1783199621questIcon:BriskImageDynaLib;
      
      private var _1059785390textGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private const PREFIX_PRODUCTION_OFFSET:Point = new Point(24,-2.5);
      
      private const PREFIX_SELLING_OFFSET:Point = new Point(30,0);
      
      public function QuestHeaderComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._QuestHeaderComponent_BlueBarComponent1_c(),this._QuestHeaderComponent_VGroup1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
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
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.prefixIcon.visible = false;
            this.headerText.text = this._data.questHeader;
            this.questIcon.dynaBmpSourceName = "quest" + this._data.questGfxId.toString();
            if(this._data.targetGoodGfxId != 0 && (this._data.questGfxId == QuestGUIProxy.GFXID_PRODUCTION_TASK || this._data.questGfxId == QuestGUIProxy.GFXID_SELLING_TASK))
            {
               this.prefixIcon.visible = true;
               this.questIcon.dynaLibName = "gui_popups_smallGoodIcons";
               this.questIcon.dynaBmpSourceName = "small_" + this._data.targetGoodGfxId;
               this.prefixIcon.dynaBmpSourceName = "quest" + this._data.questGfxId;
               if(this._data.questGfxId == QuestGUIProxy.GFXID_PRODUCTION_TASK)
               {
                  this.prefixIcon.left = this.questIcon.left + this.PREFIX_PRODUCTION_OFFSET.x;
                  this.prefixIcon.top = this.questIcon.top + this.PREFIX_PRODUCTION_OFFSET.y;
               }
               else
               {
                  this.prefixIcon.left = this.questIcon.left + this.PREFIX_SELLING_OFFSET.x;
                  this.prefixIcon.top = this.questIcon.top + this.PREFIX_SELLING_OFFSET.y;
               }
            }
         }
      }
      
      private function _QuestHeaderComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = -5;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._QuestHeaderComponent_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._QuestHeaderComponent_HGroup2_c()];
         _loc1_.id = "textGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textGroup = _loc1_;
         BindingManager.executeBindings(this,"textGroup",this.textGroup);
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QuestHeaderComponent_Group2_c(),this._QuestHeaderComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuestHeaderComponent_BriskImageDynaLib1_i(),this._QuestHeaderComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 0;
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "quest51001";
         _loc1_.id = "questIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.questIcon = _loc1_;
         BindingManager.executeBindings(this,"questIcon",this.questIcon);
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.smoothing = true;
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.id = "prefixIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.prefixIcon = _loc1_;
         BindingManager.executeBindings(this,"prefixIcon",this.prefixIcon);
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "questHeader";
         _loc1_.id = "headerText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerText = _loc1_;
         BindingManager.executeBindings(this,"headerText",this.headerText);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1977519450headerText;
         if(_loc2_ !== param1)
         {
            this._1977519450headerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixIcon() : BriskImageDynaLib
      {
         return this._1340618197prefixIcon;
      }
      
      public function set prefixIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1340618197prefixIcon;
         if(_loc2_ !== param1)
         {
            this._1340618197prefixIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get questIcon() : BriskImageDynaLib
      {
         return this._1783199621questIcon;
      }
      
      public function set questIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1783199621questIcon;
         if(_loc2_ !== param1)
         {
            this._1783199621questIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textGroup() : HGroup
      {
         return this._1059785390textGroup;
      }
      
      public function set textGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1059785390textGroup;
         if(_loc2_ !== param1)
         {
            this._1059785390textGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textGroup",_loc2_,param1));
            }
         }
      }
   }
}

