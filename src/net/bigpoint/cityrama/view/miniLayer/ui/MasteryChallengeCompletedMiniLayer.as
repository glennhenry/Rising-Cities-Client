package net.bigpoint.cityrama.view.miniLayer.ui
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.miniLayer.components.MasteryRewardMinilayerItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryChallengeCompletedMiniLayer extends MiniLayerWindow
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
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1690977389rewardList:List;
      
      private var _1768858175rewardTrophy:BriskImageDynaLib;
      
      private var _1804648195rewardsHeadTextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _starIcons:Vector.<BriskImageDynaLib>;
      
      private var _data:MasteryChallengeCompletedMiniLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function MasteryChallengeCompletedMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryChallengeCompletedMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___MasteryChallengeCompletedMiniLayer_MiniLayerWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.title.capital");
         this.rewardsHeadTextLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.stats.header");
         TweenMax.to(this,0,{"glowFilter":{
            "color":14140033,
            "alpha":1,
            "blurX":32,
            "blurY":32,
            "strength":1.8
         }});
      }
      
      public function set data(param1:Object) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as MasteryChallengeCompletedMiniLayerVo;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:BriskImageDynaLib = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:MasteryBonusVo = null;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            _loc1_ = false;
            _loc2_ = uint(this._data.completedMasteryChallengeIndex);
            this.headerTextLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.header.capital",[_loc2_]);
            if(_loc2_ == 5)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.layerText.finished.flavor");
            }
            else
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.layerText.normal.flavor");
            }
            _loc3_ = 0;
            for each(_loc4_ in this.starIcons)
            {
               if(_loc3_ < _loc2_)
               {
                  TweenMax.to(_loc4_,_loc3_ + 0.3,{
                     "autoAlpha":1,
                     "delay":1
                  });
               }
               _loc3_++;
            }
            TweenMax.to(this.rewardTrophy,1,{
               "scaleX":1,
               "scaleY":1,
               "alpha":1,
               "ease":Bounce.easeOut,
               "delay":1
            });
            TweenMax.to(this.rewardTrophy,0,{
               "scaleX":5,
               "scaleY":5,
               "alpha":0
            });
            _loc5_ = new ArrayCollection();
            for each(_loc6_ in this._data.rewards)
            {
               _loc5_.addItem(_loc6_);
            }
            this.rewardList.dataProvider = _loc5_;
         }
      }
      
      private function get starIcons() : Vector.<BriskImageDynaLib>
      {
         if(this._starIcons == null)
         {
            this._starIcons = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
         }
         return this._starIcons;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Array1_c() : Array
      {
         return [this._MasteryChallengeCompletedMiniLayer_VGroup1_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib13_i()];
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group1_c(),this._MasteryChallengeCompletedMiniLayer_HGroup3_c(),this._MasteryChallengeCompletedMiniLayer_LocaLabel2_i(),this._MasteryChallengeCompletedMiniLayer_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup1_c(),this._MasteryChallengeCompletedMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 35;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BlueBarComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.width = 430;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 35;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStyle";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 356;
         _loc1_.text = "DEV: HEADLINE";
         _loc1_.id = "headerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup4_c(),this._MasteryChallengeCompletedMiniLayer_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib1_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib2_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib3_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib4_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "mastery_star_grey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "mastery_star_grey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "mastery_star_grey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "mastery_star_grey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "mastery_star_grey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib6_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib7_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib8_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib9_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.alpha = 0;
         _loc1_.dynaBmpSourceName = "mastery_star_blue";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.id = "masteryStar0";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar0 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.alpha = 0;
         _loc1_.dynaBmpSourceName = "mastery_star_blue";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.id = "masteryStar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar1 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.alpha = 0;
         _loc1_.dynaBmpSourceName = "mastery_star_blue";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.id = "masteryStar2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar2 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.alpha = 0;
         _loc1_.dynaBmpSourceName = "mastery_star_blue";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.id = "masteryStar3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar3 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.alpha = 0;
         _loc1_.dynaBmpSourceName = "mastery_star_blue";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.id = "masteryStar4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar4 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 420;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group4_c(),this._MasteryChallengeCompletedMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -6;
         _loc1_.left = -3;
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "postit_blue_slim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.top = 17;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group5_c(),this._MasteryChallengeCompletedMiniLayer_HGroup8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup6_c(),this._MasteryChallengeCompletedMiniLayer_HGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 20;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BlueBarComponent2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BlueBarComponent2_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.width = 430;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 20;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "InfoBarStyle";
         _loc1_.id = "rewardsHeadTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardsHeadTextLabel = _loc1_;
         BindingManager.executeBindings(this,"rewardsHeadTextLabel",this.rewardsHeadTextLabel);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group6_c(),this._MasteryChallengeCompletedMiniLayer_VGroup3_c(),this._MasteryChallengeCompletedMiniLayer_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = -5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._MasteryChallengeCompletedMiniLayer_ClassFactory1_c();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
         _loc1_.id = "rewardList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardList = _loc1_;
         BindingManager.executeBindings(this,"rewardList",this.rewardList);
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MasteryRewardMinilayerItemRenderer;
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 9;
         _loc1_.top = -66;
         _loc1_.id = "rewardTrophy";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardTrophy = _loc1_;
         BindingManager.executeBindings(this,"rewardTrophy",this.rewardTrophy);
         return _loc1_;
      }
      
      public function ___MasteryChallengeCompletedMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc2_ !== param1)
         {
            this._1105049158headerTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
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
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc2_ !== param1)
         {
            this._1690977389rewardList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardTrophy() : BriskImageDynaLib
      {
         return this._1768858175rewardTrophy;
      }
      
      public function set rewardTrophy(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1768858175rewardTrophy;
         if(_loc2_ !== param1)
         {
            this._1768858175rewardTrophy = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardTrophy",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardsHeadTextLabel() : LocaLabel
      {
         return this._1804648195rewardsHeadTextLabel;
      }
      
      public function set rewardsHeadTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1804648195rewardsHeadTextLabel;
         if(_loc2_ !== param1)
         {
            this._1804648195rewardsHeadTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardsHeadTextLabel",_loc2_,param1));
            }
         }
      }
   }
}

