package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GridItemFriendBookComponent;
   import spark.skins.SparkSkin;
   
   public class GridItemFriendBookEmptySkin extends SparkSkin implements IStateClient2
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemFriendBookComponent;
      
      public function GridItemFriendBookEmptySkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 132;
         this.height = 160;
         this.mxmlContent = [this._GridItemFriendBookEmptySkin_BriskImageDynaLib1_i()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___GridItemFriendBookEmptySkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
      }
      
      private function _GridItemFriendBookEmptySkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.verticalCenter = 8;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "polaroid_freespace";
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      public function ___GridItemFriendBookEmptySkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemFriendBookComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemFriendBookComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

