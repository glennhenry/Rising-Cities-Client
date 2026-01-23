package net.bigpoint.cityrama.view.assistants.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class PatrolSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      private var _2131590956itemGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var _398457948miniProgress:ProgressBarMini;
      
      private var _1914490085patrolIcon:BriskImageDynaLib;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PatrolViewVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolSideMenu()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 55;
         this.minHeight = 53;
         this.mxmlContent = [this._PatrolSideMenu_VGroup1_c(),this._PatrolSideMenu_Group3_i()];
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            if(this._data.isActive)
            {
               this.plusIcon.includeInLayout = this.plusIcon.visible = false;
               var _loc1_:ProgressBarMiniVo = new ProgressBarMiniVo();
               null.currentTime = this._data.timerVo.currentTime;
               null.endTime = this._data.timerVo.targetTime;
               null.startTime = this._data.timerVo.startTime;
               this.miniProgress.data = null;
               this.miniProgress.includeInLayout = this.miniProgress.visible = true;
               this.patrolIcon.dynaLibName = "gui_main_hud";
               this.patrolIcon.dynaBmpSourceName = "patrolIcon_" + this._data.gfxId;
            }
            else
            {
               this.patrolIcon.dynaLibName = "gui_main_hud";
               this.patrolIcon.dynaBmpSourceName = "patrolIcon_0";
               this.plusIcon.includeInLayout = this.plusIcon.visible = true;
               this.miniProgress.includeInLayout = this.miniProgress.visible = false;
            }
         }
      }
      
      private function onClick() : void
      {
         dispatchEvent(new Event(CLICK_INFO,true,true));
      }
      
      private function onMouseOver() : void
      {
         if(this.plusIcon.includeInLayout)
         {
            this.plusIcon.scaleX += 0.05;
            this.plusIcon.scaleY += 0.05;
         }
         dispatchEvent(new Event(SHOW_INFO,true,true));
      }
      
      private function onMouseOut() : void
      {
         if(this.plusIcon.includeInLayout)
         {
            this.plusIcon.scaleX = 1;
            this.plusIcon.scaleY = 1;
         }
         dispatchEvent(new Event(HIDE_INFO,true,true));
      }
      
      public function set data(param1:PatrolViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override public function get measuredHeight() : Number
      {
         if(this.miniProgress.includeInLayout)
         {
            return this.minHeight + this.miniProgress.height - 3;
         }
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _PatrolSideMenu_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -3;
         _loc1_.mxmlContent = [this._PatrolSideMenu_Group2_i(),this._PatrolSideMenu_ProgressBarMini1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolSideMenu_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabledWhereTransparent = false;
         _loc1_.mxmlContent = [this._PatrolSideMenu_BriskImageDynaLib1_c(),this._PatrolSideMenu_BriskImageDynaLib2_i(),this._PatrolSideMenu_BriskImageDynaLib3_i()];
         _loc1_.addEventListener("click",this.__itemGroup_click);
         _loc1_.addEventListener("rollOver",this.__itemGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__itemGroup_rollOut);
         _loc1_.id = "itemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGroup = _loc1_;
         BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
         return _loc1_;
      }
      
      private function _PatrolSideMenu_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _PatrolSideMenu_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "patrolIcon_0";
         _loc1_.bottom = 0;
         _loc1_.right = 4;
         _loc1_.id = "patrolIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.patrolIcon = _loc1_;
         BindingManager.executeBindings(this,"patrolIcon",this.patrolIcon);
         return _loc1_;
      }
      
      private function _PatrolSideMenu_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.top = 0;
         _loc1_.right = 3;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      public function __itemGroup_click(param1:MouseEvent) : void
      {
         this.onClick();
      }
      
      public function __itemGroup_rollOver(param1:MouseEvent) : void
      {
         this.onMouseOver();
      }
      
      public function __itemGroup_rollOut(param1:MouseEvent) : void
      {
         this.onMouseOut();
      }
      
      private function _PatrolSideMenu_ProgressBarMini1_i() : ProgressBarMini
      {
         var _loc1_:ProgressBarMini = new ProgressBarMini();
         _loc1_.width = 40;
         _loc1_.revertProgress = true;
         _loc1_.id = "miniProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.miniProgress = _loc1_;
         BindingManager.executeBindings(this,"miniProgress",this.miniProgress);
         return _loc1_;
      }
      
      private function _PatrolSideMenu_Group3_i() : Group
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
      public function get itemGroup() : Group
      {
         return this._2131590956itemGroup;
      }
      
      public function set itemGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2131590956itemGroup;
         if(_loc2_ !== param1)
         {
            this._2131590956itemGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGroup",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get miniProgress() : ProgressBarMini
      {
         return this._398457948miniProgress;
      }
      
      public function set miniProgress(param1:ProgressBarMini) : void
      {
         var _loc2_:Object = this._398457948miniProgress;
         if(_loc2_ !== param1)
         {
            this._398457948miniProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniProgress",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolIcon() : BriskImageDynaLib
      {
         return this._1914490085patrolIcon;
      }
      
      public function set patrolIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1914490085patrolIcon;
         if(_loc2_ !== param1)
         {
            this._1914490085patrolIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc2_ !== param1)
         {
            this._1849499341plusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
            }
         }
      }
   }
}

