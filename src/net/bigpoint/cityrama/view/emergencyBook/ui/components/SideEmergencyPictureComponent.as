package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class SideEmergencyPictureComponent extends Group implements IStateClient2
   {
      
      private var _627338065emergencyLargeImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideEmergencyPictureComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SideEmergencyPictureComponent_Group2_c()];
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
      
      public function set data(param1:EmergencyZoneLayerVo) : void
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
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.emergencyLargeImage.dynaSWFFileName = this._data.emergencySWF;
            this.emergencyLargeImage.dynaLibName = this._data.emergencyLib;
            this.emergencyLargeImage.dynaBmpSourceName = this._data.emergencyImage;
         }
      }
      
      private function _SideEmergencyPictureComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 68;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._SideEmergencyPictureComponent_BriskImageDynaLib1_c(),this._SideEmergencyPictureComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideEmergencyPictureComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.width = 188;
         _loc1_.height = 229;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideEmergencyPictureComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = -1;
         _loc1_.verticalCenter = -1;
         _loc1_.id = "emergencyLargeImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyLargeImage = _loc1_;
         BindingManager.executeBindings(this,"emergencyLargeImage",this.emergencyLargeImage);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyLargeImage() : BriskImageDynaLib
      {
         return this._627338065emergencyLargeImage;
      }
      
      public function set emergencyLargeImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._627338065emergencyLargeImage;
         if(_loc2_ !== param1)
         {
            this._627338065emergencyLargeImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyLargeImage",_loc2_,param1));
            }
         }
      }
   }
}

