package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendDetailsCenterComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FriendTemplateDetailview extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FriendTemplateDetailview_LocaLabel4:LocaLabel;
      
      public var _FriendTemplateDetailview_LocaLabel6:LocaLabel;
      
      public var _FriendTemplateDetailview_LocaLabel8:LocaLabel;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1781625235buttonGroup:VGroup;
      
      private var _1364013995center:FriendDetailsCenterComponent;
      
      private var _1649846058centerGroup:VGroup;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1594450399giftingHeader:PostitHeaderComponent;
      
      private var _1115058732headline:LocaLabel;
      
      private var _1725723944informationLabel:LocaLabel;
      
      private var _1556642751lastLoginLabel:LocaLabel;
      
      private var _336957564registeredDateLabel:LocaLabel;
      
      private var _1819087793rejectButton:MultistateButton;
      
      private var _326024711subHeaderLabel:LocaLabel;
      
      private var _781541034toalingameTimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FriendVo;
      
      private var _dirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendTemplateDetailview()
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
         bindings = this._FriendTemplateDetailview_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_tabsContent_FriendTemplateDetailviewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FriendTemplateDetailview[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._FriendTemplateDetailview_VGroup1_c()];
         this.addEventListener("creationComplete",this.___FriendTemplateDetailview_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function getFormatedDateString(param1:Number, param2:String) : String
      {
         var _loc3_:Number = NaN;
         if(param1 < 60000 * 60)
         {
            _loc3_ = Math.floor(param1 / 60000);
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Minutes",[_loc3_]);
         }
         if(param1 < 60000 * 60 * 24)
         {
            _loc3_ = Math.floor(param1 / (60000 * 60));
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Houres",[_loc3_]);
         }
         if(param1 < 60000 * 60 * 24 * 7)
         {
            _loc3_ = Math.floor(param1 / (60000 * 60 * 24));
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Days",[_loc3_]);
         }
         if(param1 < 60000 * 60 * 24 * 7 * 4)
         {
            _loc3_ = Math.floor(param1 / (60000 * 60 * 24 * 7));
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Weeks",[_loc3_]);
         }
         if(param1 < 60000 * 60 * 24 * 7 * 4 * 12)
         {
            _loc3_ = Math.floor(param1 / (60000 * 60 * 24 * 7 * 4));
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Months",[_loc3_]);
         }
         if(param1 >= 60000 * 60 * 24 * 7 * 4 * 12)
         {
            _loc3_ = Math.floor(param1 / (60000 * 60 * 24 * 7 * 4 * 12));
            return LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook." + param2 + "Years",[_loc3_]);
         }
         return "";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         FriendTemplateDetailview._watcherSetupUtil = param1;
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
         this.informationLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerInformation");
         this.headline.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetails");
         this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
         this.giftingHeader.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteGifting");
         this.subHeaderLabel.text = LocaUtils.getString("rcl.booklayer.treasury","rcl.booklayer.treasury.comingsoon");
         this.acceptButton.label = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePendingButtonAccept");
         this.rejectButton.label = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePendingButtonReject");
         this.acceptButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.frienddetail.accept");
         this.rejectButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.frienddetail.decline");
         this.setupCenter();
         this.updateAll();
      }
      
      public function setData(param1:FriendVo) : void
      {
         if(RandomUtilities.isUnEqual(this._data,param1))
         {
            this._data = param1;
            this._dirty = true;
            if(this._data.status == FriendVo.PENDING)
            {
               this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteDetailPending_flavor");
               this.buttonGroup.visible = true;
               this.centerGroup.verticalAlign = "top";
            }
            else
            {
               this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteDetail_flavor");
               this.buttonGroup.visible = false;
               this.centerGroup.verticalAlign = "middle";
            }
            invalidateProperties();
         }
      }
      
      private function updateAll() : void
      {
         this.setTooltips();
      }
      
      public function get data() : FriendVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         this.center.setStyle("tooltipLeftScroll",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.previous"));
         this.center.setStyle("tooltipRightScroll",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.next"));
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Date = null;
         super.commitProperties();
         if(this._dirty && Boolean(this._data))
         {
            _loc1_ = new Date();
            this.registeredDateLabel.text = getFormatedDateString(_loc1_.time - this._data.accountCreatedDate * 1000,"playerInfoRegisteredDate");
            this.lastLoginLabel.text = getFormatedDateString(_loc1_.time - this._data.lastLoginDate * 1000,"playerInfoLastLoginDate");
            this.toalingameTimeLabel.text = getFormatedDateString(this._data.lastLoginDate * 1000 - this._data.accountCreatedDate * 1000,"playerInfoTotalDate");
            this.setupCenter();
            this.setTooltips();
            this.updateAll();
            this._dirty = false;
         }
      }
      
      private function acceptEvent() : void
      {
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.ACCEPT_FRIEND_EVENT,true);
         _loc1_.friendVo = this.center.centerItem.data as FriendVo;
         dispatchEvent(_loc1_);
         this._data.status = FriendVo.FINISHED;
         this.buttonGroup.visible = false;
         this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
         this.buttonGroup.visible = false;
         this.centerGroup.verticalAlign = "middle";
      }
      
      private function rejectEvent() : void
      {
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.REJECT_FRIEND_EVENT,true);
         _loc1_.friendVo = this.center.centerItem.data as FriendVo;
         dispatchEvent(_loc1_);
         this._data.status = FriendVo.FINISHED;
         this.buttonGroup.visible = false;
         this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
         this.buttonGroup.visible = false;
         this.centerGroup.verticalAlign = "middle";
      }
      
      private function setupCenter() : void
      {
         var _loc1_:CenterItemFriendDataVo = new CenterItemFriendDataVo();
         _loc1_.friendVO = this._data;
         _loc1_.showButton = true;
         _loc1_.buyEnabled = true;
         this.center.data = _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = -10;
         _loc1_.right = 30;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel1_i(),this._FriendTemplateDetailview_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 600;
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_VGroup2_c(),this._FriendTemplateDetailview_VGroup5_i(),this._FriendTemplateDetailview_VGroup7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 240;
         _loc1_.height = 300;
         _loc1_.left = 0;
         _loc1_.bottom = 25;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_BriskImageDynaLib1_c(),this._FriendTemplateDetailview_VGroup3_c(),this._FriendTemplateDetailview_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "quadrillepaper_informations";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingLeft = 18;
         _loc1_.paddingTop = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 2;
         _loc1_.width = 204;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_Group3_c(),this._FriendTemplateDetailview_LocaLabel2_i(),this._FriendTemplateDetailview_LocaLabel3_i(),this._FriendTemplateDetailview_BriskImageDynaLib2_c(),this._FriendTemplateDetailview_Group4_c(),this._FriendTemplateDetailview_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 16;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "friendPaperSubHeadlineSmall";
         _loc1_.text = "HEADLINE";
         _loc1_.setStyle("paddingBottom",4);
         _loc1_.id = "informationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.informationLabel = _loc1_;
         BindingManager.executeBindings(this,"informationLabel",this.informationLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "friendPaperHeadline";
         _loc1_.text = "Headline";
         _loc1_.id = "headline";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headline = _loc1_;
         BindingManager.executeBindings(this,"headline",this.headline);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _FriendTemplateDetailview_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 16;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 4;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_HGroup2_c(),this._FriendTemplateDetailview_HGroup3_c(),this._FriendTemplateDetailview_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel4_i(),this._FriendTemplateDetailview_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridStatisticNames";
         _loc1_.percentWidth = 80;
         _loc1_.id = "_FriendTemplateDetailview_LocaLabel4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FriendTemplateDetailview_LocaLabel4 = _loc1_;
         BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel4",this._FriendTemplateDetailview_LocaLabel4);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridFriendStatisticValues";
         _loc1_.percentWidth = 40;
         _loc1_.id = "registeredDateLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.registeredDateLabel = _loc1_;
         BindingManager.executeBindings(this,"registeredDateLabel",this.registeredDateLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel6_i(),this._FriendTemplateDetailview_LocaLabel7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridStatisticNames";
         _loc1_.percentWidth = 80;
         _loc1_.id = "_FriendTemplateDetailview_LocaLabel6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FriendTemplateDetailview_LocaLabel6 = _loc1_;
         BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel6",this._FriendTemplateDetailview_LocaLabel6);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridFriendStatisticValues";
         _loc1_.percentWidth = 40;
         _loc1_.id = "lastLoginLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lastLoginLabel = _loc1_;
         BindingManager.executeBindings(this,"lastLoginLabel",this.lastLoginLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel8_i(),this._FriendTemplateDetailview_LocaLabel9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel8_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridStatisticNames";
         _loc1_.percentWidth = 80;
         _loc1_.id = "_FriendTemplateDetailview_LocaLabel8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FriendTemplateDetailview_LocaLabel8 = _loc1_;
         BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel8",this._FriendTemplateDetailview_LocaLabel8);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel9_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "DataGridFriendStatisticValues";
         _loc1_.percentWidth = 40;
         _loc1_.id = "toalingameTimeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.toalingameTimeLabel = _loc1_;
         BindingManager.executeBindings(this,"toalingameTimeLabel",this.toalingameTimeLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -10;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_FriendDetailsCenterComponent1_i(),this._FriendTemplateDetailview_VGroup6_i()];
         _loc1_.id = "centerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerGroup = _loc1_;
         BindingManager.executeBindings(this,"centerGroup",this.centerGroup);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_FriendDetailsCenterComponent1_i() : FriendDetailsCenterComponent
      {
         var _loc1_:FriendDetailsCenterComponent = new FriendDetailsCenterComponent();
         _loc1_.id = "center";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.center = _loc1_;
         BindingManager.executeBindings(this,"center",this.center);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup6_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_MultistateButton1_i(),this._FriendTemplateDetailview_MultistateButton2_i()];
         _loc1_.id = "buttonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonGroup = _loc1_;
         BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "friendAdd";
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_checkmark";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.addEventListener("mouseUp",this.__acceptButton_mouseUp);
         _loc1_.id = "acceptButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButton = _loc1_;
         BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
         return _loc1_;
      }
      
      public function __acceptButton_mouseUp(param1:MouseEvent) : void
      {
         this.acceptEvent();
      }
      
      private function _FriendTemplateDetailview_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "abort";
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_no";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.addEventListener("mouseUp",this.__rejectButton_mouseUp);
         _loc1_.id = "rejectButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rejectButton = _loc1_;
         BindingManager.executeBindings(this,"rejectButton",this.rejectButton);
         return _loc1_;
      }
      
      public function __rejectButton_mouseUp(param1:MouseEvent) : void
      {
         this.rejectEvent();
      }
      
      private function _FriendTemplateDetailview_VGroup7_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 220;
         _loc1_.height = 290;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_StickyNoteComponent1_c()];
         _loc1_.id = "effectsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsGroup = _loc1_;
         BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 154;
         _loc1_.tapeTop = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendTemplateDetailview_Array14_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_Array14_c() : Array
      {
         return [this._FriendTemplateDetailview_VGroup8_c(),this._FriendTemplateDetailview_MultistateButton3_c()];
      }
      
      private function _FriendTemplateDetailview_VGroup8_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._FriendTemplateDetailview_PostitHeaderComponent1_i(),this._FriendTemplateDetailview_LocaLabel10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.forcedstyleName = "friendPaperHeadline";
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "giftingHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.giftingHeader = _loc1_;
         BindingManager.executeBindings(this,"giftingHeader",this.giftingHeader);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel10_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "friendPaperSubHeadline";
         _loc1_.id = "subHeaderLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subHeaderLabel = _loc1_;
         BindingManager.executeBindings(this,"subHeaderLabel",this.subHeaderLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_MultistateButton3_c() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.enabled = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 8;
         _loc1_.width = 172;
         _loc1_.imageNameLeft = "button_icon_closed";
         _loc1_.imageNameRight = "gui_popups_FriendBook";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___FriendTemplateDetailview_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _FriendTemplateDetailview_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsRegisteredDate");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_FriendTemplateDetailview_LocaLabel4.text");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsLastLogin");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_FriendTemplateDetailview_LocaLabel6.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsTotalIngameTime");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_FriendTemplateDetailview_LocaLabel8.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGroup() : VGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1781625235buttonGroup;
         if(_loc2_ !== param1)
         {
            this._1781625235buttonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : FriendDetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:FriendDetailsCenterComponent) : void
      {
         var _loc2_:Object = this._1364013995center;
         if(_loc2_ !== param1)
         {
            this._1364013995center = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerGroup() : VGroup
      {
         return this._1649846058centerGroup;
      }
      
      public function set centerGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1649846058centerGroup;
         if(_loc2_ !== param1)
         {
            this._1649846058centerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._490397341effectsGroup;
         if(_loc2_ !== param1)
         {
            this._490397341effectsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giftingHeader() : PostitHeaderComponent
      {
         return this._1594450399giftingHeader;
      }
      
      public function set giftingHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1594450399giftingHeader;
         if(_loc2_ !== param1)
         {
            this._1594450399giftingHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giftingHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headline() : LocaLabel
      {
         return this._1115058732headline;
      }
      
      public function set headline(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1115058732headline;
         if(_loc2_ !== param1)
         {
            this._1115058732headline = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headline",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get informationLabel() : LocaLabel
      {
         return this._1725723944informationLabel;
      }
      
      public function set informationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1725723944informationLabel;
         if(_loc2_ !== param1)
         {
            this._1725723944informationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastLoginLabel() : LocaLabel
      {
         return this._1556642751lastLoginLabel;
      }
      
      public function set lastLoginLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1556642751lastLoginLabel;
         if(_loc2_ !== param1)
         {
            this._1556642751lastLoginLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastLoginLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get registeredDateLabel() : LocaLabel
      {
         return this._336957564registeredDateLabel;
      }
      
      public function set registeredDateLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._336957564registeredDateLabel;
         if(_loc2_ !== param1)
         {
            this._336957564registeredDateLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"registeredDateLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rejectButton() : MultistateButton
      {
         return this._1819087793rejectButton;
      }
      
      public function set rejectButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1819087793rejectButton;
         if(_loc2_ !== param1)
         {
            this._1819087793rejectButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rejectButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subHeaderLabel() : LocaLabel
      {
         return this._326024711subHeaderLabel;
      }
      
      public function set subHeaderLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._326024711subHeaderLabel;
         if(_loc2_ !== param1)
         {
            this._326024711subHeaderLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subHeaderLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get toalingameTimeLabel() : LocaLabel
      {
         return this._781541034toalingameTimeLabel;
      }
      
      public function set toalingameTimeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._781541034toalingameTimeLabel;
         if(_loc2_ !== param1)
         {
            this._781541034toalingameTimeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toalingameTimeLabel",_loc2_,param1));
            }
         }
      }
   }
}

