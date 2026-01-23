package net.bigpoint.cityrama.view.settingsbar.ui.dev
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
   import mx.controls.ProgressBar;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.LinearGradientStroke;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.skins.DebugBoxSkin;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.SkinnableContainer;
   import spark.components.TextInput;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class QMConsole extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _QMConsole_VGroup2:VGroup;
      
      public var _QMConsole_VGroup3:VGroup;
      
      public var _QMConsole_VGroup4:VGroup;
      
      private var _1665131364cleanBoulder:Button;
      
      private var _412894224compareBags:ToggleButton;
      
      private var _951510359console:RichEditableText;
      
      private var _1995998646constructAll:Button;
      
      private var _768939741divInventoryButton:Button;
      
      private var _390042577divResourceButton:ToggleButton;
      
      private var _235254679inagurateAll:Button;
      
      private var _64239424inventorySnapshot:ToggleButton;
      
      private var _1131509414progressBar:ProgressBar;
      
      private var _762537260repairAll:Button;
      
      private var _1529240512showFeatrueDebug:ToggleButton;
      
      private var _1509476196showmacros:ToggleButton;
      
      private var _1881524610showwheel:ToggleButton;
      
      private var _809744082traceFeatureStats:ToggleButton;
      
      private var _1450144975unlockAllExpansions:Button;
      
      private var _2021615751usewheelbuff:ToggleButton;
      
      private var _1413042176wheelSniffer:Button;
      
      private var _1668363766wheelspins:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function QMConsole()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._QMConsole_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_settingsbar_ui_dev_QMConsoleWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return QMConsole[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.maxHeight = 530;
         this.mxmlContent = [this._QMConsole_SkinnableContainer1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         QMConsole._watcherSetupUtil = param1;
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
      
      public function trace(param1:String) : void
      {
         this.console.text = this.console.text + "\n" + param1;
      }
      
      private function button1_clickHandler(param1:MouseEvent) : void
      {
         this.console.text = "";
      }
      
      private function _QMConsole_SkinnableContainer1_c() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._QMConsole_Array2_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_Array2_c() : Array
      {
         return [this._QMConsole_VGroup1_c()];
      }
      
      private function _QMConsole_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.maxHeight = 530;
         _loc1_.mxmlContent = [this._QMConsole_Group2_c(),this._QMConsole_HGroup1_c(),this._QMConsole_HGroup2_c(),this._QMConsole_VGroup2_i(),this._QMConsole_VGroup3_i(),this._QMConsole_VGroup4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minHeight = 20;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 530;
         _loc1_.mxmlContent = [this._QMConsole_Rect1_c(),this._QMConsole_Scroller1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.radiusX = 4;
         _loc1_.radiusY = 4;
         _loc1_.stroke = this._QMConsole_LinearGradientStroke1_c();
         _loc1_.fill = this._QMConsole_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _QMConsole_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _QMConsole_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.entries = [this._QMConsole_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _QMConsole_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.alpha = 1;
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _QMConsole_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         _loc1_.maxHeight = 430;
         _loc1_.percentWidth = 100;
         _loc1_.viewport = this._QMConsole_RichEditableText1_i();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         _loc1_.percentWidth = 100;
         _loc1_.selectable = true;
         _loc1_.id = "console";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.console = _loc1_;
         BindingManager.executeBindings(this,"console",this.console);
         return _loc1_;
      }
      
      private function _QMConsole_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._QMConsole_Button1_c(),this._QMConsole_ToggleButton1_i(),this._QMConsole_ToggleButton2_i(),this._QMConsole_ToggleButton3_i(),this._QMConsole_ToggleButton4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "clear console";
         _loc1_.addEventListener("click",this.___QMConsole_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___QMConsole_Button1_click(param1:MouseEvent) : void
      {
         this.button1_clickHandler(param1);
      }
      
      private function _QMConsole_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "wheel";
         _loc1_.id = "showwheel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showwheel = _loc1_;
         BindingManager.executeBindings(this,"showwheel",this.showwheel);
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton2_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "fielditem macros";
         _loc1_.id = "showmacros";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showmacros = _loc1_;
         BindingManager.executeBindings(this,"showmacros",this.showmacros);
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton3_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "feature feature";
         _loc1_.id = "showFeatrueDebug";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showFeatrueDebug = _loc1_;
         BindingManager.executeBindings(this,"showFeatrueDebug",this.showFeatrueDebug);
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton4_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.toolTip = "Enable=take snapshot, disable = compare";
         _loc1_.label = "ResourceSnapshot";
         _loc1_.id = "divResourceButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.divResourceButton = _loc1_;
         BindingManager.executeBindings(this,"divResourceButton",this.divResourceButton);
         return _loc1_;
      }
      
      private function _QMConsole_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._QMConsole_ToggleButton5_i(),this._QMConsole_Button2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton5_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "Inventory Snapshot";
         _loc1_.id = "inventorySnapshot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventorySnapshot = _loc1_;
         BindingManager.executeBindings(this,"inventorySnapshot",this.inventorySnapshot);
         return _loc1_;
      }
      
      private function _QMConsole_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Inventory Div";
         _loc1_.id = "divInventoryButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.divInventoryButton = _loc1_;
         BindingManager.executeBindings(this,"divInventoryButton",this.divInventoryButton);
         return _loc1_;
      }
      
      private function _QMConsole_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._QMConsole_HGroup3_c()];
         _loc1_.id = "_QMConsole_VGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QMConsole_VGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_QMConsole_VGroup2",this._QMConsole_VGroup2);
         return _loc1_;
      }
      
      private function _QMConsole_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._QMConsole_Button3_i(),this._QMConsole_Button4_i(),this._QMConsole_Button5_i(),this._QMConsole_Button6_i(),this._QMConsole_Button7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will remove all Boulder !!";
         _loc1_.label = "kill Boulder";
         _loc1_.id = "cleanBoulder";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cleanBoulder = _loc1_;
         BindingManager.executeBindings(this,"cleanBoulder",this.cleanBoulder);
         return _loc1_;
      }
      
      private function _QMConsole_Button4_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will inagureate all residentials with workers!!";
         _loc1_.label = "inagurate all";
         _loc1_.id = "inagurateAll";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inagurateAll = _loc1_;
         BindingManager.executeBindings(this,"inagurateAll",this.inagurateAll);
         return _loc1_;
      }
      
      private function _QMConsole_Button5_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will insta construct all buildings!";
         _loc1_.label = "finish construction";
         _loc1_.id = "constructAll";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.constructAll = _loc1_;
         BindingManager.executeBindings(this,"constructAll",this.constructAll);
         return _loc1_;
      }
      
      private function _QMConsole_Button6_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will repair all failed emergencies!";
         _loc1_.label = "repair all";
         _loc1_.id = "repairAll";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.repairAll = _loc1_;
         BindingManager.executeBindings(this,"repairAll",this.repairAll);
         return _loc1_;
      }
      
      private function _QMConsole_Button7_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will buy all expansions!";
         _loc1_.label = "unlock expansions";
         _loc1_.id = "unlockAllExpansions";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.unlockAllExpansions = _loc1_;
         BindingManager.executeBindings(this,"unlockAllExpansions",this.unlockAllExpansions);
         return _loc1_;
      }
      
      private function _QMConsole_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._QMConsole_HGroup4_c()];
         _loc1_.id = "_QMConsole_VGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QMConsole_VGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_QMConsole_VGroup3",this._QMConsole_VGroup3);
         return _loc1_;
      }
      
      private function _QMConsole_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._QMConsole_ToggleButton6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton6_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.toolTip = "Will trace all unlokced features";
         _loc1_.label = "trace features";
         _loc1_.id = "traceFeatureStats";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.traceFeatureStats = _loc1_;
         BindingManager.executeBindings(this,"traceFeatureStats",this.traceFeatureStats);
         return _loc1_;
      }
      
      private function _QMConsole_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._QMConsole_HGroup5_c(),this._QMConsole_ProgressBar1_i()];
         _loc1_.id = "_QMConsole_VGroup4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QMConsole_VGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_QMConsole_VGroup4",this._QMConsole_VGroup4);
         return _loc1_;
      }
      
      private function _QMConsole_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._QMConsole_TextInput1_i(),this._QMConsole_ToggleButton7_i(),this._QMConsole_ToggleButton8_i(),this._QMConsole_Button8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QMConsole_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.toolTip = "Enter amount of desired spins";
         _loc1_.restrict = "1234567890";
         _loc1_.id = "wheelspins";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelspins = _loc1_;
         BindingManager.executeBindings(this,"wheelspins",this.wheelspins);
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton7_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.toolTip = "Use Bonus Wheel?";
         _loc1_.label = "buff";
         _loc1_.id = "usewheelbuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.usewheelbuff = _loc1_;
         BindingManager.executeBindings(this,"usewheelbuff",this.usewheelbuff);
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton8_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.toolTip = "Compare Bags?";
         _loc1_.label = "bags";
         _loc1_.id = "compareBags";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.compareBags = _loc1_;
         BindingManager.executeBindings(this,"compareBags",this.compareBags);
         return _loc1_;
      }
      
      private function _QMConsole_Button8_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.toolTip = "Will remove all Spin and Bonus Tokens!!";
         _loc1_.label = "Spin Wheel";
         _loc1_.id = "wheelSniffer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelSniffer = _loc1_;
         BindingManager.executeBindings(this,"wheelSniffer",this.wheelSniffer);
         return _loc1_;
      }
      
      private function _QMConsole_ProgressBar1_i() : ProgressBar
      {
         var _loc1_:ProgressBar = new ProgressBar();
         _loc1_.label = "";
         _loc1_.mode = "manual";
         _loc1_.setStyle("labelWidth",0);
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _QMConsole_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return inventorySnapshot.selected;
         },null,"divInventoryButton.enabled");
         result[1] = new Binding(this,function():Boolean
         {
            return showmacros.selected;
         },null,"_QMConsole_VGroup2.visible");
         result[2] = new Binding(this,function():Boolean
         {
            return showmacros.selected;
         },null,"_QMConsole_VGroup2.includeInLayout");
         result[3] = new Binding(this,function():Boolean
         {
            return showFeatrueDebug.selected;
         },null,"_QMConsole_VGroup3.visible");
         result[4] = new Binding(this,function():Boolean
         {
            return showFeatrueDebug.selected;
         },null,"_QMConsole_VGroup3.includeInLayout");
         result[5] = new Binding(this,function():Boolean
         {
            return showwheel.selected;
         },null,"_QMConsole_VGroup4.visible");
         result[6] = new Binding(this,function():Boolean
         {
            return showwheel.selected;
         },null,"_QMConsole_VGroup4.includeInLayout");
         result[7] = new Binding(this,function():Boolean
         {
            return wheelspins.text.length > 0;
         },null,"usewheelbuff.enabled");
         result[8] = new Binding(this,function():Boolean
         {
            return wheelspins.text.length > 0;
         },null,"compareBags.enabled");
         result[9] = new Binding(this,function():Boolean
         {
            return wheelspins.text.length > 0;
         },null,"wheelSniffer.enabled");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get cleanBoulder() : Button
      {
         return this._1665131364cleanBoulder;
      }
      
      public function set cleanBoulder(param1:Button) : void
      {
         var _loc2_:Object = this._1665131364cleanBoulder;
         if(_loc2_ !== param1)
         {
            this._1665131364cleanBoulder = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cleanBoulder",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get compareBags() : ToggleButton
      {
         return this._412894224compareBags;
      }
      
      public function set compareBags(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._412894224compareBags;
         if(_loc2_ !== param1)
         {
            this._412894224compareBags = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compareBags",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get console() : RichEditableText
      {
         return this._951510359console;
      }
      
      public function set console(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._951510359console;
         if(_loc2_ !== param1)
         {
            this._951510359console = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"console",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get constructAll() : Button
      {
         return this._1995998646constructAll;
      }
      
      public function set constructAll(param1:Button) : void
      {
         var _loc2_:Object = this._1995998646constructAll;
         if(_loc2_ !== param1)
         {
            this._1995998646constructAll = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructAll",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get divInventoryButton() : Button
      {
         return this._768939741divInventoryButton;
      }
      
      public function set divInventoryButton(param1:Button) : void
      {
         var _loc2_:Object = this._768939741divInventoryButton;
         if(_loc2_ !== param1)
         {
            this._768939741divInventoryButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divInventoryButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get divResourceButton() : ToggleButton
      {
         return this._390042577divResourceButton;
      }
      
      public function set divResourceButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._390042577divResourceButton;
         if(_loc2_ !== param1)
         {
            this._390042577divResourceButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divResourceButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inagurateAll() : Button
      {
         return this._235254679inagurateAll;
      }
      
      public function set inagurateAll(param1:Button) : void
      {
         var _loc2_:Object = this._235254679inagurateAll;
         if(_loc2_ !== param1)
         {
            this._235254679inagurateAll = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inagurateAll",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySnapshot() : ToggleButton
      {
         return this._64239424inventorySnapshot;
      }
      
      public function set inventorySnapshot(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._64239424inventorySnapshot;
         if(_loc2_ !== param1)
         {
            this._64239424inventorySnapshot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySnapshot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBar
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get repairAll() : Button
      {
         return this._762537260repairAll;
      }
      
      public function set repairAll(param1:Button) : void
      {
         var _loc2_:Object = this._762537260repairAll;
         if(_loc2_ !== param1)
         {
            this._762537260repairAll = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repairAll",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showFeatrueDebug() : ToggleButton
      {
         return this._1529240512showFeatrueDebug;
      }
      
      public function set showFeatrueDebug(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1529240512showFeatrueDebug;
         if(_loc2_ !== param1)
         {
            this._1529240512showFeatrueDebug = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showFeatrueDebug",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showmacros() : ToggleButton
      {
         return this._1509476196showmacros;
      }
      
      public function set showmacros(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1509476196showmacros;
         if(_loc2_ !== param1)
         {
            this._1509476196showmacros = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showmacros",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showwheel() : ToggleButton
      {
         return this._1881524610showwheel;
      }
      
      public function set showwheel(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1881524610showwheel;
         if(_loc2_ !== param1)
         {
            this._1881524610showwheel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showwheel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get traceFeatureStats() : ToggleButton
      {
         return this._809744082traceFeatureStats;
      }
      
      public function set traceFeatureStats(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._809744082traceFeatureStats;
         if(_loc2_ !== param1)
         {
            this._809744082traceFeatureStats = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traceFeatureStats",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unlockAllExpansions() : Button
      {
         return this._1450144975unlockAllExpansions;
      }
      
      public function set unlockAllExpansions(param1:Button) : void
      {
         var _loc2_:Object = this._1450144975unlockAllExpansions;
         if(_loc2_ !== param1)
         {
            this._1450144975unlockAllExpansions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlockAllExpansions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get usewheelbuff() : ToggleButton
      {
         return this._2021615751usewheelbuff;
      }
      
      public function set usewheelbuff(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._2021615751usewheelbuff;
         if(_loc2_ !== param1)
         {
            this._2021615751usewheelbuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"usewheelbuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelSniffer() : Button
      {
         return this._1413042176wheelSniffer;
      }
      
      public function set wheelSniffer(param1:Button) : void
      {
         var _loc2_:Object = this._1413042176wheelSniffer;
         if(_loc2_ !== param1)
         {
            this._1413042176wheelSniffer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelSniffer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelspins() : TextInput
      {
         return this._1668363766wheelspins;
      }
      
      public function set wheelspins(param1:TextInput) : void
      {
         var _loc2_:Object = this._1668363766wheelspins;
         if(_loc2_ !== param1)
         {
            this._1668363766wheelspins = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelspins",_loc2_,param1));
            }
         }
      }
   }
}

