package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
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
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerEnergyMoodComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerShopComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SpecificPlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class PlayfieldItemUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      public var _PlayfieldItemUiInfolayerContent_Group2:Group;
      
      public var _PlayfieldItemUiInfolayerContent_Group3:Group;
      
      public var _PlayfieldItemUiInfolayerContent_Group4:Group;
      
      public var _PlayfieldItemUiInfolayerContent_LocaLabel4:LocaLabel;
      
      private var _282001022contentVGroup:VGroup;
      
      private var _284027091firebadge:BriskImageDynaLib;
      
      private var _1454149207hospitalbadge:BriskImageDynaLib;
      
      private var _96419224masteryGroup:VGroup;
      
      private var _350687281masteryProgressBar:SlimProgressBarComponent;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1694421686masteryStarGroup:HGroup;
      
      private var _845656926moodEnergyComponent:InfoLayerEnergyMoodComponent;
      
      private var _407317255permissionAmount:LocaLabel;
      
      private var _1643738640permissionGroup:VGroup;
      
      private var _1438451992permissionIcon:BriskImageDynaLib;
      
      private var _1639640475permissionLabel:LocaLabel;
      
      private var _1595242821policebadge:BriskImageDynaLib;
      
      private var _366670780productionComponent:InfoLayerProductionComponent;
      
      private var _607607385residentialComponent:InfoLayerResidentialComponent;
      
      private var _726395105securityGroup:VGroup;
      
      private var _665626969shopComponent:InfoLayerShopComponent;
      
      private var _1286778554specialGroup:VGroup;
      
      private var _1615133998specialtextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:PlayfieldItemUiInfolayerContentVo;
      
      private var _masteryStars:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayfieldItemUiInfolayerContent()
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
         bindings = this._PlayfieldItemUiInfolayerContent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_PlayfieldItemUiInfolayerContentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PlayfieldItemUiInfolayerContent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.maxWidth = 230;
         this.width = 230;
         this.minWidth = 230;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PlayfieldItemUiInfolayerContent_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function getColorFromAmount(param1:Number) : uint
      {
         if(param1 < 0)
         {
            return 14300688;
         }
         if(param1 > 0)
         {
            return 8237580;
         }
         return 7303023;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PlayfieldItemUiInfolayerContent._watcherSetupUtil = param1;
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
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         if(param1 is PlayfieldItemUiInfolayerContentVo)
         {
            this._implementationData = param1 as PlayfieldItemUiInfolayerContentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong Vo for this component use PlayfieldItemUiInfolayerContentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._implementationData) && _dirty)
         {
            this.checkSpecialStats();
            this.checkSecurityStats();
            this.checkPermissionAndLevelLockStats();
            this.checkBuildingMastery();
            this.moodEnergyComponent.data = this._implementationData.infoLayerConfigPlayfieldItemVo;
            this.moodEnergyComponent.includeInLayout = this.moodEnergyComponent.visible = !isNaN(this._implementationData.infoLayerConfigPlayfieldItemVo.energyValue) || !isNaN(this._implementationData.infoLayerConfigPlayfieldItemVo.moodValue);
            this.residentialComponent.data = this._implementationData.infoLayerConfigPlayfieldItemVo;
            this.residentialComponent.includeInLayout = this.residentialComponent.visible = this._implementationData.infoLayerConfigPlayfieldItemVo.baseharvestOutput != null;
            this.productionComponent.data = this._implementationData.infoLayerConfigPlayfieldItemVo;
            this.productionComponent.includeInLayout = this.productionComponent.visible = this._implementationData.infoLayerConfigPlayfieldItemVo.goodsProduced.length > 0;
            this.shopComponent.data = this._implementationData.infoLayerConfigPlayfieldItemVo;
            this.shopComponent.includeInLayout = this.shopComponent.visible = this._implementationData.infoLayerConfigPlayfieldItemVo.shopRadius != null;
            this.setDividerVisibility();
         }
         super.commitProperties();
      }
      
      private function checkBuildingMastery() : void
      {
         this.masteryGroup.visible = this.masteryGroup.includeInLayout = this._implementationData.masteryChallenge != null && Boolean(this._implementationData.configMasteryChallenge);
         if(this.masteryGroup.visible)
         {
            var _loc1_:MasteryChallengeDTO = this._implementationData.masteryChallenge;
            var _loc2_:ConfigMasteryChallengeDTO = this._implementationData.configMasteryChallenge;
            var _loc3_:int = 0;
            var _loc4_:int = 0;
            this.masteryProgressBar.progress = null.currentProgress;
            var _loc5_:int = 0;
            for each(var _loc6_ in this.masteryStars)
            {
               null.dynaBmpSourceName = "mastery_star_grey";
               _loc5_++;
            }
         }
      }
      
      private function get masteryStars() : Vector.<BriskImageDynaLib>
      {
         if(this._masteryStars == null)
         {
            this._masteryStars = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
         }
         return this._masteryStars;
      }
      
      private function checkSecurityStats() : void
      {
         this.securityGroup.visible = this.securityGroup.includeInLayout = this._implementationData.configSecurityGrades.length > 0;
         this.firebadge.visible = this.firebadge.includeInLayout = false;
         this.policebadge.visible = this.policebadge.includeInLayout = false;
         this.hospitalbadge.visible = this.hospitalbadge.includeInLayout = false;
         for each(var _loc1_ in this._implementationData.configSecurityGrades)
         {
            switch(null.type)
            {
               case ServerTagConstants.FIRE_DEPARTMENT:
                  this.firebadge.visible = this.firebadge.includeInLayout = true;
                  break;
               case ServerTagConstants.POLICE_DEPARTMENT:
                  this.policebadge.visible = this.policebadge.includeInLayout = true;
                  break;
               case ServerTagConstants.HOSPITAL:
                  this.hospitalbadge.visible = this.hospitalbadge.includeInLayout = true;
            }
         }
      }
      
      private function checkPermissionAndLevelLockStats() : void
      {
         var _temp_1:* = topInformation;
         topInformation.includeInLayout = false;
         _temp_1.visible = false;
         headerIcon.dynaBmpSourceName = "infolayer_icon_info";
         header.labelSidePaddings = 0;
         if(this._implementationData.userPermissionStock > 0 && this._implementationData.needsPermissions)
         {
            var _temp_3:* = this.permissionGroup;
            var _loc1_:Boolean;
            this.permissionGroup.includeInLayout = _loc1_ = true;
            _temp_3.visible = false;
            this.permissionAmount.text = this._implementationData.userPermissionStock.toString();
            _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
            if(this._implementationData.isPremium)
            {
               this.permissionIcon.dynaBmpSourceName = "permission_icon_constructed";
               this.permissionLabel.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.constructedAvailable");
            }
            else
            {
               this.permissionIcon.dynaBmpSourceName = "permission_icon";
               this.permissionLabel.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.label");
            }
         }
         else if(this._implementationData.needsPermissions && this._implementationData.buyablePermissionStock > 0 && this._implementationData.userPermissionStock <= 0)
         {
            var _temp_6:* = this.permissionGroup;
            this.permissionGroup.includeInLayout = _loc1_ = false;
            _temp_6.visible = false;
            var _temp_7:* = topInformation;
            topInformation.includeInLayout = _loc1_ = true;
            _temp_7.visible = false;
            topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.rebuyable");
            _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
         }
         else
         {
            _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
            var _temp_8:* = this.permissionGroup;
            this.permissionGroup.includeInLayout = _loc1_ = false;
            _temp_8.visible = false;
         }
         if(!this._implementationData.isReward)
         {
            if(this._implementationData.isUnlocked)
            {
               if(this._implementationData.userPermissionStock == 0)
               {
                  if(this._implementationData.buyablePermissionStock > 0)
                  {
                     _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                     var _temp_9:* = topInformation;
                     topInformation.includeInLayout = _loc1_ = true;
                     _temp_9.visible = false;
                     topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.rebuyable");
                  }
                  else
                  {
                     _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_GREY_X;
                  }
               }
            }
            else
            {
               _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_LOCKED;
               header.labelSidePaddings = 20;
               var _temp_10:* = topInformation;
               topInformation.includeInLayout = _loc1_ = true;
               _temp_10.visible = false;
               topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.levellock",[this._implementationData.unlockLevel]);
            }
         }
         else if(_data is SpecificPlayfieldItemUiInfolayerContentVo)
         {
            if((_data as SpecificPlayfieldItemUiInfolayerContentVo).isHarvestReady)
            {
               _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
               topInformation.text = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.preHeader.harvest");
               var _temp_11:* = topInformation;
               topInformation.includeInLayout = _loc1_ = true;
               _temp_11.visible = false;
            }
         }
         if(_data.headerIconDynaVo != null)
         {
            headerIcon.briskDynaVo = _data.headerIconDynaVo;
            var _temp_12:* = headerIcon;
            headerIcon.includeInLayout = _loc1_ = true;
            _temp_12.visible = false;
         }
         else
         {
            var _temp_13:* = headerIcon;
            headerIcon.includeInLayout = _loc1_ = false;
            _temp_13.visible = false;
         }
      }
      
      private function checkSpecialStats() : void
      {
         this.specialGroup.visible = this.specialGroup.includeInLayout = this._implementationData.specialText != null;
         this.specialtextLabel.text = this._implementationData.specialText;
      }
      
      private function setDividerVisibility() : void
      {
         var _loc1_:BriskImageDynaLib = null;
         var _loc4_:UIComponent = null;
         var _loc2_:Vector.<UIComponent> = new Vector.<UIComponent>();
         var _loc3_:int = 0;
         while(_loc3_ < this.contentVGroup.numElements)
         {
            if(Boolean(this.contentVGroup.getElementAt(_loc3_).includeInLayout) || this.contentVGroup.getElementAt(_loc3_) is BriskImageDynaLib && BriskImageDynaLib(this.contentVGroup.getElementAt(_loc3_)).dynaBmpSourceName == "infolayer_divider_new")
            {
               if(this.contentVGroup.getElementAt(_loc3_) is BriskImageDynaLib)
               {
                  this.contentVGroup.getElementAt(_loc3_).includeInLayout = false;
                  this.contentVGroup.getElementAt(_loc3_).visible = false;
               }
               _loc2_.push(this.contentVGroup.getElementAt(_loc3_));
            }
            _loc3_++;
         }
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_ is BriskImageDynaLib)
            {
               _loc1_ = _loc4_ as BriskImageDynaLib;
               if(_loc1_.dynaBmpSourceName == "infolayer_divider_new")
               {
                  if(_loc2_.indexOf(_loc1_) != 0 && _loc2_.indexOf(_loc1_) != _loc2_.length - 1)
                  {
                     if(!(_loc2_[_loc2_.indexOf(_loc1_) - 1] is BriskImageDynaLib))
                     {
                        var _temp_5:* = _loc1_;
                        _loc1_.visible = true;
                        _temp_5.includeInLayout = true;
                     }
                  }
               }
            }
         }
      }
      
      private function _PlayfieldItemUiInfolayerContent_Array1_c() : Array
      {
         return [this._PlayfieldItemUiInfolayerContent_VGroup1_i()];
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.maxWidth = 220;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.minWidth = 1;
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_VGroup2_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib2_c(),this._PlayfieldItemUiInfolayerContent_VGroup3_i(),this._PlayfieldItemUiInfolayerContent_VGroup4_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib8_c(),this._PlayfieldItemUiInfolayerContent_InfoLayerResidentialComponent1_i(),this._PlayfieldItemUiInfolayerContent_InfoLayerProductionComponent1_i(),this._PlayfieldItemUiInfolayerContent_InfoLayerShopComponent1_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib9_c(),this._PlayfieldItemUiInfolayerContent_VGroup5_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib13_c(),this._PlayfieldItemUiInfolayerContent_InfoLayerEnergyMoodComponent1_i()];
         _loc1_.id = "contentVGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentVGroup = _loc1_;
         BindingManager.executeBindings(this,"contentVGroup",this.contentVGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup1_c()];
         _loc1_.id = "permissionGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionGroup = _loc1_;
         BindingManager.executeBindings(this,"permissionGroup",this.permissionGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel1_i(),this._PlayfieldItemUiInfolayerContent_LocaLabel2_i(),this._PlayfieldItemUiInfolayerContent_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "permissionLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionLabel = _loc1_;
         BindingManager.executeBindings(this,"permissionLabel",this.permissionLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "permissionAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionAmount = _loc1_;
         BindingManager.executeBindings(this,"permissionAmount",this.permissionAmount);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "permissionIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionIcon = _loc1_;
         BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel3_i()];
         _loc1_.id = "specialGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialGroup = _loc1_;
         BindingManager.executeBindings(this,"specialGroup",this.specialGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 80;
         _loc1_.percentHeight = 100;
         _loc1_.id = "specialtextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialtextLabel = _loc1_;
         BindingManager.executeBindings(this,"specialtextLabel",this.specialtextLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup2_i(),this._PlayfieldItemUiInfolayerContent_SlimProgressBarComponent1_i()];
         _loc1_.id = "masteryGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryGroup = _loc1_;
         BindingManager.executeBindings(this,"masteryGroup",this.masteryGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib3_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib4_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib5_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib6_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib7_i()];
         _loc1_.id = "masteryStarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStarGroup = _loc1_;
         BindingManager.executeBindings(this,"masteryStarGroup",this.masteryStarGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar0";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar0 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar1 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar2 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar3 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar4 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.width = 155;
         _loc1_.progress = 0;
         _loc1_.id = "masteryProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryProgressBar = _loc1_;
         BindingManager.executeBindings(this,"masteryProgressBar",this.masteryProgressBar);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerResidentialComponent1_i() : InfoLayerResidentialComponent
      {
         var _loc1_:InfoLayerResidentialComponent = new InfoLayerResidentialComponent();
         _loc1_.id = "residentialComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentialComponent = _loc1_;
         BindingManager.executeBindings(this,"residentialComponent",this.residentialComponent);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerProductionComponent1_i() : InfoLayerProductionComponent
      {
         var _loc1_:InfoLayerProductionComponent = new InfoLayerProductionComponent();
         _loc1_.id = "productionComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.productionComponent = _loc1_;
         BindingManager.executeBindings(this,"productionComponent",this.productionComponent);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerShopComponent1_i() : InfoLayerShopComponent
      {
         var _loc1_:InfoLayerShopComponent = new InfoLayerShopComponent();
         _loc1_.id = "shopComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopComponent = _loc1_;
         BindingManager.executeBindings(this,"shopComponent",this.shopComponent);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup3_c()];
         _loc1_.id = "securityGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGroup = _loc1_;
         BindingManager.executeBindings(this,"securityGroup",this.securityGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel4_i(),this._PlayfieldItemUiInfolayerContent_Group2_i(),this._PlayfieldItemUiInfolayerContent_Group3_i(),this._PlayfieldItemUiInfolayerContent_Group4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "_PlayfieldItemUiInfolayerContent_LocaLabel4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemUiInfolayerContent_LocaLabel4 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_LocaLabel4",this._PlayfieldItemUiInfolayerContent_LocaLabel4);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib10_i()];
         _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemUiInfolayerContent_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group2",this._PlayfieldItemUiInfolayerContent_Group2);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "badge_fire";
         _loc1_.id = "firebadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.firebadge = _loc1_;
         BindingManager.executeBindings(this,"firebadge",this.firebadge);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib11_i()];
         _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemUiInfolayerContent_Group3 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group3",this._PlayfieldItemUiInfolayerContent_Group3);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "badge_police";
         _loc1_.id = "policebadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.policebadge = _loc1_;
         BindingManager.executeBindings(this,"policebadge",this.policebadge);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib12_i()];
         _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemUiInfolayerContent_Group4 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group4",this._PlayfieldItemUiInfolayerContent_Group4);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "badge_hospital";
         _loc1_.id = "hospitalbadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.hospitalbadge = _loc1_;
         BindingManager.executeBindings(this,"hospitalbadge",this.hospitalbadge);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerEnergyMoodComponent1_i() : InfoLayerEnergyMoodComponent
      {
         var _loc1_:InfoLayerEnergyMoodComponent = new InfoLayerEnergyMoodComponent();
         _loc1_.id = "moodEnergyComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodEnergyComponent = _loc1_;
         BindingManager.executeBindings(this,"moodEnergyComponent",this.moodEnergyComponent);
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.departments.label");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_PlayfieldItemUiInfolayerContent_LocaLabel4.text");
         result[1] = new Binding(this,function():Boolean
         {
            return firebadge.includeInLayout;
         },null,"_PlayfieldItemUiInfolayerContent_Group2.includeInLayout");
         result[2] = new Binding(this,function():Boolean
         {
            return policebadge.includeInLayout;
         },null,"_PlayfieldItemUiInfolayerContent_Group3.includeInLayout");
         result[3] = new Binding(this,function():Boolean
         {
            return hospitalbadge.includeInLayout;
         },null,"_PlayfieldItemUiInfolayerContent_Group4.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get contentVGroup() : VGroup
      {
         return this._282001022contentVGroup;
      }
      
      public function set contentVGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._282001022contentVGroup;
         if(_loc2_ !== param1)
         {
            this._282001022contentVGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentVGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firebadge() : BriskImageDynaLib
      {
         return this._284027091firebadge;
      }
      
      public function set firebadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._284027091firebadge;
         if(_loc2_ !== param1)
         {
            this._284027091firebadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firebadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hospitalbadge() : BriskImageDynaLib
      {
         return this._1454149207hospitalbadge;
      }
      
      public function set hospitalbadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1454149207hospitalbadge;
         if(_loc2_ !== param1)
         {
            this._1454149207hospitalbadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hospitalbadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryGroup() : VGroup
      {
         return this._96419224masteryGroup;
      }
      
      public function set masteryGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._96419224masteryGroup;
         if(_loc2_ !== param1)
         {
            this._96419224masteryGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryProgressBar() : SlimProgressBarComponent
      {
         return this._350687281masteryProgressBar;
      }
      
      public function set masteryProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _loc2_:Object = this._350687281masteryProgressBar;
         if(_loc2_ !== param1)
         {
            this._350687281masteryProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291001masteryStar0;
         if(_loc2_ !== param1)
         {
            this._85291001masteryStar0 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc2_ !== param1)
         {
            this._85291000masteryStar1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290999masteryStar2;
         if(_loc2_ !== param1)
         {
            this._85290999masteryStar2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290998masteryStar3;
         if(_loc2_ !== param1)
         {
            this._85290998masteryStar3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290997masteryStar4;
         if(_loc2_ !== param1)
         {
            this._85290997masteryStar4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStarGroup() : HGroup
      {
         return this._1694421686masteryStarGroup;
      }
      
      public function set masteryStarGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1694421686masteryStarGroup;
         if(_loc2_ !== param1)
         {
            this._1694421686masteryStarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodEnergyComponent() : InfoLayerEnergyMoodComponent
      {
         return this._845656926moodEnergyComponent;
      }
      
      public function set moodEnergyComponent(param1:InfoLayerEnergyMoodComponent) : void
      {
         var _loc2_:Object = this._845656926moodEnergyComponent;
         if(_loc2_ !== param1)
         {
            this._845656926moodEnergyComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodEnergyComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionAmount() : LocaLabel
      {
         return this._407317255permissionAmount;
      }
      
      public function set permissionAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._407317255permissionAmount;
         if(_loc2_ !== param1)
         {
            this._407317255permissionAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionGroup() : VGroup
      {
         return this._1643738640permissionGroup;
      }
      
      public function set permissionGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1643738640permissionGroup;
         if(_loc2_ !== param1)
         {
            this._1643738640permissionGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionIcon() : BriskImageDynaLib
      {
         return this._1438451992permissionIcon;
      }
      
      public function set permissionIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1438451992permissionIcon;
         if(_loc2_ !== param1)
         {
            this._1438451992permissionIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionLabel() : LocaLabel
      {
         return this._1639640475permissionLabel;
      }
      
      public function set permissionLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1639640475permissionLabel;
         if(_loc2_ !== param1)
         {
            this._1639640475permissionLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get policebadge() : BriskImageDynaLib
      {
         return this._1595242821policebadge;
      }
      
      public function set policebadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1595242821policebadge;
         if(_loc2_ !== param1)
         {
            this._1595242821policebadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"policebadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productionComponent() : InfoLayerProductionComponent
      {
         return this._366670780productionComponent;
      }
      
      public function set productionComponent(param1:InfoLayerProductionComponent) : void
      {
         var _loc2_:Object = this._366670780productionComponent;
         if(_loc2_ !== param1)
         {
            this._366670780productionComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentialComponent() : InfoLayerResidentialComponent
      {
         return this._607607385residentialComponent;
      }
      
      public function set residentialComponent(param1:InfoLayerResidentialComponent) : void
      {
         var _loc2_:Object = this._607607385residentialComponent;
         if(_loc2_ !== param1)
         {
            this._607607385residentialComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentialComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGroup() : VGroup
      {
         return this._726395105securityGroup;
      }
      
      public function set securityGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._726395105securityGroup;
         if(_loc2_ !== param1)
         {
            this._726395105securityGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopComponent() : InfoLayerShopComponent
      {
         return this._665626969shopComponent;
      }
      
      public function set shopComponent(param1:InfoLayerShopComponent) : void
      {
         var _loc2_:Object = this._665626969shopComponent;
         if(_loc2_ !== param1)
         {
            this._665626969shopComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialGroup() : VGroup
      {
         return this._1286778554specialGroup;
      }
      
      public function set specialGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1286778554specialGroup;
         if(_loc2_ !== param1)
         {
            this._1286778554specialGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialtextLabel() : LocaLabel
      {
         return this._1615133998specialtextLabel;
      }
      
      public function set specialtextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1615133998specialtextLabel;
         if(_loc2_ !== param1)
         {
            this._1615133998specialtextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialtextLabel",_loc2_,param1));
            }
         }
      }
   }
}

