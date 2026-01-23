package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class StickyNoteSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1682557459bottomTape:Group;
      
      private var _809612678contentGroup:Group;
      
      private var _1718414793leftTape:Group;
      
      private var _1569129122rightTape:Group;
      
      private var _1139886057topTape:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function StickyNoteSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._StickyNoteSkin_Group1_c(),this._StickyNoteSkin_Group2_i(),this._StickyNoteSkin_Group3_i(),this._StickyNoteSkin_Group4_i(),this._StickyNoteSkin_Group5_i(),this._StickyNoteSkin_Group6_i()];
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
      
      private function _StickyNoteSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 5;
         _loc1_.right = 5;
         _loc1_.top = 5;
         _loc1_.left = 5;
         _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "postit_bg";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 15;
         _loc1_.right = 15;
         _loc1_.top = 28;
         _loc1_.bottom = 20;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 30;
         _loc1_.right = 30;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib2_c()];
         _loc1_.id = "topTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topTape = _loc1_;
         BindingManager.executeBindings(this,"topTape",this.topTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.left = 30;
         _loc1_.right = 30;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib3_c()];
         _loc1_.id = "bottomTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomTape = _loc1_;
         BindingManager.executeBindings(this,"bottomTape",this.bottomTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.top = 5;
         _loc1_.bottom = 5;
         _loc1_.left = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib4_c()];
         _loc1_.id = "leftTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftTape = _loc1_;
         BindingManager.executeBindings(this,"leftTape",this.leftTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.top = 5;
         _loc1_.bottom = 5;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib5_c()];
         _loc1_.id = "rightTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rightTape = _loc1_;
         BindingManager.executeBindings(this,"rightTape",this.rightTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomTape() : Group
      {
         return this._1682557459bottomTape;
      }
      
      public function set bottomTape(param1:Group) : void
      {
         var _loc2_:Object = this._1682557459bottomTape;
         if(_loc2_ !== param1)
         {
            this._1682557459bottomTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTape() : Group
      {
         return this._1718414793leftTape;
      }
      
      public function set leftTape(param1:Group) : void
      {
         var _loc2_:Object = this._1718414793leftTape;
         if(_loc2_ !== param1)
         {
            this._1718414793leftTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rightTape() : Group
      {
         return this._1569129122rightTape;
      }
      
      public function set rightTape(param1:Group) : void
      {
         var _loc2_:Object = this._1569129122rightTape;
         if(_loc2_ !== param1)
         {
            this._1569129122rightTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topTape() : Group
      {
         return this._1139886057topTape;
      }
      
      public function set topTape(param1:Group) : void
      {
         var _loc2_:Object = this._1139886057topTape;
         if(_loc2_ !== param1)
         {
            this._1139886057topTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topTape",_loc2_,param1));
            }
         }
      }
   }
}

