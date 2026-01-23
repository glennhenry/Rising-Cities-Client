package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.geom.TransformOffsets;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.states.Transition;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.Image;
   import spark.components.supportClasses.ItemRenderer;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   
   use namespace mx_internal;
   
   public class SideMenueArchCategoryItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _2008488570ImageContainer:Group;
      
      public var _SideMenueArchCategoryItemRenderer_Animate1:Animate;
      
      public var _SideMenueArchCategoryItemRenderer_Animate2:Animate;
      
      public var _SideMenueArchCategoryItemRenderer_Animate3:Animate;
      
      private var _1844889811newItem:BriskImageDynaLib;
      
      private var _1548407232offsets:TransformOffsets;
      
      private var _1039378908selectionRing:Image;
      
      private var _816216256visual:Image;
      
      private var _1073447526visualActive:Image;
      
      private var _320432167visualIcon:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SideMenueArchCategoryItemRenderer()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._SideMenueArchCategoryItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_components_SideMenueArchCategoryItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SideMenueArchCategoryItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.left = 10;
         this.postLayoutTransformOffsets = this._SideMenueArchCategoryItemRenderer_TransformOffsets1_i();
         this.transitions = [this._SideMenueArchCategoryItemRenderer_Transition1_c(),this._SideMenueArchCategoryItemRenderer_Transition2_c(),this._SideMenueArchCategoryItemRenderer_Transition3_c()];
         this.mxmlContent = [this._SideMenueArchCategoryItemRenderer_Group1_i(),this._SideMenueArchCategoryItemRenderer_BriskImageDynaLib1_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___SideMenueArchCategoryItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("click",this.___SideMenueArchCategoryItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"offsets",
               "name":"x",
               "value":8
            })]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"offsets",
               "name":"x",
               "value":8
            }),new SetProperty().initializeFromObject({
               "target":"visual",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"visualActive",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"selectionRing",
               "name":"visible",
               "value":true
            })]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SideMenueArchCategoryItemRenderer._watcherSetupUtil = param1;
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
      
      private function init() : void
      {
         setStyle("rollOverColor",7295819);
         setStyle("selectionColor",13670794);
      }
      
      private function checkResetToIndex(param1:Event) : void
      {
         if(this.currentState == "selected")
         {
            dispatchEvent(new Event("CloseDetailView_Event",true,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         super.data = param1;
         if(param1)
         {
            _loc2_ = param1 as SideMenueArchCategoryVO;
            this.newItem.visible = this.newItem.includeInLayout = _loc2_.isNew;
            this.visual.source = _loc2_.visual;
            this.visualActive.source = _loc2_.visualActive;
            this.visualIcon.source = _loc2_.visualIcon;
            this.selectionRing.source = _loc2_.selectionRing;
            this.ImageContainer.toolTip = _loc2_.tooltip;
            this.visible = this.includeInLayout = _loc2_.visible;
            this.enabled = _loc2_.enable;
         }
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         super.stateChanged(param1,param2,param3);
         if(param1 == "selected")
         {
            if(this.newItem.visible)
            {
               this.newItem.visible = false;
               this.newItem.includeInLayout = false;
            }
         }
      }
      
      private function _SideMenueArchCategoryItemRenderer_TransformOffsets1_i() : TransformOffsets
      {
         var _loc1_:TransformOffsets = new TransformOffsets();
         this.offsets = _loc1_;
         BindingManager.executeBindings(this,"offsets",this.offsets);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "*";
         _loc1_.toState = "hovered";
         _loc1_.autoReverse = false;
         _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate1_i();
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 200;
         _loc1_.motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath1_c()];
         this._SideMenueArchCategoryItemRenderer_Animate1 = _loc1_;
         BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate1",this._SideMenueArchCategoryItemRenderer_Animate1);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath1_c() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "x";
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "selected";
         _loc1_.toState = "normal";
         _loc1_.autoReverse = false;
         _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate2_i();
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate2_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 200;
         _loc1_.motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath2_c()];
         this._SideMenueArchCategoryItemRenderer_Animate2 = _loc1_;
         BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate2",this._SideMenueArchCategoryItemRenderer_Animate2);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath2_c() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "x";
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition3_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "hovered";
         _loc1_.toState = "normal";
         _loc1_.autoReverse = false;
         _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate3_i();
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate3_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 200;
         _loc1_.motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath3_c()];
         this._SideMenueArchCategoryItemRenderer_Animate3 = _loc1_;
         BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate3",this._SideMenueArchCategoryItemRenderer_Animate3);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath3_c() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "x";
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._SideMenueArchCategoryItemRenderer_Image1_i(),this._SideMenueArchCategoryItemRenderer_Image2_i(),this._SideMenueArchCategoryItemRenderer_Image3_i(),this._SideMenueArchCategoryItemRenderer_Image4_i()];
         _loc1_.id = "ImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ImageContainer = _loc1_;
         BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.source = "";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "visual";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visual = _loc1_;
         BindingManager.executeBindings(this,"visual",this.visual);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image2_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.visible = false;
         _loc1_.source = "";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "visualActive";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visualActive = _loc1_;
         BindingManager.executeBindings(this,"visualActive",this.visualActive);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image3_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.source = "";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "visualIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visualIcon = _loc1_;
         BindingManager.executeBindings(this,"visualIcon",this.visualIcon);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image4_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.visible = false;
         _loc1_.source = "";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "selectionRing";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectionRing = _loc1_;
         BindingManager.executeBindings(this,"selectionRing",this.selectionRing);
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "symbol_new_small";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "newItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newItem = _loc1_;
         BindingManager.executeBindings(this,"newItem",this.newItem);
         return _loc1_;
      }
      
      public function ___SideMenueArchCategoryItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.init();
      }
      
      public function ___SideMenueArchCategoryItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.checkResetToIndex(param1);
      }
      
      private function _SideMenueArchCategoryItemRenderer_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate1.target","offsets");
         _loc1_[1] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate2.target","offsets");
         _loc1_[2] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate3.target","offsets");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : Group
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:Group) : void
      {
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc2_ !== param1)
         {
            this._2008488570ImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newItem() : BriskImageDynaLib
      {
         return this._1844889811newItem;
      }
      
      public function set newItem(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1844889811newItem;
         if(_loc2_ !== param1)
         {
            this._1844889811newItem = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newItem",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get offsets() : TransformOffsets
      {
         return this._1548407232offsets;
      }
      
      public function set offsets(param1:TransformOffsets) : void
      {
         var _loc2_:Object = this._1548407232offsets;
         if(_loc2_ !== param1)
         {
            this._1548407232offsets = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offsets",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectionRing() : Image
      {
         return this._1039378908selectionRing;
      }
      
      public function set selectionRing(param1:Image) : void
      {
         var _loc2_:Object = this._1039378908selectionRing;
         if(_loc2_ !== param1)
         {
            this._1039378908selectionRing = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectionRing",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : Image
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:Image) : void
      {
         var _loc2_:Object = this._816216256visual;
         if(_loc2_ !== param1)
         {
            this._816216256visual = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visualActive() : Image
      {
         return this._1073447526visualActive;
      }
      
      public function set visualActive(param1:Image) : void
      {
         var _loc2_:Object = this._1073447526visualActive;
         if(_loc2_ !== param1)
         {
            this._1073447526visualActive = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualActive",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visualIcon() : Image
      {
         return this._320432167visualIcon;
      }
      
      public function set visualIcon(param1:Image) : void
      {
         var _loc2_:Object = this._320432167visualIcon;
         if(_loc2_ !== param1)
         {
            this._320432167visualIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualIcon",_loc2_,param1));
            }
         }
      }
   }
}

