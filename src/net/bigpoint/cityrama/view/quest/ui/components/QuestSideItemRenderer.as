package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class QuestSideItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const SHOW_QUEST_INFOLAYER:String = "SHOW_QUEST_INFOLAYER";
      
      public static const HIDE_QUEST_INFOLAYER:String = "HIDE_QUEST_INFOLAYER";
      
      public static const QUEST_SIDE_ITEM_CLICKED:String = "QUEST_SIDE_ITEM_CLICKED";
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _2131590956itemGroup:Group;
      
      private var _1364427554newQuest:BriskImageDynaLib;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private var _dataDirty:Boolean;
      
      private var _intervalID:uint;
      
      private var _tween:TweenMax;
      
      private const PREFIX_PRODUCTION_OFFSET:Point = new Point(24,-2.5);
      
      private const PREFIX_SELLING_OFFSET:Point = new Point(30,0);
      
      public function QuestSideItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.minWidth = 70;
         this.minHeight = 60;
         this.mxmlContent = [this._QuestSideItemRenderer_Group1_i()];
         this.currentState = "normal";
         this.addEventListener("click",this.___QuestSideItemRenderer_ItemRenderer1_click);
         this.addEventListener("rollOver",this.___QuestSideItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___QuestSideItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[]
         }),new State({
            "name":"down",
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.killTween();
            this.prefixIcon.visible = false;
            this.prefixIcon.includeInLayout = false;
            this.newQuest.includeInLayout = this.newQuest.visible = this._data.isNewQuest;
            if(this._data.isQuestComplete)
            {
               this.icon.dynaLibName = "gui_ui_questSide";
               this.icon.dynaBmpSourceName = "quest51006";
            }
            else if(this._data.questGfxId == QuestGUIProxy.GFXID_PRODUCTION_TASK || this._data.questGfxId == QuestGUIProxy.GFXID_SELLING_TASK)
            {
               this.icon.dynaBmpSourceName = "";
               if(this._data.questGfxId == QuestGUIProxy.GFXID_PRODUCTION_TASK)
               {
                  this.prefixIcon.left = this.PREFIX_PRODUCTION_OFFSET.x;
                  this.prefixIcon.top = this.PREFIX_PRODUCTION_OFFSET.y;
               }
               else if(this._data.questGfxId == QuestGUIProxy.GFXID_SELLING_TASK)
               {
                  this.prefixIcon.left = this.PREFIX_SELLING_OFFSET.x;
                  this.prefixIcon.top = this.PREFIX_SELLING_OFFSET.y;
               }
               this.prefixIcon.visible = true;
               this.prefixIcon.includeInLayout = true;
               this.icon.dynaLibName = "gui_popups_smallGoodIcons";
               this.icon.dynaBmpSourceName = "small_" + this._data.targetGoodGfxId;
               this.prefixIcon.dynaBmpSourceName = "quest" + this._data.questGfxId;
            }
            else
            {
               this.icon.dynaLibName = "gui_ui_questSide";
               this.icon.dynaBmpSourceName = "quest" + this._data.questGfxId;
            }
            if(this._data.isQuestComplete || this._data.isNewQuest)
            {
               this._tween = TweenMax.to(this.itemGroup,0.5,{
                  "horizontalCenter":5,
                  "repeat":int.MAX_VALUE,
                  "yoyo":true
               });
            }
            else
            {
               this.killTween();
            }
            if(this._data.changed && !this._data.isNewQuest)
            {
               this.addEventListener(FlexEvent.UPDATE_COMPLETE,this.showUpdateInfoLayer);
               this._data.changed = false;
            }
         }
      }
      
      private function showUpdateInfoLayer(param1:FlexEvent) : void
      {
         this.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.showUpdateInfoLayer);
         dispatchEvent(new Event(SHOW_QUEST_INFOLAYER,true,true));
         this._intervalID = setTimeout(owner.dispatchEvent,1000,new Event(HIDE_QUEST_INFOLAYER,true,true));
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(HIDE_QUEST_INFOLAYER,true,true));
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         clearTimeout(this._intervalID);
         dispatchEvent(new Event(SHOW_QUEST_INFOLAYER,true,true));
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(QUEST_SIDE_ITEM_CLICKED,true,true));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataDirty = true;
            this._data = param1 as QuestDetailViewVo;
         }
         invalidateProperties();
      }
      
      private function killTween() : void
      {
         if(this._tween)
         {
            this._tween.kill();
            this._tween = null;
            this.itemGroup.horizontalCenter = 0;
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      private function _QuestSideItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 70;
         _loc1_.height = 60;
         _loc1_.mxmlContent = [this._QuestSideItemRenderer_BriskImageDynaLib1_c(),this._QuestSideItemRenderer_BriskImageDynaLib2_i(),this._QuestSideItemRenderer_BriskImageDynaLib3_i(),this._QuestSideItemRenderer_BriskImageDynaLib4_i()];
         _loc1_.id = "itemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGroup = _loc1_;
         BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
         return _loc1_;
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _QuestSideItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.smoothing = true;
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _QuestSideItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.smoothing = true;
         _loc1_.dynaBmpSourceName = "symbol_new_small";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "newQuest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newQuest = _loc1_;
         BindingManager.executeBindings(this,"newQuest",this.newQuest);
         return _loc1_;
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.handleClick(param1);
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.handleMouseOver(param1);
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.handleMouseOut(param1);
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
      public function get newQuest() : BriskImageDynaLib
      {
         return this._1364427554newQuest;
      }
      
      public function set newQuest(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1364427554newQuest;
         if(_loc2_ !== param1)
         {
            this._1364427554newQuest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newQuest",_loc2_,param1));
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
   }
}

