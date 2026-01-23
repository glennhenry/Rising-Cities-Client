package net.bigpoint.cityrama.view.settingsbar.ui.components
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.common.skins.DebugBoxSkin;
   import org.puremvc.as3.patterns.facade.Facade;
   import spark.components.Button;
   import spark.components.ButtonBar;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.SkinnableContainer;
   import spark.components.TextInput;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   use namespace mx_internal;
   
   public class SettingsBarView extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1641884153academicsCheatButton:Button;
      
      private var _356425693academicsCheatInput:TextInput;
      
      private var _425996988categoryList:DropDownList;
      
      private var _2057884308cheatGroup:SkinnableContainer;
      
      private var _287007161cleanStreets:Button;
      
      private var _385593099dataGroup:SkinnableContainer;
      
      private var _561770842devDestroyEnableButton:ToggleButton;
      
      private var _1629013393emergency:Button;
      
      private var _1270778695emergencyInput:TextInput;
      
      private var _608211762enableFullLog:Button;
      
      private var _133799878epCheatButton:Button;
      
      private var _694672834epCheatInput:TextInput;
      
      private var _32365100eventtest:Button;
      
      private var _1736110151featureTextInput:TextInput;
      
      private var _1167007887featureUpdateButton:Button;
      
      private var _1895727015fillWithStreets:Button;
      
      private var _957897400generateBoulder:Button;
      
      private var _1354855362goodGroup:SkinnableContainer;
      
      private var _1656150031goodsCountInput:TextInput;
      
      private var _1394352404goodsList:DropDownList;
      
      private var _285626141grantPermissionButton:Button;
      
      private var _1856904262grantgoodsnButton:Button;
      
      private var _1664248505idlabel:TextInput;
      
      private var _1759683197idlabelShowGround:TextInput;
      
      private var _1196959496kaxInput:TextInput;
      
      private var _929947276kaxtest:Button;
      
      private var _70001746layerGroup:SkinnableContainer;
      
      private var _108771229lvlCheatButton:Button;
      
      private var _135803783lvlCheatInput:TextInput;
      
      private var _1896433055managePlayfield:SkinnableContainer;
      
      private var _1421629188manualRender:Button;
      
      private var _506016843matrixXCoords:Label;
      
      private var _381486838matrixYCoords:Label;
      
      private var _510102126moodCheatButton:Button;
      
      private var _299801870moodCheatInput:TextInput;
      
      private var _1844723050newData:Button;
      
      private var _1833198495permissionsCountInput:TextInput;
      
      private var _1803764827permissionsGroup:SkinnableContainer;
      
      private var _1604241598permissionsList:DropDownList;
      
      private var _1694490643playfieldBar:ButtonBar;
      
      private var _1088499616playfiledLabel:Label;
      
      private var _933734341ppCheatButton:Button;
      
      private var _2114582743ppCheatInput:TextInput;
      
      private var _1649912422pwrCheatButton:Button;
      
      private var _922860642pwrCheatInput:TextInput;
      
      private var _553986749questGroup:SkinnableContainer;
      
      private var _1331147020rcCheatButton:Button;
      
      private var _36687928rcCheatInput:TextInput;
      
      private var _455351204renderToggleButton:ToggleButton;
      
      private var _489628359ricCheatButton:Button;
      
      private var _286636829ricCheatInput:TextInput;
      
      private var _1926384965screen1:Button;
      
      private var _411608181screen10:Button;
      
      private var _411608180screen11:Button;
      
      private var _411608179screen12:Button;
      
      private var _1926384966screen2:Button;
      
      private var _1926384967screen3:Button;
      
      private var _1926384968screen4:Button;
      
      private var _1926384969screen5:Button;
      
      private var _1926384970screen6:Button;
      
      private var _1926384971screen7:Button;
      
      private var _1926384972screen8:Button;
      
      private var _1926384973screen9:Button;
      
      private var _1929547818showCheat:ToggleButton;
      
      private var _339314617showData:ToggleButton;
      
      private var _1271037176showGoodlist:ToggleButton;
      
      private var _1471963074showGroundType:ToggleButton;
      
      private var _903145224showId:ToggleButton;
      
      private var _1921425324showLayer:ToggleButton;
      
      private var _1076470956showPermission:ToggleButton;
      
      private var _1916230683showQuest:ToggleButton;
      
      private var _1575623861showSwitchPlayfield:ToggleButton;
      
      private var _1448052289showUpsellOfferLayer:Button;
      
      private var _815758713showWorldMap:Button;
      
      private var _1981120216shutdownButton:Button;
      
      private var _1028503875textinput:TextInput;
      
      private var _656707557toggleSpool:ToggleButton;
      
      private var _188490736townhallharvestButton:Button;
      
      private var _724164158traceProf:Button;
      
      private var _963459803tuttest:Button;
      
      private var _2034630040upsellUpdateButton:Button;
      
      private var _1790208248vcCheatButton:Button;
      
      private var _479642948vcCheatInput:TextInput;
      
      private var _1453368555worCheatButton:Button;
      
      private var _2131345137worCheatInput:TextInput;
      
      private var _1413489715xpCheatButton:Button;
      
      private var _1147722801xpCheatInput:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsBarView()
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
         bindings = this._SettingsBarView_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_settingsbar_ui_components_SettingsBarViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsBarView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.includeInLayout = false;
         this.layout = this._SettingsBarView_VerticalLayout1_c();
         this.mxmlContent = [this._SettingsBarView_HGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SettingsBarView._watcherSetupUtil = param1;
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
      
      private function _SettingsBarView_VerticalLayout1_c() : VerticalLayout
      {
         return new VerticalLayout();
      }
      
      private function _SettingsBarView_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_SkinnableContainer1_i(),this._SettingsBarView_SkinnableContainer2_i(),this._SettingsBarView_SkinnableContainer3_i(),this._SettingsBarView_SkinnableContainer4_i(),this._SettingsBarView_SkinnableContainer5_i(),this._SettingsBarView_SkinnableContainer6_i(),this._SettingsBarView_SkinnableContainer7_i(),this._SettingsBarView_SkinnableContainer8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer1_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array3_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "questGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.questGroup = _loc1_;
         BindingManager.executeBindings(this,"questGroup",this.questGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array3_c() : Array
      {
         return [this._SettingsBarView_HGroup2_c()];
      }
      
      private function _SettingsBarView_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button1_i(),this._SettingsBarView_Button2_i(),this._SettingsBarView_TextInput1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "quest";
         _loc1_.id = "tuttest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tuttest = _loc1_;
         BindingManager.executeBindings(this,"tuttest",this.tuttest);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "event";
         _loc1_.id = "eventtest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventtest = _loc1_;
         BindingManager.executeBindings(this,"eventtest",this.eventtest);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890";
         _loc1_.width = 30;
         _loc1_.id = "textinput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textinput = _loc1_;
         BindingManager.executeBindings(this,"textinput",this.textinput);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer2_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array7_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "managePlayfield";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.managePlayfield = _loc1_;
         BindingManager.executeBindings(this,"managePlayfield",this.managePlayfield);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array7_c() : Array
      {
         return [this._SettingsBarView_VGroup2_c()];
      }
      
      private function _SettingsBarView_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_HGroup4_c(),this._SettingsBarView_HGroup5_c(),this._SettingsBarView_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button3_i(),this._SettingsBarView_Button4_i(),this._SettingsBarView_Button5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "fillWithStreets";
         _loc1_.setStyle("color",16737894);
         _loc1_.id = "fillWithStreets";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.fillWithStreets = _loc1_;
         BindingManager.executeBindings(this,"fillWithStreets",this.fillWithStreets);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button4_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "kill streets";
         _loc1_.id = "cleanStreets";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cleanStreets = _loc1_;
         BindingManager.executeBindings(this,"cleanStreets",this.cleanStreets);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button5_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "get Boulder";
         _loc1_.id = "generateBoulder";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.generateBoulder = _loc1_;
         BindingManager.executeBindings(this,"generateBoulder",this.generateBoulder);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton1_i(),this._SettingsBarView_Button6_i(),this._SettingsBarView_ToggleButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.selected = true;
         _loc1_.setStyle("color",16737894);
         _loc1_.id = "renderToggleButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.renderToggleButton = _loc1_;
         BindingManager.executeBindings(this,"renderToggleButton",this.renderToggleButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button6_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "send Manual Render";
         _loc1_.setStyle("color",16737894);
         _loc1_.addEventListener("click",this.__manualRender_click);
         _loc1_.id = "manualRender";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.manualRender = _loc1_;
         BindingManager.executeBindings(this,"manualRender",this.manualRender);
         return _loc1_;
      }
      
      public function __manualRender_click(param1:MouseEvent) : void
      {
         Facade.getInstance().sendNotification(ApplicationNotificationConstants.RENDER_TICK,{"overrideIt":true});
      }
      
      private function _SettingsBarView_ToggleButton2_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "dev force destroy";
         _loc1_.setStyle("color",16737894);
         _loc1_.id = "devDestroyEnableButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.devDestroyEnableButton = _loc1_;
         BindingManager.executeBindings(this,"devDestroyEnableButton",this.devDestroyEnableButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SettingsBarView_Label1_i(),this._SettingsBarView_ButtonBar1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Load playfield:";
         _loc1_.id = "playfiledLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfiledLabel = _loc1_;
         BindingManager.executeBindings(this,"playfiledLabel",this.playfiledLabel);
         return _loc1_;
      }
      
      private function _SettingsBarView_ButtonBar1_i() : ButtonBar
      {
         var _loc1_:ButtonBar = new ButtonBar();
         _loc1_.percentWidth = 100;
         _loc1_.id = "playfieldBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldBar = _loc1_;
         BindingManager.executeBindings(this,"playfieldBar",this.playfieldBar);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer3_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array12_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "goodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodGroup = _loc1_;
         BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array12_c() : Array
      {
         return [this._SettingsBarView_HGroup6_c()];
      }
      
      private function _SettingsBarView_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_DropDownList1_i(),this._SettingsBarView_TextInput2_i(),this._SettingsBarView_Button7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_DropDownList1_i() : DropDownList
      {
         var _loc1_:DropDownList = new DropDownList();
         _loc1_.labelField = "name";
         _loc1_.width = 120;
         _loc1_.id = "goodsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodsList = _loc1_;
         BindingManager.executeBindings(this,"goodsList",this.goodsList);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 30;
         _loc1_.id = "goodsCountInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodsCountInput = _loc1_;
         BindingManager.executeBindings(this,"goodsCountInput",this.goodsCountInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button7_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "grant Goods";
         _loc1_.id = "grantgoodsnButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grantgoodsnButton = _loc1_;
         BindingManager.executeBindings(this,"grantgoodsnButton",this.grantgoodsnButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer4_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array14_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "permissionsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionsGroup = _loc1_;
         BindingManager.executeBindings(this,"permissionsGroup",this.permissionsGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array14_c() : Array
      {
         return [this._SettingsBarView_HGroup7_c()];
      }
      
      private function _SettingsBarView_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_DropDownList2_i(),this._SettingsBarView_DropDownList3_i(),this._SettingsBarView_TextInput3_i(),this._SettingsBarView_Button8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_DropDownList2_i() : DropDownList
      {
         var _loc1_:DropDownList = new DropDownList();
         _loc1_.width = 120;
         _loc1_.id = "categoryList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryList = _loc1_;
         BindingManager.executeBindings(this,"categoryList",this.categoryList);
         return _loc1_;
      }
      
      private function _SettingsBarView_DropDownList3_i() : DropDownList
      {
         var _loc1_:DropDownList = new DropDownList();
         _loc1_.labelField = "name";
         _loc1_.width = 120;
         _loc1_.id = "permissionsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionsList = _loc1_;
         BindingManager.executeBindings(this,"permissionsList",this.permissionsList);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput3_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 30;
         _loc1_.id = "permissionsCountInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionsCountInput = _loc1_;
         BindingManager.executeBindings(this,"permissionsCountInput",this.permissionsCountInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button8_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "grant Permission";
         _loc1_.id = "grantPermissionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grantPermissionButton = _loc1_;
         BindingManager.executeBindings(this,"grantPermissionButton",this.grantPermissionButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer5_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array16_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array16_c() : Array
      {
         return [this._SettingsBarView_HGroup8_c()];
      }
      
      private function _SettingsBarView_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button9_i(),this._SettingsBarView_Button10_i(),this._SettingsBarView_HGroup9_c(),this._SettingsBarView_HGroup10_c(),this._SettingsBarView_Button12_i(),this._SettingsBarView_Button13_i(),this._SettingsBarView_HGroup11_c(),this._SettingsBarView_HGroup12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button9_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "enable Full JSON LOG ";
         _loc1_.setStyle("color",6728294);
         _loc1_.id = "enableFullLog";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.enableFullLog = _loc1_;
         BindingManager.executeBindings(this,"enableFullLog",this.enableFullLog);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button10_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "trace Professionals";
         _loc1_.id = "traceProf";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.traceProf = _loc1_;
         BindingManager.executeBindings(this,"traceProf",this.traceProf);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup9_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button11_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button11_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "shutdown";
         _loc1_.setStyle("color",16737894);
         _loc1_.id = "shutdownButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shutdownButton = _loc1_;
         BindingManager.executeBindings(this,"shutdownButton",this.shutdownButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup10_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton3_i(),this._SettingsBarView_TextInput4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton3_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "ShowIds";
         _loc1_.id = "showId";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showId = _loc1_;
         BindingManager.executeBindings(this,"showId",this.showId);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput4_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 80;
         _loc1_.id = "idlabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.idlabel = _loc1_;
         BindingManager.executeBindings(this,"idlabel",this.idlabel);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button12_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "updatePlayerAndField";
         _loc1_.id = "newData";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newData = _loc1_;
         BindingManager.executeBindings(this,"newData",this.newData);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button13_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "fake Upselling update";
         _loc1_.id = "upsellUpdateButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upsellUpdateButton = _loc1_;
         BindingManager.executeBindings(this,"upsellUpdateButton",this.upsellUpdateButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup11_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button14_i(),this._SettingsBarView_TextInput5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button14_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "fake FeatureFeature update";
         _loc1_.id = "featureUpdateButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.featureUpdateButton = _loc1_;
         BindingManager.executeBindings(this,"featureUpdateButton",this.featureUpdateButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput5_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 80;
         _loc1_.toolTip = "feature to add";
         _loc1_.id = "featureTextInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.featureTextInput = _loc1_;
         BindingManager.executeBindings(this,"featureTextInput",this.featureTextInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup12_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton4_i(),this._SettingsBarView_TextInput6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton4_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "ShowGroundType";
         _loc1_.id = "showGroundType";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showGroundType = _loc1_;
         BindingManager.executeBindings(this,"showGroundType",this.showGroundType);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput6_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 80;
         _loc1_.id = "idlabelShowGround";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.idlabelShowGround = _loc1_;
         BindingManager.executeBindings(this,"idlabelShowGround",this.idlabelShowGround);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer6_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array23_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "layerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerGroup = _loc1_;
         BindingManager.executeBindings(this,"layerGroup",this.layerGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array23_c() : Array
      {
         return [this._SettingsBarView_HGroup13_c()];
      }
      
      private function _SettingsBarView_HGroup13_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_HGroup14_c(),this._SettingsBarView_HGroup15_c(),this._SettingsBarView_HGroup16_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup14_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._SettingsBarView_Button15_i(),this._SettingsBarView_Button16_i(),this._SettingsBarView_Button17_i(),this._SettingsBarView_Button18_i(),this._SettingsBarView_Button19_i(),this._SettingsBarView_Button20_i(),this._SettingsBarView_Button21_i(),this._SettingsBarView_Button22_i(),this._SettingsBarView_Button23_i(),this._SettingsBarView_Button24_i(),this._SettingsBarView_Button25_i(),this._SettingsBarView_Button26_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button15_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "1";
         _loc1_.width = 10;
         _loc1_.id = "screen1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen1 = _loc1_;
         BindingManager.executeBindings(this,"screen1",this.screen1);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button16_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "2";
         _loc1_.width = 10;
         _loc1_.id = "screen2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen2 = _loc1_;
         BindingManager.executeBindings(this,"screen2",this.screen2);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button17_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "3";
         _loc1_.width = 10;
         _loc1_.id = "screen3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen3 = _loc1_;
         BindingManager.executeBindings(this,"screen3",this.screen3);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button18_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "4";
         _loc1_.width = 10;
         _loc1_.id = "screen4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen4 = _loc1_;
         BindingManager.executeBindings(this,"screen4",this.screen4);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button19_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "5";
         _loc1_.width = 10;
         _loc1_.id = "screen5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen5 = _loc1_;
         BindingManager.executeBindings(this,"screen5",this.screen5);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button20_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "6";
         _loc1_.width = 10;
         _loc1_.id = "screen6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen6 = _loc1_;
         BindingManager.executeBindings(this,"screen6",this.screen6);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button21_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "7";
         _loc1_.width = 10;
         _loc1_.id = "screen7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen7 = _loc1_;
         BindingManager.executeBindings(this,"screen7",this.screen7);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button22_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "8";
         _loc1_.width = 10;
         _loc1_.id = "screen8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen8 = _loc1_;
         BindingManager.executeBindings(this,"screen8",this.screen8);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button23_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "9";
         _loc1_.width = 10;
         _loc1_.id = "screen9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen9 = _loc1_;
         BindingManager.executeBindings(this,"screen9",this.screen9);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button24_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "improvementFeatureBoosterPack";
         _loc1_.width = 10;
         _loc1_.id = "screen10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen10 = _loc1_;
         BindingManager.executeBindings(this,"screen10",this.screen10);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button25_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "improvementFeatureManagement";
         _loc1_.width = 10;
         _loc1_.id = "screen11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen11 = _loc1_;
         BindingManager.executeBindings(this,"screen11",this.screen11);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button26_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "improvementFeatureCursorMode";
         _loc1_.width = 10;
         _loc1_.id = "screen12";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen12 = _loc1_;
         BindingManager.executeBindings(this,"screen12",this.screen12);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup15_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button27_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button27_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "upsell ML";
         _loc1_.id = "showUpsellOfferLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showUpsellOfferLayer = _loc1_;
         BindingManager.executeBindings(this,"showUpsellOfferLayer",this.showUpsellOfferLayer);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup16_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button28_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button28_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Show World Map";
         _loc1_.id = "showWorldMap";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showWorldMap = _loc1_;
         BindingManager.executeBindings(this,"showWorldMap",this.showWorldMap);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer7_i() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array29_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         _loc1_.id = "cheatGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cheatGroup = _loc1_;
         BindingManager.executeBindings(this,"cheatGroup",this.cheatGroup);
         return _loc1_;
      }
      
      private function _SettingsBarView_Array29_c() : Array
      {
         return [this._SettingsBarView_HGroup17_c()];
      }
      
      private function _SettingsBarView_HGroup17_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_VGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_HGroup18_c(),this._SettingsBarView_HGroup19_c(),this._SettingsBarView_HGroup20_c(),this._SettingsBarView_HGroup21_c(),this._SettingsBarView_HGroup22_c(),this._SettingsBarView_HGroup23_c(),this._SettingsBarView_HGroup24_c(),this._SettingsBarView_HGroup25_c(),this._SettingsBarView_HGroup26_c(),this._SettingsBarView_HGroup27_c(),this._SettingsBarView_HGroup28_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup18_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput7_i(),this._SettingsBarView_Button29_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput7_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "vcCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vcCheatInput = _loc1_;
         BindingManager.executeBindings(this,"vcCheatInput",this.vcCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button29_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "VirtualCurrency";
         _loc1_.id = "vcCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vcCheatButton = _loc1_;
         BindingManager.executeBindings(this,"vcCheatButton",this.vcCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup19_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput8_i(),this._SettingsBarView_Button30_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput8_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "rcCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcCheatInput = _loc1_;
         BindingManager.executeBindings(this,"rcCheatInput",this.rcCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button30_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "RealCurrency";
         _loc1_.id = "rcCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcCheatButton = _loc1_;
         BindingManager.executeBindings(this,"rcCheatButton",this.rcCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup20_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput9_i(),this._SettingsBarView_Button31_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput9_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "ppCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ppCheatInput = _loc1_;
         BindingManager.executeBindings(this,"ppCheatInput",this.ppCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button31_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "ProductionPoints";
         _loc1_.id = "ppCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ppCheatButton = _loc1_;
         BindingManager.executeBindings(this,"ppCheatButton",this.ppCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup21_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput10_i(),this._SettingsBarView_Button32_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput10_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "epCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.epCheatInput = _loc1_;
         BindingManager.executeBindings(this,"epCheatInput",this.epCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button32_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "EducationPoints";
         _loc1_.toolTip = "level restricted";
         _loc1_.id = "epCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.epCheatButton = _loc1_;
         BindingManager.executeBindings(this,"epCheatButton",this.epCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup22_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput11_i(),this._SettingsBarView_Button33_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput11_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "xpCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.xpCheatInput = _loc1_;
         BindingManager.executeBindings(this,"xpCheatInput",this.xpCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button33_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "XP";
         _loc1_.id = "xpCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.xpCheatButton = _loc1_;
         BindingManager.executeBindings(this,"xpCheatButton",this.xpCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup23_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput12_i(),this._SettingsBarView_Button34_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput12_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "lvlCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lvlCheatInput = _loc1_;
         BindingManager.executeBindings(this,"lvlCheatInput",this.lvlCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button34_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Level";
         _loc1_.id = "lvlCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lvlCheatButton = _loc1_;
         BindingManager.executeBindings(this,"lvlCheatButton",this.lvlCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup24_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput13_i(),this._SettingsBarView_Button35_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput13_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "pwrCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pwrCheatInput = _loc1_;
         BindingManager.executeBindings(this,"pwrCheatInput",this.pwrCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button35_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Energy";
         _loc1_.id = "pwrCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pwrCheatButton = _loc1_;
         BindingManager.executeBindings(this,"pwrCheatButton",this.pwrCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup25_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput14_i(),this._SettingsBarView_Button36_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput14_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "moodCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodCheatInput = _loc1_;
         BindingManager.executeBindings(this,"moodCheatInput",this.moodCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button36_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Mood";
         _loc1_.id = "moodCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodCheatButton = _loc1_;
         BindingManager.executeBindings(this,"moodCheatButton",this.moodCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup26_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput15_i(),this._SettingsBarView_Button37_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput15_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "worCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.worCheatInput = _loc1_;
         BindingManager.executeBindings(this,"worCheatInput",this.worCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button37_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Worker";
         _loc1_.id = "worCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.worCheatButton = _loc1_;
         BindingManager.executeBindings(this,"worCheatButton",this.worCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup27_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput16_i(),this._SettingsBarView_Button38_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput16_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "ricCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ricCheatInput = _loc1_;
         BindingManager.executeBindings(this,"ricCheatInput",this.ricCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button38_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Capitalists";
         _loc1_.id = "ricCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ricCheatButton = _loc1_;
         BindingManager.executeBindings(this,"ricCheatButton",this.ricCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup28_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput17_i(),this._SettingsBarView_Button39_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput17_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890\\-";
         _loc1_.width = 100;
         _loc1_.id = "academicsCheatInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.academicsCheatInput = _loc1_;
         BindingManager.executeBindings(this,"academicsCheatInput",this.academicsCheatInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button39_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Academics";
         _loc1_.id = "academicsCheatButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.academicsCheatButton = _loc1_;
         BindingManager.executeBindings(this,"academicsCheatButton",this.academicsCheatButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer8_c() : SkinnableContainer
      {
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array43_c);
         _loc1_.setStyle("skinClass",DebugBoxSkin);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Array43_c() : Array
      {
         return [this._SettingsBarView_VGroup7_c()];
      }
      
      private function _SettingsBarView_VGroup7_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton5_i(),this._SettingsBarView_ToggleButton6_i(),this._SettingsBarView_ToggleButton7_i(),this._SettingsBarView_ToggleButton8_i(),this._SettingsBarView_ToggleButton9_i(),this._SettingsBarView_ToggleButton10_i(),this._SettingsBarView_ToggleButton11_i(),this._SettingsBarView_Button40_i(),this._SettingsBarView_HGroup29_c(),this._SettingsBarView_HGroup30_c(),this._SettingsBarView_ToggleButton12_i(),this._SettingsBarView_Label2_c(),this._SettingsBarView_HGroup31_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton5_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "resources";
         _loc1_.addEventListener("click",this.__showCheat_click);
         _loc1_.id = "showCheat";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showCheat = _loc1_;
         BindingManager.executeBindings(this,"showCheat",this.showCheat);
         return _loc1_;
      }
      
      public function __showCheat_click(param1:MouseEvent) : void
      {
         this.cheatGroup.visible = this.cheatGroup.includeInLayout = this.showCheat.selected;
      }
      
      private function _SettingsBarView_ToggleButton6_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "quests (events)";
         _loc1_.addEventListener("click",this.__showQuest_click);
         _loc1_.id = "showQuest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showQuest = _loc1_;
         BindingManager.executeBindings(this,"showQuest",this.showQuest);
         return _loc1_;
      }
      
      public function __showQuest_click(param1:MouseEvent) : void
      {
         this.questGroup.visible = this.questGroup.includeInLayout = this.showQuest.selected;
      }
      
      private function _SettingsBarView_ToggleButton7_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "manage Playfield";
         _loc1_.addEventListener("click",this.__showSwitchPlayfield_click);
         _loc1_.id = "showSwitchPlayfield";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showSwitchPlayfield = _loc1_;
         BindingManager.executeBindings(this,"showSwitchPlayfield",this.showSwitchPlayfield);
         return _loc1_;
      }
      
      public function __showSwitchPlayfield_click(param1:MouseEvent) : void
      {
         this.managePlayfield.visible = this.managePlayfield.includeInLayout = this.showSwitchPlayfield.selected;
      }
      
      private function _SettingsBarView_ToggleButton8_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "layer";
         _loc1_.addEventListener("click",this.__showLayer_click);
         _loc1_.id = "showLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showLayer = _loc1_;
         BindingManager.executeBindings(this,"showLayer",this.showLayer);
         return _loc1_;
      }
      
      public function __showLayer_click(param1:MouseEvent) : void
      {
         this.layerGroup.visible = this.layerGroup.includeInLayout = this.showLayer.selected;
      }
      
      private function _SettingsBarView_ToggleButton9_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "data";
         _loc1_.addEventListener("click",this.__showData_click);
         _loc1_.id = "showData";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showData = _loc1_;
         BindingManager.executeBindings(this,"showData",this.showData);
         return _loc1_;
      }
      
      public function __showData_click(param1:MouseEvent) : void
      {
         this.dataGroup.visible = this.dataGroup.includeInLayout = this.showData.selected;
      }
      
      private function _SettingsBarView_ToggleButton10_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "permissions";
         _loc1_.addEventListener("click",this.__showPermission_click);
         _loc1_.id = "showPermission";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showPermission = _loc1_;
         BindingManager.executeBindings(this,"showPermission",this.showPermission);
         return _loc1_;
      }
      
      public function __showPermission_click(param1:MouseEvent) : void
      {
         this.permissionsGroup.visible = this.permissionsGroup.includeInLayout = this.showPermission.selected;
      }
      
      private function _SettingsBarView_ToggleButton11_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.label = "goods";
         _loc1_.addEventListener("click",this.__showGoodlist_click);
         _loc1_.id = "showGoodlist";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.showGoodlist = _loc1_;
         BindingManager.executeBindings(this,"showGoodlist",this.showGoodlist);
         return _loc1_;
      }
      
      public function __showGoodlist_click(param1:MouseEvent) : void
      {
         this.goodGroup.visible = this.goodGroup.includeInLayout = this.showGoodlist.selected;
      }
      
      private function _SettingsBarView_Button40_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "townhallHarvest";
         _loc1_.id = "townhallharvestButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.townhallharvestButton = _loc1_;
         BindingManager.executeBindings(this,"townhallharvestButton",this.townhallharvestButton);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup29_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_TextInput18_i(),this._SettingsBarView_Button41_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput18_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.width = 30;
         _loc1_.id = "kaxInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.kaxInput = _loc1_;
         BindingManager.executeBindings(this,"kaxInput",this.kaxInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Button41_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "kaxtest";
         _loc1_.id = "kaxtest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.kaxtest = _loc1_;
         BindingManager.executeBindings(this,"kaxtest",this.kaxtest);
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup30_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Button42_i(),this._SettingsBarView_TextInput19_i(),this._SettingsBarView_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button42_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "emergency";
         _loc1_.id = "emergency";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergency = _loc1_;
         BindingManager.executeBindings(this,"emergency",this.emergency);
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput19_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.restrict = "1234567890";
         _loc1_.text = "2301";
         _loc1_.width = 36;
         _loc1_.id = "emergencyInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyInput = _loc1_;
         BindingManager.executeBindings(this,"emergencyInput",this.emergencyInput);
         return _loc1_;
      }
      
      private function _SettingsBarView_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 36;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton12_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.selected = false;
         _loc1_.label = "start spool";
         _loc1_.id = "toggleSpool";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.toggleSpool = _loc1_;
         BindingManager.executeBindings(this,"toggleSpool",this.toggleSpool);
         return _loc1_;
      }
      
      private function _SettingsBarView_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Matrix Coords";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup31_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsBarView_Label3_c(),this._SettingsBarView_Label4_i(),this._SettingsBarView_Label5_c(),this._SettingsBarView_Label6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "x: ";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "00";
         _loc1_.id = "matrixXCoords";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.matrixXCoords = _loc1_;
         BindingManager.executeBindings(this,"matrixXCoords",this.matrixXCoords);
         return _loc1_;
      }
      
      private function _SettingsBarView_Label5_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "y: ";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "00";
         _loc1_.id = "matrixYCoords";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.matrixYCoords = _loc1_;
         BindingManager.executeBindings(this,"matrixYCoords",this.matrixYCoords);
         return _loc1_;
      }
      
      private function _SettingsBarView_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = renderToggleButton.selected ? "Render on" : "Render off";
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"renderToggleButton.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get academicsCheatButton() : Button
      {
         return this._1641884153academicsCheatButton;
      }
      
      public function set academicsCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1641884153academicsCheatButton;
         if(_loc2_ !== param1)
         {
            this._1641884153academicsCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"academicsCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get academicsCheatInput() : TextInput
      {
         return this._356425693academicsCheatInput;
      }
      
      public function set academicsCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._356425693academicsCheatInput;
         if(_loc2_ !== param1)
         {
            this._356425693academicsCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"academicsCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryList() : DropDownList
      {
         return this._425996988categoryList;
      }
      
      public function set categoryList(param1:DropDownList) : void
      {
         var _loc2_:Object = this._425996988categoryList;
         if(_loc2_ !== param1)
         {
            this._425996988categoryList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cheatGroup() : SkinnableContainer
      {
         return this._2057884308cheatGroup;
      }
      
      public function set cheatGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._2057884308cheatGroup;
         if(_loc2_ !== param1)
         {
            this._2057884308cheatGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cheatGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cleanStreets() : Button
      {
         return this._287007161cleanStreets;
      }
      
      public function set cleanStreets(param1:Button) : void
      {
         var _loc2_:Object = this._287007161cleanStreets;
         if(_loc2_ !== param1)
         {
            this._287007161cleanStreets = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cleanStreets",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : SkinnableContainer
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get devDestroyEnableButton() : ToggleButton
      {
         return this._561770842devDestroyEnableButton;
      }
      
      public function set devDestroyEnableButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._561770842devDestroyEnableButton;
         if(_loc2_ !== param1)
         {
            this._561770842devDestroyEnableButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"devDestroyEnableButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergency() : Button
      {
         return this._1629013393emergency;
      }
      
      public function set emergency(param1:Button) : void
      {
         var _loc2_:Object = this._1629013393emergency;
         if(_loc2_ !== param1)
         {
            this._1629013393emergency = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergency",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyInput() : TextInput
      {
         return this._1270778695emergencyInput;
      }
      
      public function set emergencyInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1270778695emergencyInput;
         if(_loc2_ !== param1)
         {
            this._1270778695emergencyInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get enableFullLog() : Button
      {
         return this._608211762enableFullLog;
      }
      
      public function set enableFullLog(param1:Button) : void
      {
         var _loc2_:Object = this._608211762enableFullLog;
         if(_loc2_ !== param1)
         {
            this._608211762enableFullLog = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enableFullLog",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epCheatButton() : Button
      {
         return this._133799878epCheatButton;
      }
      
      public function set epCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._133799878epCheatButton;
         if(_loc2_ !== param1)
         {
            this._133799878epCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epCheatInput() : TextInput
      {
         return this._694672834epCheatInput;
      }
      
      public function set epCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._694672834epCheatInput;
         if(_loc2_ !== param1)
         {
            this._694672834epCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventtest() : Button
      {
         return this._32365100eventtest;
      }
      
      public function set eventtest(param1:Button) : void
      {
         var _loc2_:Object = this._32365100eventtest;
         if(_loc2_ !== param1)
         {
            this._32365100eventtest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventtest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featureTextInput() : TextInput
      {
         return this._1736110151featureTextInput;
      }
      
      public function set featureTextInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1736110151featureTextInput;
         if(_loc2_ !== param1)
         {
            this._1736110151featureTextInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureTextInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featureUpdateButton() : Button
      {
         return this._1167007887featureUpdateButton;
      }
      
      public function set featureUpdateButton(param1:Button) : void
      {
         var _loc2_:Object = this._1167007887featureUpdateButton;
         if(_loc2_ !== param1)
         {
            this._1167007887featureUpdateButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureUpdateButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fillWithStreets() : Button
      {
         return this._1895727015fillWithStreets;
      }
      
      public function set fillWithStreets(param1:Button) : void
      {
         var _loc2_:Object = this._1895727015fillWithStreets;
         if(_loc2_ !== param1)
         {
            this._1895727015fillWithStreets = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fillWithStreets",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get generateBoulder() : Button
      {
         return this._957897400generateBoulder;
      }
      
      public function set generateBoulder(param1:Button) : void
      {
         var _loc2_:Object = this._957897400generateBoulder;
         if(_loc2_ !== param1)
         {
            this._957897400generateBoulder = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generateBoulder",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : SkinnableContainer
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._1354855362goodGroup;
         if(_loc2_ !== param1)
         {
            this._1354855362goodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodsCountInput() : TextInput
      {
         return this._1656150031goodsCountInput;
      }
      
      public function set goodsCountInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1656150031goodsCountInput;
         if(_loc2_ !== param1)
         {
            this._1656150031goodsCountInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodsCountInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodsList() : DropDownList
      {
         return this._1394352404goodsList;
      }
      
      public function set goodsList(param1:DropDownList) : void
      {
         var _loc2_:Object = this._1394352404goodsList;
         if(_loc2_ !== param1)
         {
            this._1394352404goodsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grantPermissionButton() : Button
      {
         return this._285626141grantPermissionButton;
      }
      
      public function set grantPermissionButton(param1:Button) : void
      {
         var _loc2_:Object = this._285626141grantPermissionButton;
         if(_loc2_ !== param1)
         {
            this._285626141grantPermissionButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grantPermissionButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grantgoodsnButton() : Button
      {
         return this._1856904262grantgoodsnButton;
      }
      
      public function set grantgoodsnButton(param1:Button) : void
      {
         var _loc2_:Object = this._1856904262grantgoodsnButton;
         if(_loc2_ !== param1)
         {
            this._1856904262grantgoodsnButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grantgoodsnButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idlabel() : TextInput
      {
         return this._1664248505idlabel;
      }
      
      public function set idlabel(param1:TextInput) : void
      {
         var _loc2_:Object = this._1664248505idlabel;
         if(_loc2_ !== param1)
         {
            this._1664248505idlabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idlabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idlabelShowGround() : TextInput
      {
         return this._1759683197idlabelShowGround;
      }
      
      public function set idlabelShowGround(param1:TextInput) : void
      {
         var _loc2_:Object = this._1759683197idlabelShowGround;
         if(_loc2_ !== param1)
         {
            this._1759683197idlabelShowGround = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idlabelShowGround",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kaxInput() : TextInput
      {
         return this._1196959496kaxInput;
      }
      
      public function set kaxInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1196959496kaxInput;
         if(_loc2_ !== param1)
         {
            this._1196959496kaxInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kaxInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kaxtest() : Button
      {
         return this._929947276kaxtest;
      }
      
      public function set kaxtest(param1:Button) : void
      {
         var _loc2_:Object = this._929947276kaxtest;
         if(_loc2_ !== param1)
         {
            this._929947276kaxtest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kaxtest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerGroup() : SkinnableContainer
      {
         return this._70001746layerGroup;
      }
      
      public function set layerGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._70001746layerGroup;
         if(_loc2_ !== param1)
         {
            this._70001746layerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lvlCheatButton() : Button
      {
         return this._108771229lvlCheatButton;
      }
      
      public function set lvlCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._108771229lvlCheatButton;
         if(_loc2_ !== param1)
         {
            this._108771229lvlCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lvlCheatInput() : TextInput
      {
         return this._135803783lvlCheatInput;
      }
      
      public function set lvlCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._135803783lvlCheatInput;
         if(_loc2_ !== param1)
         {
            this._135803783lvlCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get managePlayfield() : SkinnableContainer
      {
         return this._1896433055managePlayfield;
      }
      
      public function set managePlayfield(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._1896433055managePlayfield;
         if(_loc2_ !== param1)
         {
            this._1896433055managePlayfield = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"managePlayfield",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get manualRender() : Button
      {
         return this._1421629188manualRender;
      }
      
      public function set manualRender(param1:Button) : void
      {
         var _loc2_:Object = this._1421629188manualRender;
         if(_loc2_ !== param1)
         {
            this._1421629188manualRender = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"manualRender",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get matrixXCoords() : Label
      {
         return this._506016843matrixXCoords;
      }
      
      public function set matrixXCoords(param1:Label) : void
      {
         var _loc2_:Object = this._506016843matrixXCoords;
         if(_loc2_ !== param1)
         {
            this._506016843matrixXCoords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matrixXCoords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get matrixYCoords() : Label
      {
         return this._381486838matrixYCoords;
      }
      
      public function set matrixYCoords(param1:Label) : void
      {
         var _loc2_:Object = this._381486838matrixYCoords;
         if(_loc2_ !== param1)
         {
            this._381486838matrixYCoords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matrixYCoords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodCheatButton() : Button
      {
         return this._510102126moodCheatButton;
      }
      
      public function set moodCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._510102126moodCheatButton;
         if(_loc2_ !== param1)
         {
            this._510102126moodCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodCheatInput() : TextInput
      {
         return this._299801870moodCheatInput;
      }
      
      public function set moodCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._299801870moodCheatInput;
         if(_loc2_ !== param1)
         {
            this._299801870moodCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newData() : Button
      {
         return this._1844723050newData;
      }
      
      public function set newData(param1:Button) : void
      {
         var _loc2_:Object = this._1844723050newData;
         if(_loc2_ !== param1)
         {
            this._1844723050newData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsCountInput() : TextInput
      {
         return this._1833198495permissionsCountInput;
      }
      
      public function set permissionsCountInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1833198495permissionsCountInput;
         if(_loc2_ !== param1)
         {
            this._1833198495permissionsCountInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsCountInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsGroup() : SkinnableContainer
      {
         return this._1803764827permissionsGroup;
      }
      
      public function set permissionsGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._1803764827permissionsGroup;
         if(_loc2_ !== param1)
         {
            this._1803764827permissionsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsList() : DropDownList
      {
         return this._1604241598permissionsList;
      }
      
      public function set permissionsList(param1:DropDownList) : void
      {
         var _loc2_:Object = this._1604241598permissionsList;
         if(_loc2_ !== param1)
         {
            this._1604241598permissionsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldBar() : ButtonBar
      {
         return this._1694490643playfieldBar;
      }
      
      public function set playfieldBar(param1:ButtonBar) : void
      {
         var _loc2_:Object = this._1694490643playfieldBar;
         if(_loc2_ !== param1)
         {
            this._1694490643playfieldBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfiledLabel() : Label
      {
         return this._1088499616playfiledLabel;
      }
      
      public function set playfiledLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1088499616playfiledLabel;
         if(_loc2_ !== param1)
         {
            this._1088499616playfiledLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfiledLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ppCheatButton() : Button
      {
         return this._933734341ppCheatButton;
      }
      
      public function set ppCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._933734341ppCheatButton;
         if(_loc2_ !== param1)
         {
            this._933734341ppCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ppCheatInput() : TextInput
      {
         return this._2114582743ppCheatInput;
      }
      
      public function set ppCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._2114582743ppCheatInput;
         if(_loc2_ !== param1)
         {
            this._2114582743ppCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pwrCheatButton() : Button
      {
         return this._1649912422pwrCheatButton;
      }
      
      public function set pwrCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1649912422pwrCheatButton;
         if(_loc2_ !== param1)
         {
            this._1649912422pwrCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pwrCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pwrCheatInput() : TextInput
      {
         return this._922860642pwrCheatInput;
      }
      
      public function set pwrCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._922860642pwrCheatInput;
         if(_loc2_ !== param1)
         {
            this._922860642pwrCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pwrCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get questGroup() : SkinnableContainer
      {
         return this._553986749questGroup;
      }
      
      public function set questGroup(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._553986749questGroup;
         if(_loc2_ !== param1)
         {
            this._553986749questGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCheatButton() : Button
      {
         return this._1331147020rcCheatButton;
      }
      
      public function set rcCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1331147020rcCheatButton;
         if(_loc2_ !== param1)
         {
            this._1331147020rcCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCheatInput() : TextInput
      {
         return this._36687928rcCheatInput;
      }
      
      public function set rcCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._36687928rcCheatInput;
         if(_loc2_ !== param1)
         {
            this._36687928rcCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get renderToggleButton() : ToggleButton
      {
         return this._455351204renderToggleButton;
      }
      
      public function set renderToggleButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._455351204renderToggleButton;
         if(_loc2_ !== param1)
         {
            this._455351204renderToggleButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"renderToggleButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ricCheatButton() : Button
      {
         return this._489628359ricCheatButton;
      }
      
      public function set ricCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._489628359ricCheatButton;
         if(_loc2_ !== param1)
         {
            this._489628359ricCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ricCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ricCheatInput() : TextInput
      {
         return this._286636829ricCheatInput;
      }
      
      public function set ricCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._286636829ricCheatInput;
         if(_loc2_ !== param1)
         {
            this._286636829ricCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ricCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen1() : Button
      {
         return this._1926384965screen1;
      }
      
      public function set screen1(param1:Button) : void
      {
         var _loc2_:Object = this._1926384965screen1;
         if(_loc2_ !== param1)
         {
            this._1926384965screen1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen10() : Button
      {
         return this._411608181screen10;
      }
      
      public function set screen10(param1:Button) : void
      {
         var _loc2_:Object = this._411608181screen10;
         if(_loc2_ !== param1)
         {
            this._411608181screen10 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen10",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen11() : Button
      {
         return this._411608180screen11;
      }
      
      public function set screen11(param1:Button) : void
      {
         var _loc2_:Object = this._411608180screen11;
         if(_loc2_ !== param1)
         {
            this._411608180screen11 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen11",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen12() : Button
      {
         return this._411608179screen12;
      }
      
      public function set screen12(param1:Button) : void
      {
         var _loc2_:Object = this._411608179screen12;
         if(_loc2_ !== param1)
         {
            this._411608179screen12 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen12",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen2() : Button
      {
         return this._1926384966screen2;
      }
      
      public function set screen2(param1:Button) : void
      {
         var _loc2_:Object = this._1926384966screen2;
         if(_loc2_ !== param1)
         {
            this._1926384966screen2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen3() : Button
      {
         return this._1926384967screen3;
      }
      
      public function set screen3(param1:Button) : void
      {
         var _loc2_:Object = this._1926384967screen3;
         if(_loc2_ !== param1)
         {
            this._1926384967screen3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen4() : Button
      {
         return this._1926384968screen4;
      }
      
      public function set screen4(param1:Button) : void
      {
         var _loc2_:Object = this._1926384968screen4;
         if(_loc2_ !== param1)
         {
            this._1926384968screen4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen5() : Button
      {
         return this._1926384969screen5;
      }
      
      public function set screen5(param1:Button) : void
      {
         var _loc2_:Object = this._1926384969screen5;
         if(_loc2_ !== param1)
         {
            this._1926384969screen5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen6() : Button
      {
         return this._1926384970screen6;
      }
      
      public function set screen6(param1:Button) : void
      {
         var _loc2_:Object = this._1926384970screen6;
         if(_loc2_ !== param1)
         {
            this._1926384970screen6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen7() : Button
      {
         return this._1926384971screen7;
      }
      
      public function set screen7(param1:Button) : void
      {
         var _loc2_:Object = this._1926384971screen7;
         if(_loc2_ !== param1)
         {
            this._1926384971screen7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen8() : Button
      {
         return this._1926384972screen8;
      }
      
      public function set screen8(param1:Button) : void
      {
         var _loc2_:Object = this._1926384972screen8;
         if(_loc2_ !== param1)
         {
            this._1926384972screen8 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen8",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen9() : Button
      {
         return this._1926384973screen9;
      }
      
      public function set screen9(param1:Button) : void
      {
         var _loc2_:Object = this._1926384973screen9;
         if(_loc2_ !== param1)
         {
            this._1926384973screen9 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen9",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCheat() : ToggleButton
      {
         return this._1929547818showCheat;
      }
      
      public function set showCheat(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1929547818showCheat;
         if(_loc2_ !== param1)
         {
            this._1929547818showCheat = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCheat",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ToggleButton
      {
         return this._339314617showData;
      }
      
      public function set showData(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._339314617showData;
         if(_loc2_ !== param1)
         {
            this._339314617showData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGoodlist() : ToggleButton
      {
         return this._1271037176showGoodlist;
      }
      
      public function set showGoodlist(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1271037176showGoodlist;
         if(_loc2_ !== param1)
         {
            this._1271037176showGoodlist = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGoodlist",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGroundType() : ToggleButton
      {
         return this._1471963074showGroundType;
      }
      
      public function set showGroundType(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1471963074showGroundType;
         if(_loc2_ !== param1)
         {
            this._1471963074showGroundType = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGroundType",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showId() : ToggleButton
      {
         return this._903145224showId;
      }
      
      public function set showId(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._903145224showId;
         if(_loc2_ !== param1)
         {
            this._903145224showId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showLayer() : ToggleButton
      {
         return this._1921425324showLayer;
      }
      
      public function set showLayer(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1921425324showLayer;
         if(_loc2_ !== param1)
         {
            this._1921425324showLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showPermission() : ToggleButton
      {
         return this._1076470956showPermission;
      }
      
      public function set showPermission(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1076470956showPermission;
         if(_loc2_ !== param1)
         {
            this._1076470956showPermission = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPermission",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showQuest() : ToggleButton
      {
         return this._1916230683showQuest;
      }
      
      public function set showQuest(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1916230683showQuest;
         if(_loc2_ !== param1)
         {
            this._1916230683showQuest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showQuest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showSwitchPlayfield() : ToggleButton
      {
         return this._1575623861showSwitchPlayfield;
      }
      
      public function set showSwitchPlayfield(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1575623861showSwitchPlayfield;
         if(_loc2_ !== param1)
         {
            this._1575623861showSwitchPlayfield = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSwitchPlayfield",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showUpsellOfferLayer() : Button
      {
         return this._1448052289showUpsellOfferLayer;
      }
      
      public function set showUpsellOfferLayer(param1:Button) : void
      {
         var _loc2_:Object = this._1448052289showUpsellOfferLayer;
         if(_loc2_ !== param1)
         {
            this._1448052289showUpsellOfferLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showUpsellOfferLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showWorldMap() : Button
      {
         return this._815758713showWorldMap;
      }
      
      public function set showWorldMap(param1:Button) : void
      {
         var _loc2_:Object = this._815758713showWorldMap;
         if(_loc2_ !== param1)
         {
            this._815758713showWorldMap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showWorldMap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shutdownButton() : Button
      {
         return this._1981120216shutdownButton;
      }
      
      public function set shutdownButton(param1:Button) : void
      {
         var _loc2_:Object = this._1981120216shutdownButton;
         if(_loc2_ !== param1)
         {
            this._1981120216shutdownButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shutdownButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textinput() : TextInput
      {
         return this._1028503875textinput;
      }
      
      public function set textinput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1028503875textinput;
         if(_loc2_ !== param1)
         {
            this._1028503875textinput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textinput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get toggleSpool() : ToggleButton
      {
         return this._656707557toggleSpool;
      }
      
      public function set toggleSpool(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._656707557toggleSpool;
         if(_loc2_ !== param1)
         {
            this._656707557toggleSpool = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toggleSpool",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get townhallharvestButton() : Button
      {
         return this._188490736townhallharvestButton;
      }
      
      public function set townhallharvestButton(param1:Button) : void
      {
         var _loc2_:Object = this._188490736townhallharvestButton;
         if(_loc2_ !== param1)
         {
            this._188490736townhallharvestButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"townhallharvestButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get traceProf() : Button
      {
         return this._724164158traceProf;
      }
      
      public function set traceProf(param1:Button) : void
      {
         var _loc2_:Object = this._724164158traceProf;
         if(_loc2_ !== param1)
         {
            this._724164158traceProf = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traceProf",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tuttest() : Button
      {
         return this._963459803tuttest;
      }
      
      public function set tuttest(param1:Button) : void
      {
         var _loc2_:Object = this._963459803tuttest;
         if(_loc2_ !== param1)
         {
            this._963459803tuttest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tuttest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upsellUpdateButton() : Button
      {
         return this._2034630040upsellUpdateButton;
      }
      
      public function set upsellUpdateButton(param1:Button) : void
      {
         var _loc2_:Object = this._2034630040upsellUpdateButton;
         if(_loc2_ !== param1)
         {
            this._2034630040upsellUpdateButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upsellUpdateButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vcCheatButton() : Button
      {
         return this._1790208248vcCheatButton;
      }
      
      public function set vcCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1790208248vcCheatButton;
         if(_loc2_ !== param1)
         {
            this._1790208248vcCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vcCheatInput() : TextInput
      {
         return this._479642948vcCheatInput;
      }
      
      public function set vcCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._479642948vcCheatInput;
         if(_loc2_ !== param1)
         {
            this._479642948vcCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get worCheatButton() : Button
      {
         return this._1453368555worCheatButton;
      }
      
      public function set worCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1453368555worCheatButton;
         if(_loc2_ !== param1)
         {
            this._1453368555worCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get worCheatInput() : TextInput
      {
         return this._2131345137worCheatInput;
      }
      
      public function set worCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._2131345137worCheatInput;
         if(_loc2_ !== param1)
         {
            this._2131345137worCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worCheatInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xpCheatButton() : Button
      {
         return this._1413489715xpCheatButton;
      }
      
      public function set xpCheatButton(param1:Button) : void
      {
         var _loc2_:Object = this._1413489715xpCheatButton;
         if(_loc2_ !== param1)
         {
            this._1413489715xpCheatButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xpCheatButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xpCheatInput() : TextInput
      {
         return this._1147722801xpCheatInput;
      }
      
      public function set xpCheatInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1147722801xpCheatInput;
         if(_loc2_ !== param1)
         {
            this._1147722801xpCheatInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xpCheatInput",_loc2_,param1));
            }
         }
      }
   }
}

