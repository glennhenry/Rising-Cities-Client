package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementInventoryItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const GET_MORE_EVENT:String = "GET_MORE_EVENT";
      
      public static const itemWidth:Number = 82;
      
      private var _1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7:BriskImageDynaLib;
      
      private var _513842358_ImprovementInventoryItemRenderer_Group1:Group;
      
      private var _1233113849amountGroup:Group;
      
      private var _1781598580getMoreGroup:Group;
      
      private var _1785696745getMoreLabel:LocaLabel;
      
      private var _3242771item:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2126455888itemBadge:BriskImageDynaLib;
      
      private var _283910695masterBG:BriskImageDynaLib;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementInventoryItemRendererVo;
      
      private var _dirty:Boolean;
      
      private var _currentRenderState:String = "";
      
      public function ImprovementInventoryItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.minHeight = 87;
         this.minWidth = 82;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib1_i(),this._ImprovementInventoryItemRenderer_Group1_i(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib7_i(),this._ImprovementInventoryItemRenderer_Group3_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___ImprovementInventoryItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("rollOver",this.___ImprovementInventoryItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___ImprovementInventoryItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_Group1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
               "name":"dynaBmpSourceName",
               "value":"abort_over"
            })]
         }),new State({
            "name":"overAndSelected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"masterBG",
               "name":"dynaBmpSourceName",
               "value":"item_master_bg_green"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_Group1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
               "name":"dynaBmpSourceName",
               "value":"abort_over"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"empty",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",
               "name":"visible",
               "value":false
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
         this.width = itemWidth;
         this.getMoreLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.getMore.capital"));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dirty = true;
            this._data = ImprovementInventoryItemRendererVo(param1);
            invalidateProperties();
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(this._data)
         {
            if(this._data.isGetMore || this._data.isEmpty)
            {
               return;
            }
         }
         if(param1)
         {
            if(currentState == "over")
            {
               this._currentRenderState = "overAndSelected";
            }
            else
            {
               this._currentRenderState = "selected";
            }
         }
         else if(currentState == "overAndSelected")
         {
            this._currentRenderState = "over";
         }
         else
         {
            this._currentRenderState = "normal";
         }
         var _loc2_:Boolean = param1 && param1 != selected;
         super.selected = param1;
         if(_loc2_)
         {
            if(this._data == null || this._data.isEmpty)
            {
               return;
            }
            dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this._data.cid,true));
         }
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._data) && this._dirty)
         {
            this._dirty = false;
            if(!this.selected)
            {
               this._currentRenderState = "normal";
               this.setCurrentState("normal");
            }
            else
            {
               this.selected = false;
               this.selected = true;
            }
            this.masterBG.visible = this.masterBG.includeInLayout = this._data.useMasterBg;
            this.getMoreGroup.includeInLayout = this.getMoreGroup.visible = this._data.isGetMore;
            this.itemBackground.visible = this.itemBackground.includeInLayout = this.amountGroup.visible = this.amountGroup.includeInLayout = this.itemBadge.visible = this.itemBadge.includeInLayout = this.item.visible = this.item.includeInLayout = !this._data.isEmpty && !this._data.isGetMore;
            if(!this._data.isEmpty && !this._data.isGetMore)
            {
               this.itemBackground.briskDynaVo = this._data.itemBackgroundDynaVo;
               this.item.briskDynaVo = this._data.itemDynaVo;
               if(this._data.badgeDynaVo)
               {
                  this.itemBadge.briskDynaVo = this._data.badgeDynaVo;
               }
               this.itemBadge.visible = this.itemBadge.includeInLayout = this._data.badgeDynaVo != null;
               this.itemAmountLabel.text = this._data.amount.toString();
            }
         }
         super.commitProperties();
      }
      
      override protected function getCurrentRendererState() : String
      {
         if(this._currentRenderState != "")
         {
            return this._currentRenderState;
         }
         return super.getCurrentRendererState();
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(this._data != null)
         {
            if(this._data.isEmpty)
            {
               param1 = "normal";
            }
         }
         this._currentRenderState = param1;
         super.setCurrentState(param1,param2);
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         if(this._data.isEmpty)
         {
            return;
         }
         if(!selected)
         {
            this.setCurrentState("over");
         }
         else
         {
            this.setCurrentState("overAndSelected");
         }
         dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.ITEM_OVER,this._data.cid,true,this._data.improvementVo));
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         if(this._data.isEmpty)
         {
            return;
         }
         if(!selected)
         {
            this.setCurrentState("normal");
         }
         else
         {
            this.setCurrentState("selected");
         }
         dispatchEvent(new ImprovementInventoryItemRendererEvent(ImprovementInventoryItemRendererEvent.ITEM_OUT));
      }
      
      private function handleGetMore() : void
      {
         dispatchEvent(new Event(GET_MORE_EVENT,true));
      }
      
      public function get isEmpty() : Boolean
      {
         if(this._data)
         {
            if(!this._data.isEmpty)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get measuredWidth() : Number
      {
         return itemWidth;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "item_master_bg_normal";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.id = "masterBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masterBG = _loc1_;
         BindingManager.executeBindings(this,"masterBG",this.masterBG);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.alpha = 1;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_Group2_i(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib4_i(),this._ImprovementInventoryItemRenderer_VGroup1_c(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib6_i()];
         _loc1_.id = "_ImprovementInventoryItemRenderer_Group1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementInventoryItemRenderer_Group1 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_Group1",this._ImprovementInventoryItemRenderer_Group1);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.height = 22;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 68;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib2_i(),this._ImprovementInventoryItemRenderer_HGroup1_c()];
         _loc1_.id = "amountGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountGroup = _loc1_;
         BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 22;
         _loc1_.width = 61;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "item_amount_bg";
         _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementInventoryItemRenderer_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",this._ImprovementInventoryItemRenderer_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib3_i(),this._ImprovementInventoryItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 14;
         _loc1_.width = 15;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "amount_icon_mini";
         _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementInventoryItemRenderer_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",this._ImprovementInventoryItemRenderer_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "improvementAmount";
         _loc1_.setStyle("paddingTop",3);
         _loc1_.id = "itemAmountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemAmountLabel = _loc1_;
         BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 9;
         _loc1_.id = "itemBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemBackground = _loc1_;
         BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 10;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.maxWidth = 64;
         _loc1_.maxHeight = 63;
         _loc1_.id = "item";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.item = _loc1_;
         BindingManager.executeBindings(this,"item",this.item);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 9;
         _loc1_.left = 0;
         _loc1_.id = "itemBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemBadge = _loc1_;
         BindingManager.executeBindings(this,"itemBadge",this.itemBadge);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 25;
         _loc1_.width = 25;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "abort_normal";
         _loc1_.visible = false;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.id = "_ImprovementInventoryItemRenderer_BriskImageDynaLib7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementInventoryItemRenderer_BriskImageDynaLib7 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",this._ImprovementInventoryItemRenderer_BriskImageDynaLib7);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_BriskImageDynaLib8_c(),this._ImprovementInventoryItemRenderer_HGroup2_c(),this._ImprovementInventoryItemRenderer_BriskImageDynaLib9_i()];
         _loc1_.addEventListener("mouseOver",this.__getMoreGroup_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__getMoreGroup_mouseOut);
         _loc1_.addEventListener("click",this.__getMoreGroup_click);
         _loc1_.id = "getMoreGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.getMoreGroup = _loc1_;
         BindingManager.executeBindings(this,"getMoreGroup",this.getMoreGroup);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "postit_get_more";
         _loc1_.left = 9;
         _loc1_.top = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 44;
         _loc1_.width = 52;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 27;
         _loc1_.left = 14;
         _loc1_.mxmlContent = [this._ImprovementInventoryItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "whiteNineCenter";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.percentWidth = 97;
         _loc1_.id = "getMoreLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.getMoreLabel = _loc1_;
         BindingManager.executeBindings(this,"getMoreLabel",this.getMoreLabel);
         return _loc1_;
      }
      
      private function _ImprovementInventoryItemRenderer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.right = -5;
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      public function __getMoreGroup_mouseOver(param1:MouseEvent) : void
      {
         this.plusIcon.scaleX += 0.05;
         this.plusIcon.scaleY += 0.05;
      }
      
      public function __getMoreGroup_mouseOut(param1:MouseEvent) : void
      {
         this.plusIcon.scaleX = 1;
         this.plusIcon.scaleY = 1;
      }
      
      public function __getMoreGroup_click(param1:MouseEvent) : void
      {
         this.handleGetMore();
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      public function ___ImprovementInventoryItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2;
         if(_loc2_ !== param1)
         {
            this._1973488541_ImprovementInventoryItemRenderer_BriskImageDynaLib2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3;
         if(_loc2_ !== param1)
         {
            this._1973488540_ImprovementInventoryItemRenderer_BriskImageDynaLib3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_BriskImageDynaLib7() : BriskImageDynaLib
      {
         return this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7;
      }
      
      public function set _ImprovementInventoryItemRenderer_BriskImageDynaLib7(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7;
         if(_loc2_ !== param1)
         {
            this._1973488536_ImprovementInventoryItemRenderer_BriskImageDynaLib7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_BriskImageDynaLib7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementInventoryItemRenderer_Group1() : Group
      {
         return this._513842358_ImprovementInventoryItemRenderer_Group1;
      }
      
      public function set _ImprovementInventoryItemRenderer_Group1(param1:Group) : void
      {
         var _loc2_:Object = this._513842358_ImprovementInventoryItemRenderer_Group1;
         if(_loc2_ !== param1)
         {
            this._513842358_ImprovementInventoryItemRenderer_Group1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementInventoryItemRenderer_Group1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amountGroup() : Group
      {
         return this._1233113849amountGroup;
      }
      
      public function set amountGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1233113849amountGroup;
         if(_loc2_ !== param1)
         {
            this._1233113849amountGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get getMoreGroup() : Group
      {
         return this._1781598580getMoreGroup;
      }
      
      public function set getMoreGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1781598580getMoreGroup;
         if(_loc2_ !== param1)
         {
            this._1781598580getMoreGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getMoreGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get getMoreLabel() : LocaLabel
      {
         return this._1785696745getMoreLabel;
      }
      
      public function set getMoreLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1785696745getMoreLabel;
         if(_loc2_ !== param1)
         {
            this._1785696745getMoreLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getMoreLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : BriskImageDynaLib
      {
         return this._3242771item;
      }
      
      public function set item(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmountLabel() : LocaLabel
      {
         return this._1376040855itemAmountLabel;
      }
      
      public function set itemAmountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1376040855itemAmountLabel;
         if(_loc2_ !== param1)
         {
            this._1376040855itemAmountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1295462561itemBackground;
         if(_loc2_ !== param1)
         {
            this._1295462561itemBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBadge() : BriskImageDynaLib
      {
         return this._2126455888itemBadge;
      }
      
      public function set itemBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2126455888itemBadge;
         if(_loc2_ !== param1)
         {
            this._2126455888itemBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBadge",_loc2_,param1));
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

