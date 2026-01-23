package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class SlimProgressBarComponent extends Group
   {
      
      private var _97299bar:HGroup;
      
      private var _1396262968barEnd:BriskImageDynaLib;
      
      private var _334036562barTint:HGroup;
      
      private var _1058183138movingTrophy:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      public var showTrophy:Boolean = false;
      
      private var _progress:Number;
      
      private var _progressDirty:Boolean;
      
      private var _tint:uint = 0;
      
      public function SlimProgressBarComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._SlimProgressBarComponent_HGroup1_c(),this._SlimProgressBarComponent_HGroup2_i(),this._SlimProgressBarComponent_HGroup3_i(),this._SlimProgressBarComponent_BriskImageDynaLib10_i()];
         this.addEventListener("creationComplete",this.___SlimProgressBarComponent_Group1_creationComplete);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         if(this._tint == 0)
         {
            if(getStyle("tint") == null)
            {
               this._tint = 53236;
            }
            else
            {
               this._tint = getStyle("tint") as uint;
            }
         }
         TweenMax.to(this.barTint,0,{"tint":this._tint});
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.movingTrophy.includeInLayout = this.movingTrophy.visible = this.showTrophy;
         if(this._progressDirty)
         {
            this._progressDirty = false;
            this.bar.percentWidth = 100 * this._progress;
            this.barTint.percentWidth = 100 * this._progress;
            if(this.progress == 0)
            {
               this.bar.visible = false;
               this.barTint.visible = false;
            }
            else
            {
               this.bar.visible = true;
               this.barTint.visible = true;
            }
         }
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         if(param1 != this.progress)
         {
            this._progress = param1;
            this._progressDirty = true;
            if(this._progress != 0 && this.revertProgress)
            {
               this._progress = 1 - this._progress;
            }
            invalidateProperties();
         }
      }
      
      public function set tint(param1:uint) : void
      {
         this._tint = param1;
         TweenMax.to(this.barTint,0,{"tint":this._tint});
      }
      
      private function setNewTrophyPadding() : void
      {
         if(this.showTrophy)
         {
            this.movingTrophy.left = this.getNewTrophyPadding();
         }
      }
      
      private function getNewTrophyPadding() : Number
      {
         var _loc1_:Number = NaN;
         if(this.barEnd.width != 0 && this.movingTrophy.width != 0)
         {
            return this.barEnd.x + (this.barEnd.width - this.movingTrophy.width / 2);
         }
         return 0;
      }
      
      private function _SlimProgressBarComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SlimProgressBarComponent_BriskImageDynaLib1_c(),this._SlimProgressBarComponent_BriskImageDynaLib2_c(),this._SlimProgressBarComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.mxmlContent = [this._SlimProgressBarComponent_BriskImageDynaLib4_c(),this._SlimProgressBarComponent_BriskImageDynaLib5_c(),this._SlimProgressBarComponent_BriskImageDynaLib6_i()];
         _loc1_.id = "bar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar = _loc1_;
         BindingManager.executeBindings(this,"bar",this.bar);
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.addEventListener("sizeChanged",this.___SlimProgressBarComponent_BriskImageDynaLib5_sizeChanged);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SlimProgressBarComponent_BriskImageDynaLib5_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         this.setNewTrophyPadding();
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
         _loc1_.id = "barEnd";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barEnd = _loc1_;
         BindingManager.executeBindings(this,"barEnd",this.barEnd);
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.blendMode = "overlay";
         _loc1_.mxmlContent = [this._SlimProgressBarComponent_BriskImageDynaLib7_c(),this._SlimProgressBarComponent_BriskImageDynaLib8_c(),this._SlimProgressBarComponent_BriskImageDynaLib9_c()];
         _loc1_.id = "barTint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barTint = _loc1_;
         BindingManager.executeBindings(this,"barTint",this.barTint);
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "icon_trophy_mini";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.addEventListener("updateComplete",this.__movingTrophy_updateComplete);
         _loc1_.id = "movingTrophy";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.movingTrophy = _loc1_;
         BindingManager.executeBindings(this,"movingTrophy",this.movingTrophy);
         return _loc1_;
      }
      
      public function __movingTrophy_updateComplete(param1:FlexEvent) : void
      {
         this.setNewTrophyPadding();
      }
      
      public function ___SlimProgressBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _loc2_:Object = this._97299bar;
         if(_loc2_ !== param1)
         {
            this._97299bar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barEnd() : BriskImageDynaLib
      {
         return this._1396262968barEnd;
      }
      
      public function set barEnd(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1396262968barEnd;
         if(_loc2_ !== param1)
         {
            this._1396262968barEnd = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barEnd",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _loc2_:Object = this._334036562barTint;
         if(_loc2_ !== param1)
         {
            this._334036562barTint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get movingTrophy() : BriskImageDynaLib
      {
         return this._1058183138movingTrophy;
      }
      
      public function set movingTrophy(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1058183138movingTrophy;
         if(_loc2_ !== param1)
         {
            this._1058183138movingTrophy = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingTrophy",_loc2_,param1));
            }
         }
      }
   }
}

