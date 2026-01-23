package net.bigpoint.cityrama.view.quest.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.NextLevelUpRewardItemListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class WelcomeScreen extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _97921but:MultistateButton;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _871500217introText:LocaLabel;
      
      private var _58259577layerTitle:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1440288096rewardItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _creationIsDirty:Boolean = false;
      
      private var _data:Vector.<QuestRewardInfoVo>;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function WelcomeScreen()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0038:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || Boolean(this))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§pop().§§slot[1] = this._WelcomeScreen_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00c9:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   addr00d0:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         addr00ea:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            addr00f5:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0111:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_components_WelcomeScreenWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr013b:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0161:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return WelcomeScreen[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01ac:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01d3:
                                                                                       this.showBackButton = false;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01de:
                                                                                          this.styleName = "introduction";
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr01f1:
                                                                                             this.mxmlContentFactory = new DeferredInstanceFromFunction(this._WelcomeScreen_Array1_c);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0206:
                                                                                                this.addEventListener("creationComplete",this.___WelcomeScreen_PaperPopupWindow1_creationComplete);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr021a:
                                                                                                   i = 0;
                                                                                                   addr0218:
                                                                                                }
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc4_ || _loc2_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  var _temp_19:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_19;
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr027e:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0218);
                                                                                       }
                                                                                       §§goto(addr01f1);
                                                                                    }
                                                                                    §§goto(addr027e);
                                                                                 }
                                                                                 §§goto(addr0218);
                                                                              }
                                                                              §§goto(addr01d3);
                                                                           }
                                                                           §§goto(addr0218);
                                                                        }
                                                                        §§goto(addr021a);
                                                                     }
                                                                     §§goto(addr01ac);
                                                                  }
                                                                  §§goto(addr021a);
                                                               }
                                                               §§goto(addr0218);
                                                            }
                                                            §§goto(addr0161);
                                                         }
                                                         §§goto(addr01ac);
                                                      }
                                                      §§goto(addr0111);
                                                   }
                                                   §§goto(addr0161);
                                                }
                                                §§goto(addr0111);
                                             }
                                             §§goto(addr01de);
                                          }
                                          §§goto(addr021a);
                                       }
                                       §§goto(addr01d3);
                                    }
                                    §§goto(addr027e);
                                 }
                                 §§goto(addr0206);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr0206);
                        }
                        §§goto(addr01f1);
                     }
                     §§goto(addr00f5);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr013b);
            }
            §§goto(addr0038);
         }
         §§goto(addr00ea);
      }
      
      private static function buildRewardData(param1:Vector.<QuestRewardInfoVo>) : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1)
         {
            _loc3_ = QuestGUIProxy.getRewardVoForQuestReward(_loc4_.questRewardVo,RewardItemComponentVo.SIZE_SMALL);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               if(_loc3_)
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc2_.addItem(_loc3_);
                  }
               }
            }
         }
         if(_loc8_ || WelcomeScreen)
         {
            RewardLayerProxy.sortRewardList(_loc2_);
         }
         return _loc2_;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || WelcomeScreen)
         {
            WelcomeScreen._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._creationIsDirty = true;
            if(_loc2_)
            {
               addr0021:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0021);
      }
      
      public function set data(param1:Vector.<QuestRewardInfoVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._dataIsDirty = true;
                  if(!_loc2_)
                  {
                     addr004d:
                     this._data = param1;
                  }
                  §§goto(addr0052);
               }
               §§goto(addr004d);
            }
            addr0052:
            return;
         }
         §§goto(addr004d);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               §§push(this._creationIsDirty);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0049:
                        this._creationIsDirty = false;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr005b);
                        }
                        §§goto(addr0115);
                     }
                     addr005b:
                     this.title = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.title");
                     if(_loc1_)
                     {
                        this.flavourText.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.flavourText");
                        addr0070:
                        if(!_loc2_)
                        {
                           this.but.label = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.button");
                           if(!_loc2_)
                           {
                              this.layerTitle.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.starterGifts");
                              if(_loc1_)
                              {
                                 this.introText.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.sideAdvisorInfo");
                                 if(_loc1_ || _loc2_)
                                 {
                                    this.characterName.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.characterName");
                                    if(!_loc2_)
                                    {
                                       addr0100:
                                       addr0104:
                                       if(this._dataIsDirty)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr0115:
                                             this._dataIsDirty = false;
                                             if(!_loc2_)
                                             {
                                                addr011f:
                                                this.rewardItemList.dataProvider = buildRewardData(this._data);
                                             }
                                          }
                                       }
                                       §§goto(addr0133);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0133);
                              }
                           }
                           §§goto(addr0100);
                        }
                        §§goto(addr011f);
                     }
                     addr0133:
                     return;
                  }
                  §§goto(addr0100);
               }
               §§goto(addr0104);
            }
            §§goto(addr0049);
         }
         §§goto(addr0070);
      }
      
      private function _WelcomeScreen_Array1_c() : Array
      {
         return [this._WelcomeScreen_Group1_c(),this._WelcomeScreen_Group4_c(),this._WelcomeScreen_Group5_c(),this._WelcomeScreen_Group7_c(),this._WelcomeScreen_MultistateButton1_i()];
      }
      
      private function _WelcomeScreen_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.right = 5;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 70;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib1_c(),this._WelcomeScreen_VGroup1_c()];
                  if(_loc3_)
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr007e);
               }
               addr0082:
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr007e);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0076:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      private function _WelcomeScreen_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 476;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 30;
               if(_loc3_)
               {
                  _loc1_.left = 30;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0064:
                     _loc1_.gap = 1;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._WelcomeScreen_Group2_c(),this._WelcomeScreen_Group3_c()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0064);
            }
            §§goto(addr00a4);
         }
         addr0098:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr00a4:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._WelcomeScreen_Rect1_c(),this._WelcomeScreen_LocaLabel1_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr007c);
            }
         }
         addr0080:
         return _loc1_;
      }
      
      private function _WelcomeScreen_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.left = 5;
            if(_loc2_ || _loc3_)
            {
               _loc1_.right = 5;
               if(_loc2_)
               {
                  _loc1_.bottomLeftRadiusX = 10;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00d3);
            }
            §§goto(addr00e5);
         }
         addr0050:
         _loc1_.bottomLeftRadiusY = 30;
         if(!_loc3_)
         {
            _loc1_.bottomRightRadiusX = 10;
            if(_loc2_ || _loc3_)
            {
               addr006e:
               _loc1_.bottomRightRadiusY = 30;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.topLeftRadiusX = 10;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.topLeftRadiusY = 30;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr00b5);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0124);
               }
               §§goto(addr00c0);
            }
         }
         addr00b5:
         _loc1_.topRightRadiusX = 10;
         if(!_loc3_)
         {
            addr00c0:
            _loc1_.topRightRadiusY = 30;
            if(_loc2_ || Boolean(this))
            {
               addr00d3:
               _loc1_.height = 25;
               if(!(_loc3_ && _loc2_))
               {
                  addr00e5:
                  _loc1_.maxHeight = 25;
                  if(!_loc3_)
                  {
                     _loc1_.fill = this._WelcomeScreen_RadialGradient1_c();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0113);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr0113);
               }
               §§goto(addr0124);
            }
            addr0113:
            _loc1_.filters = [this._WelcomeScreen_DropShadowFilter1_c()];
            if(!_loc3_)
            {
               addr0124:
               _loc1_.initialized(this,null);
            }
            §§goto(addr012b);
         }
         addr012b:
         return _loc1_;
      }
      
      private function _WelcomeScreen_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.entries = [this._WelcomeScreen_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.color = 165328;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.ratio = 0.5;
               if(_loc2_)
               {
                  addr0056:
                  _loc1_.alpha = 0.45;
               }
               return _loc1_;
            }
         }
         §§goto(addr0056);
      }
      
      private function _WelcomeScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc2_)
         {
            _loc1_.distance = 0;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr003f);
            }
            §§goto(addr0084);
         }
         addr003f:
         _loc1_.blurX = 3;
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.blurY = 3;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.color = 165328;
               if(_loc2_ || _loc2_)
               {
                  addr0084:
                  _loc1_.alpha = 0.45;
               }
            }
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0031:
               _loc1_.top = 8;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.styleName = "infoLayerTitle";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "layerTitle";
                        if(!_loc3_)
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr008a);
                     }
                  }
               }
            }
            addr007e:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr008a:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr00a8);
                  }
                  §§goto(addr00ba);
               }
            }
            addr00a8:
            this.layerTitle = _loc1_;
            if(_loc2_ || _loc2_)
            {
               addr00ba:
               BindingManager.executeBindings(this,"layerTitle",this.layerTitle);
            }
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _WelcomeScreen_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.left = 10;
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 450;
               addr0039:
               if(!_loc2_)
               {
                  §§goto(addr004e);
               }
               §§goto(addr0061);
            }
            addr004e:
            _loc1_.height = 145;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._WelcomeScreen_List1_i(),this._WelcomeScreen_UiInfolayerAlignmentLine1_i()];
               addr0061:
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00a0:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00a0);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _WelcomeScreen_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._WelcomeScreen_ClassFactory1_c();
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.setStyle("skinClass",NextLevelUpRewardItemListSkin);
                     if(!_loc3_)
                     {
                        _loc1_.id = "rewardItemList";
                        if(_loc2_)
                        {
                           addr006f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr007b:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr0097:
                                    this.rewardItemList = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00a9);
                     }
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr007b);
         }
         §§goto(addr006f);
      }
      
      private function _WelcomeScreen_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 70;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.lineId = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0078:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00b4:
                                    this.uiInfolayerAlignmentLine = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00be:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                    }
                                 }
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00b4);
                        }
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr008b);
            }
            §§goto(addr00be);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 100;
            if(_loc2_)
            {
               _loc1_.left = 20;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._WelcomeScreen_StickyNoteComponent1_c(),this._WelcomeScreen_BriskImageDynaLib2_c(),this._WelcomeScreen_BriskImageDynaLib3_i(),this._WelcomeScreen_BriskImageDynaLib4_c(),this._WelcomeScreen_BriskImageDynaLib5_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr008e:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr008e);
      }
      
      private function _WelcomeScreen_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 180;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.top = 210;
                  if(!_loc3_)
                  {
                     addr005a:
                     _loc1_.height = 65;
                     if(_loc2_ || _loc3_)
                     {
                        addr0078:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._WelcomeScreen_Array9_c);
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0095);
                        }
                        §§goto(addr00a1);
                     }
                     addr0095:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00a1:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0078);
            }
            §§goto(addr005a);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _WelcomeScreen_Array9_c() : Array
      {
         return [this._WelcomeScreen_LocaLabel2_i()];
      }
      
      private function _WelcomeScreen_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.verticalCenter = -2;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_)
                  {
                     _loc1_.styleName = "featureBubbleText";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "characterName";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a9:
                                    this.characterName = _loc1_;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00bb:
                                       BindingManager.executeBindings(this,"characterName",this.characterName);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr00a9);
            }
         }
         §§goto(addr0079);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               addr002b:
               _loc1_.dynaBmpSourceName = "quest_polaroidframe";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     addr005b:
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr008d);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr005b);
            }
            §§goto(addr008d);
         }
         §§goto(addr002b);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "welcomeScreen_character";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0046:
                  _loc1_.top = 10;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalCenter = -1;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.id = "polaroidImage";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr0083);
                              }
                           }
                           §§goto(addr00a1);
                        }
                     }
                     addr0083:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00a1:
                        this.polaroidImage = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                        }
                     }
                     §§goto(addr00c0);
                  }
               }
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = -5;
                  if(!_loc2_)
                  {
                     _loc1_.width = 130;
                     §§goto(addr0063);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0079);
            }
            addr0063:
            if(!_loc2_)
            {
               addr0079:
               _loc1_.horizontalCenter = -1;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr008b);
               }
               §§goto(addr0097);
            }
            addr008b:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0097:
                  _loc1_.document = this;
               }
            }
            §§goto(addr009b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 210;
                  if(_loc2_)
                  {
                     _loc1_.width = 130;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalCenter = -1;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0097);
                        }
                     }
                     §§goto(addr0093);
                  }
                  addr0097:
                  return _loc1_;
               }
               §§goto(addr0087);
            }
            §§goto(addr0093);
         }
         §§goto(addr0087);
      }
      
      private function _WelcomeScreen_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 250;
            if(_loc2_)
            {
               _loc1_.left = 205;
               if(!_loc3_)
               {
                  _loc1_.height = 140;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib6_c(),this._WelcomeScreen_BriskImageDynaLib7_c(),this._WelcomeScreen_Group6_c(),this._WelcomeScreen_LocaLabel3_i()];
                     addr004b:
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0081);
                     }
                     §§goto(addr0095);
                  }
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0095:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr004b);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "bubble_small";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     addr006e:
                     _loc1_.left = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0080);
            }
            §§goto(addr006e);
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr008c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr0048);
            }
            §§goto(addr005b);
         }
         addr0048:
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr005b:
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 20;
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0097:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0097);
            }
         }
         addr009b:
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 40;
            if(_loc3_)
            {
               _loc1_.right = 10;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib8_c(),this._WelcomeScreen_BriskImageDynaLib9_c()];
                  if(!_loc2_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr005f);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "questmarker_base";
               if(_loc2_)
               {
                  addr005b:
                  _loc1_.verticalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0065:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0065);
            }
            §§goto(addr005b);
         }
         §§goto(addr0065);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest51005";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0081);
            }
            addr0091:
            return _loc1_;
         }
         §§goto(addr008d);
      }
      
      private function _WelcomeScreen_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = 40;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = 60;
               if(!_loc3_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr00aa);
            }
            addr0043:
            _loc1_.styleName = "welcomeIntroText";
            if(!_loc3_)
            {
               _loc1_.width = 180;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "introText";
                  if(_loc2_)
                  {
                     addr0079:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0099:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b4);
                        }
                     }
                     addr00aa:
                     this.introText = _loc1_;
                     if(!_loc3_)
                     {
                        addr00b4:
                        BindingManager.executeBindings(this,"introText",this.introText);
                     }
                     §§goto(addr00c1);
                  }
               }
               §§goto(addr0099);
            }
            addr00c1:
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _WelcomeScreen_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.top = 18;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib10_c(),this._WelcomeScreen_HGroup1_c()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0074);
      }
      
      private function _WelcomeScreen_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bubble-top";
               if(!(_loc2_ && _loc3_))
               {
                  addr0062:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0062);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _WelcomeScreen_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 700;
            if(!_loc2_)
            {
               _loc1_.height = 58;
               if(_loc3_)
               {
                  _loc1_.top = 10;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              addr0094:
                              _loc1_.mxmlContent = [this._WelcomeScreen_LocaLabel4_i()];
                              if(_loc3_ || _loc2_)
                              {
                                 addr00ac:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00b8:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr0094);
                  }
                  addr00bc:
                  return _loc1_;
               }
               §§goto(addr0094);
            }
            §§goto(addr00ac);
         }
         §§goto(addr00b8);
      }
      
      private function _WelcomeScreen_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.maxDisplayedLines = 4;
               if(_loc3_)
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
               }
               §§goto(addr009f);
            }
            addr005a:
            _loc1_.id = "flavourText";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr008e);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr009f);
            }
            addr008e:
            _loc1_.document = this;
            if(_loc3_ || Boolean(this))
            {
               addr009f:
               this.flavourText = _loc1_;
               if(!_loc2_)
               {
                  addr00a9:
                  BindingManager.executeBindings(this,"flavourText",this.flavourText);
               }
            }
            return _loc1_;
         }
         §§goto(addr00a9);
      }
      
      private function _WelcomeScreen_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.bottom = 15;
            if(!_loc2_)
            {
               _loc1_.right = 5;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0049:
                  _loc1_.width = 184;
                  if(_loc3_)
                  {
                     _loc1_.label = "Button";
                     if(_loc3_)
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr009e);
                  }
                  addr0060:
                  _loc1_.id = "but";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0094:
                              this.but = _loc1_;
                              if(!_loc2_)
                              {
                                 addr009e:
                                 BindingManager.executeBindings(this,"but",this.but);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr009e);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      public function ___WelcomeScreen_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _WelcomeScreen_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop()[0] = new Binding(this,function():uint
                     {
                        return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                     },null,"uiInfolayerAlignmentLine.alignment");
                     addr0078:
                     addr0076:
                     return result;
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr0076);
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._97921but;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0042:
                  this._97921but = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0062);
            }
            addr0089:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get characterName() : LocaLabel
      {
         return this._1790120620characterName;
      }
      
      public function set characterName(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1790120620characterName;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1790120620characterName = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterName",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr004e:
                  this._800887486flavourText = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get introText() : LocaLabel
      {
         return this._871500217introText;
      }
      
      public function set introText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._871500217introText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._871500217introText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get layerTitle() : LocaLabel
      {
         return this._58259577layerTitle;
      }
      
      public function set layerTitle(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._58259577layerTitle;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._58259577layerTitle = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerTitle",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006a);
               }
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._2112922897polaroidImage = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItemList() : List
      {
         return this._1440288096rewardItemList;
      }
      
      public function set rewardItemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1440288096rewardItemList;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1440288096rewardItemList = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0062);
            }
            addr0081:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003f:
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
      }
   }
}

