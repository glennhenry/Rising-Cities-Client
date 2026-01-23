package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.FocusEvent;
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FriendMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _674613431failIcon:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _198043749inviteButton:MultistateButton;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1016041355okIcon:BriskImageDynaLib;
      
      private var _1556596209serverResponseLocaLabel:LocaLabel;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _friendData:String;
      
      private var _isDirty:Boolean = true;
      
      private var _isDirtyText:Boolean = true;
      
      public function FriendMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendMiniLayer_Array1_c);
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
      
      private function createText() : void
      {
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirtyText)
         {
            this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.title"));
            this.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.flavour")),TextConverter.TEXT_FIELD_HTML_FORMAT);
            this.valueLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.defaultInput"));
            this.inviteButton.label = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteAddFriendButton"));
            this._isDirtyText = false;
            this.valueLabel.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.minilayer.invite.textfield"));
            this.inviteButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.minilayer.invite.button"));
         }
         if(this._isDirty)
         {
            if(this._friendData == FriendBookConstants.EVENT_DATA_INVITE_SUCCESS)
            {
               this.failIcon.visible = false;
               this.failIcon.includeInLayout = false;
               this.okIcon.visible = true;
               this.okIcon.includeInLayout = true;
               this.serverResponseLocaLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.success"));
               this.serverResponseLocaLabel.styleName = "friendInviteMiniLayerSuccess";
            }
            else if(this._friendData == FriendBookConstants.EVENT_DATA_INVITE_FAIL)
            {
               this.failIcon.visible = true;
               this.failIcon.includeInLayout = true;
               this.okIcon.visible = false;
               this.okIcon.includeInLayout = false;
               this.serverResponseLocaLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.fail"));
               this.serverResponseLocaLabel.styleName = "friendInviteMiniLayer";
            }
            else if(this._friendData == FriendBookConstants.EVENT_DATA_INVITE_FAIL_ALLREADY_THERE)
            {
               this.failIcon.visible = true;
               this.failIcon.includeInLayout = true;
               this.okIcon.visible = false;
               this.okIcon.includeInLayout = false;
               this.serverResponseLocaLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.foundfail"));
               this.serverResponseLocaLabel.styleName = "friendInviteMiniLayer";
            }
         }
      }
      
      private function cleanAll() : void
      {
         this.valueLabel.text = "";
         this.failIcon.visible = false;
         this.failIcon.includeInLayout = false;
         this.okIcon.visible = false;
         this.okIcon.includeInLayout = false;
         this.serverResponseLocaLabel.text = "";
      }
      
      public function setData(param1:*) : void
      {
         if(!RandomUtilities.isEqual(param1,this._friendData))
         {
            this._isDirty = true;
            this._friendData = param1 as String;
            this.invalidateProperties();
         }
      }
      
      private function _FriendMiniLayer_Array1_c() : Array
      {
         return [this._FriendMiniLayer_VGroup1_i()];
      }
      
      private function _FriendMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._FriendMiniLayer_LocaLabel1_i(),this._FriendMiniLayer_Group1_c(),this._FriendMiniLayer_Group9_c(),this._FriendMiniLayer_MultistateButton1_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _FriendMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 45;
         _loc1_.percentWidth = 85;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendMiniLayer_VGroup2_c(),this._FriendMiniLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._FriendMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib1_c(),this._FriendMiniLayer_BriskMCDynaLib1_c(),this._FriendMiniLayer_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "quadrillepaper_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.right = -10;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.height = 98;
         _loc1_.top = 14;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.height = 98;
         _loc1_.left = -10;
         _loc1_.top = 14;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalCenter = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FriendMiniLayer_Group3_c(),this._FriendMiniLayer_Group4_c(),this._FriendMiniLayer_BriskImageDynaLib6_c(),this._FriendMiniLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 14;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 220;
         _loc1_.mxmlContent = [this._FriendMiniLayer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 220;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib2_c(),this._FriendMiniLayer_Group5_c(),this._FriendMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_population";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib3_c(),this._FriendMiniLayer_Group6_c(),this._FriendMiniLayer_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_links";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib4_c(),this._FriendMiniLayer_TextInputCursorSave1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.width = 146;
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_mitte";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         _loc1_.width = 140;
         _loc1_.verticalCenter = 1;
         _loc1_.horizontalCenter = 0;
         _loc1_.text = "Das ist ein langer name hier einlanger";
         _loc1_.selectable = true;
         _loc1_.styleName = "numStepper";
         _loc1_.addEventListener("focusIn",this.__valueLabel_focusIn);
         _loc1_.id = "valueLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.valueLabel = _loc1_;
         BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
         return _loc1_;
      }
      
      public function __valueLabel_focusIn(param1:FocusEvent) : void
      {
         this.cleanAll();
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_rechts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.width = 190;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "head_line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 220;
         _loc1_.paddingLeft = -18;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FriendMiniLayer_Group7_c(),this._FriendMiniLayer_Group8_c(),this._FriendMiniLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib7_i(),this._FriendMiniLayer_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.measuredWidth = 0;
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "friendadd_fail";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "failIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.failIcon = _loc1_;
         BindingManager.executeBindings(this,"failIcon",this.failIcon);
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.measuredHeight = 0;
         _loc1_.measuredWidth = 0;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "okIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.okIcon = _loc1_;
         BindingManager.executeBindings(this,"okIcon",this.okIcon);
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "friendInviteMiniLayer";
         _loc1_.maxWidth = 150;
         _loc1_.maxHeight = 30;
         _loc1_.id = "serverResponseLocaLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.serverResponseLocaLabel = _loc1_;
         BindingManager.executeBindings(this,"serverResponseLocaLabel",this.serverResponseLocaLabel);
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_checkmark";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.id = "inviteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inviteButton = _loc1_;
         BindingManager.executeBindings(this,"inviteButton",this.inviteButton);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get failIcon() : BriskImageDynaLib
      {
         return this._674613431failIcon;
      }
      
      public function set failIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._674613431failIcon;
         if(_loc2_ !== param1)
         {
            this._674613431failIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"failIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteButton() : MultistateButton
      {
         return this._198043749inviteButton;
      }
      
      public function set inviteButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._198043749inviteButton;
         if(_loc2_ !== param1)
         {
            this._198043749inviteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okIcon() : BriskImageDynaLib
      {
         return this._1016041355okIcon;
      }
      
      public function set okIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1016041355okIcon;
         if(_loc2_ !== param1)
         {
            this._1016041355okIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverResponseLocaLabel() : LocaLabel
      {
         return this._1556596209serverResponseLocaLabel;
      }
      
      public function set serverResponseLocaLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1556596209serverResponseLocaLabel;
         if(_loc2_ !== param1)
         {
            this._1556596209serverResponseLocaLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverResponseLocaLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : TextInputCursorSave
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:TextInputCursorSave) : void
      {
         var _loc2_:Object = this._2025208835valueLabel;
         if(_loc2_ !== param1)
         {
            this._2025208835valueLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
            }
         }
      }
   }
}

