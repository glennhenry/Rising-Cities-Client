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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.quest.ui.QuestDetailViewMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class QuestDetailViewComponent extends Group implements IBindingClient
   {
      
      public static const EVENT_COLLECT_REWARD:String = "EVENT_COLLECT_REWARD";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         EVENT_COLLECT_REWARD = "EVENT_COLLECT_REWARD";
      }
      
      private var _1443225712characterGfx:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1256457025rewardButton:MultistateButton;
      
      private var _1412873884rewardHeader:LocaLabel;
      
      private var _1690977389rewardList:RewardSlideComponent;
      
      private var _110132044task1:QuestDetailTaskComponent;
      
      private var _110132045task2:QuestDetailTaskComponent;
      
      private var _110132046task3:QuestDetailTaskComponent;
      
      private var _110132047task4:QuestDetailTaskComponent;
      
      private var _640748658taskHeader:QuestHeaderComponent;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private var _dirty:Boolean;
      
      private var _taskComponentList:Vector.<QuestDetailTaskComponent>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function QuestDetailViewComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(null);
            if(!(_loc4_ && _loc1_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc1_))
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     addr0047:
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || Boolean(this))
                              {
                                 addr007b:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    addr0087:
                                    super();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._QuestDetailViewComponent_bindingsSetup();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr00e4:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr00f3:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr0113:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_components_QuestDetailViewComponentWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr012e:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0135:
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0157:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return QuestDetailViewComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr017c:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr01aa:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01db:
                                                                                          this.percentHeight = 100;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             this.maxWidth = 755;
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                this.horizontalCenter = 0;
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   addr0203:
                                                                                                   this.mxmlContent = [this._QuestDetailViewComponent_VGroup1_c(),this._QuestDetailViewComponent_BriskImageDynaLib3_i()];
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      addr0222:
                                                                                                      this.addEventListener("creationComplete",this.___QuestDetailViewComponent_Group1_creationComplete);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr0236:
                                                                                                         i = 0;
                                                                                                         addr0234:
                                                                                                      }
                                                                                                   }
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
                                                                                                            if(!(_loc3_ || _loc2_))
                                                                                                            {
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc4_ && Boolean(this))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  var _temp_21:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_21;
                                                                                                                  if(_loc3_)
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
                                                                                                addr02a3:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0234);
                                                                                       }
                                                                                       §§goto(addr0222);
                                                                                    }
                                                                                    §§goto(addr01db);
                                                                                 }
                                                                                 §§goto(addr0203);
                                                                              }
                                                                              §§goto(addr0234);
                                                                           }
                                                                           §§goto(addr02a3);
                                                                        }
                                                                        §§goto(addr0236);
                                                                     }
                                                                     §§goto(addr0222);
                                                                  }
                                                                  §§goto(addr0236);
                                                               }
                                                               §§goto(addr01aa);
                                                            }
                                                            §§goto(addr0157);
                                                         }
                                                         §§goto(addr012e);
                                                      }
                                                      §§goto(addr0236);
                                                   }
                                                   §§goto(addr0157);
                                                }
                                                §§goto(addr00f3);
                                             }
                                             §§goto(addr0203);
                                          }
                                          §§goto(addr0135);
                                       }
                                       §§goto(addr017c);
                                    }
                                    §§goto(addr0222);
                                 }
                              }
                              §§goto(addr00e4);
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0236);
               }
               §§goto(addr00e4);
            }
            §§goto(addr0048);
         }
         §§goto(addr0047);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            QuestDetailViewComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr003b);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr004e);
            }
            addr003b:
            return;
         }
         addr004e:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.rewardHeader.text = LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.rewardsHeader.capital");
            if(!_loc1_)
            {
               §§push(this.rewardButton);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.collectReward"));
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().label = §§pop();
                     if(_loc2_ || _loc1_)
                     {
                        addr0093:
                        this.rewardButton.toolTip = LocaUtils.getString("rcl.tooltips","rcl.tooltips.rewardLayer.level.button");
                        addr0087:
                        addr0083:
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0087);
            }
            §§goto(addr0083);
         }
         addr0095:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:QuestDetailTaskComponent = null;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            super.commitProperties();
            if(_loc7_)
            {
               §§push(Boolean(this._data));
               if(_loc7_ || Boolean(_loc1_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§pop();
                        if(!(_loc6_ && Boolean(_loc1_)))
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr01f2);
                     }
                     §§goto(addr007e);
                  }
               }
               addr007f:
               §§push(this._dirty);
               if(!(_loc6_ && _loc3_))
               {
                  addr007e:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     this._dirty = false;
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!this._taskComponentList)
                        {
                           if(_loc7_ || Boolean(this))
                           {
                              this._taskComponentList = new <QuestDetailTaskComponent>[this.task1,this.task2,this.task3,this.task4];
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr0104:
                                 §§push(this.rewardList);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(this._data);
                                    if(!(_loc6_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop().isQuestComplete);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().showPaging = §§pop();
                                       if(_loc7_)
                                       {
                                          var _temp_20:* = this.rewardButton;
                                          var _loc3_:*;
                                          this.rewardButton.visible = _loc3_ = this._data.isQuestComplete;
                                          _temp_20.includeInLayout = _loc3_;
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§goto(addr0176);
                                          }
                                          §§goto(addr0191);
                                       }
                                       §§goto(addr0204);
                                    }
                                    §§goto(addr01b1);
                                 }
                                 §§goto(addr01ad);
                              }
                              addr0176:
                              this.flavourText.text = this._data.bubbleText;
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 addr0191:
                                 this.taskHeader.data = this._data;
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    addr01b1:
                                    this.rewardList.data = this._data.rewards;
                                    addr01ad:
                                    if(_loc7_ || Boolean(this))
                                    {
                                       addr01c4:
                                       §§push(this.characterGfx);
                                       §§push("quest_giver_");
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop() + this._data.questGiverGfxId);
                                       }
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr01f2);
                                       }
                                       §§goto(addr0204);
                                    }
                                    §§goto(addr01f2);
                                 }
                                 §§goto(addr01c4);
                              }
                              addr01f2:
                              §§push(0);
                              if(!(_loc6_ && Boolean(_loc1_)))
                              {
                                 _loc1_ = §§pop();
                                 addr0204:
                                 §§push(0);
                              }
                              for each(_loc2_ in this._taskComponentList)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(_loc2_);
                                    §§push(_loc2_);
                                    §§push(this._data.tasks[_loc1_] == null);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().includeInLayout = §§pop().visible = §§pop();
                                    if(_loc7_)
                                    {
                                       if(this._data.tasks[_loc1_] != null)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          _loc2_.data = this._data.tasks[_loc1_];
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                 }
                                 §§push(_loc1_);
                                 if(_loc7_ || Boolean(_loc1_))
                                 {
                                    §§push(uint(§§pop() + 1));
                                 }
                                 _loc1_ = §§pop();
                              }
                              §§goto(addr02a4);
                           }
                        }
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr01c4);
               }
               addr02a4:
               return;
            }
            §§goto(addr01f2);
         }
         §§goto(addr0204);
      }
      
      private function rewardButtonClickHandler() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.rewardButton.enabled = false;
            if(_loc1_)
            {
               addr0022:
               dispatchEvent(new Event(EVENT_COLLECT_REWARD,true,true));
            }
            return;
         }
         §§goto(addr0022);
      }
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._data = param1;
            if(_loc3_)
            {
               this._dirty = true;
               if(!(_loc2_ && _loc2_))
               {
                  addr0047:
                  invalidateProperties();
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      private function _QuestDetailViewComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 3;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = -26;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.left = -3;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0074:
                        _loc1_.right = -6;
                        if(_loc3_)
                        {
                           §§goto(addr007e);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr007e);
            }
            §§goto(addr0094);
         }
         addr007e:
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_VGroup2_c(),this._QuestDetailViewComponent_Group4_c()];
         if(_loc3_)
         {
            addr0094:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0031:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.gap = 4;
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._QuestDetailViewComponent_QuestHeaderComponent1_i(),this._QuestDetailViewComponent_Group2_c(),this._QuestDetailViewComponent_HGroup1_c(),this._QuestDetailViewComponent_Group3_c()];
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0090);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _QuestDetailViewComponent_QuestHeaderComponent1_i() : QuestHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QuestHeaderComponent = new QuestHeaderComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!_loc3_)
            {
               _loc1_.height = 36;
               if(!_loc3_)
               {
                  _loc1_.id = "taskHeader";
                  addr003e:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0089);
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr009b);
               }
               addr0089:
               this.taskHeader = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr009b:
                  BindingManager.executeBindings(this,"taskHeader",this.taskHeader);
               }
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr009b);
      }
      
      private function _QuestDetailViewComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 2;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _QuestDetailViewComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!_loc2_)
            {
               _loc1_.height = 40;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0090);
            }
            §§goto(addr007c);
         }
         addr006c:
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_LocaLabel1_i()];
         if(_loc3_)
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "flavorText";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.minWidth = 1;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.percentWidth = 70;
                     if(_loc3_ || _loc3_)
                     {
                        addr006f:
                        _loc1_.id = "flavourText";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a2:
                                    this.flavourText = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00ac:
                                       BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                    }
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00a2);
                        }
                     }
                  }
                  §§goto(addr00ac);
               }
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _QuestDetailViewComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0053);
            }
            §§goto(addr0067);
         }
         addr0053:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc2_)
            {
               addr0067:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestDetailViewComponent_DebossedBackgroundComponent1_c(),this._QuestDetailViewComponent_HGroup2_c()];
                  if(_loc3_)
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0077);
            }
            §§goto(addr006b);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr006a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0076:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0076);
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _QuestDetailViewComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.paddingTop = 3;
                  if(!_loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr00c7);
               }
            }
            addr0062:
            _loc1_.paddingRight = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.paddingLeft = 3;
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._QuestDetailViewComponent_VGroup3_c(),this._QuestDetailViewComponent_Group5_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr00b3);
                     }
                     §§goto(addr00c7);
                  }
               }
               addr00b3:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00c7:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00cb);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 5;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.height = 268;
                  if(!_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.maxHeight = 268;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0077:
                           _loc1_.minHeight = 1;
                           if(!_loc3_)
                           {
                              _loc1_.bottom = 0;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0095:
                                 _loc1_.top = 0;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b2:
                                    _loc1_.mxmlContent = [this._QuestDetailViewComponent_QuestDetailTaskComponent1_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent2_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent3_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent4_i()];
                                    if(_loc2_)
                                    {
                                       addr00d4:
                                       if(!_loc1_.document)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr00e0:
                                             _loc1_.document = this;
                                          }
                                       }
                                       §§goto(addr00e4);
                                    }
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00e4);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr00d4);
               }
               §§goto(addr0077);
            }
            addr00e4:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent1_i() : QuestDetailTaskComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.maxHeight = 268;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "task1";
                     if(_loc3_ || _loc3_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00aa:
                                 this.task1 = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00bc:
                                    BindingManager.executeBindings(this,"task1",this.task1);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00bc);
            }
            §§goto(addr00aa);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent2_i() : QuestDetailTaskComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxHeight = 268;
                  if(!_loc2_)
                  {
                     addr004f:
                     _loc1_.id = "task2";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007c:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0085:
                                 this.task2 = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr008f:
                                    BindingManager.executeBindings(this,"task2",this.task2);
                                 }
                                 §§goto(addr009c);
                              }
                              §§goto(addr008f);
                           }
                           addr009c:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr007c);
            }
            §§goto(addr0070);
         }
         §§goto(addr004f);
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent3_i() : QuestDetailTaskComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.maxHeight = 268;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "task3";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0092:
                                 this.task3 = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"task3",this.task3);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00a4);
            }
            §§goto(addr003f);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent4_i() : QuestDetailTaskComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.maxHeight = 268;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "task4";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0099:
                                 this.task4 = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"task4",this.task4);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0099);
                     }
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr0088);
         }
         §§goto(addr0099);
      }
      
      private function _QuestDetailViewComponent_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._QuestDetailViewComponent_BriskImageDynaLib1_c(),this._QuestDetailViewComponent_VGroup4_c()];
            if(_loc2_)
            {
               addr0059:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003e:
               _loc1_.dynaBmpSourceName = "blue_reward_bg";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0056);
         }
         §§goto(addr003e);
      }
      
      private function _QuestDetailViewComponent_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.paddingTop = 15;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = "middle";
                  if(_loc2_)
                  {
                     addr0066:
                     _loc1_.mxmlContent = [this._QuestDetailViewComponent_Group6_c(),this._QuestDetailViewComponent_VGroup5_c()];
                     if(!_loc3_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr007c);
         }
         §§goto(addr0066);
      }
      
      private function _QuestDetailViewComponent_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._QuestDetailViewComponent_BlueBarComponent1_c(),this._QuestDetailViewComponent_BriskImageDynaLib2_c(),this._QuestDetailViewComponent_HGroup3_c()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0075:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _QuestDetailViewComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.height = 38;
               addr002f:
               if(_loc3_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0081);
         }
         §§goto(addr002f);
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = -10;
                  addr0053:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = 5;
                     if(!_loc3_)
                     {
                        §§goto(addr007a);
                     }
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0053);
         }
         addr007a:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0086:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr003b:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0050:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.verticalCenter = 0;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           _loc1_.height = 38;
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.mxmlContent = [this._QuestDetailViewComponent_LocaLabel2_i()];
                              if(_loc2_)
                              {
                                 addr00a2:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00ae:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr00a2);
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr003b);
         }
         §§goto(addr0050);
      }
      
      private function _QuestDetailViewComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "fieldInfoSubHeader2";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 70;
                  if(!_loc2_)
                  {
                     addr005c:
                     _loc1_.id = "rewardHeader";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr009a);
                           }
                        }
                        addr0090:
                        this.rewardHeader = _loc1_;
                        if(_loc3_)
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"rewardHeader",this.rewardHeader);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr009a);
                  }
                  addr00a7:
                  return _loc1_;
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr0087);
      }
      
      private function _QuestDetailViewComponent_VGroup5_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               addr002b:
               if(_loc3_ || _loc3_)
               {
                  addr0055:
                  _loc1_.gap = -6;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._QuestDetailViewComponent_Group7_c(),this._QuestDetailViewComponent_MultistateButton1_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0055);
         }
         §§goto(addr002b);
      }
      
      private function _QuestDetailViewComponent_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._QuestDetailViewComponent_RewardSlideComponent1_i(),this._QuestDetailViewComponent_UiInfolayerAlignmentLine1_i()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0070:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _QuestDetailViewComponent_RewardSlideComponent1_i() : RewardSlideComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RewardSlideComponent = new RewardSlideComponent();
         if(_loc2_)
         {
            _loc1_.id = "rewardList";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0050:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr0081);
                  }
               }
               addr006f:
               this.rewardList = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr0081:
                  BindingManager.executeBindings(this,"rewardList",this.rewardList);
               }
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr0081);
      }
      
      private function _QuestDetailViewComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_)
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 23;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "uiInfolayerAlignmentLine";
                     if(_loc2_)
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0095:
                                 this.uiInfolayerAlignmentLine = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009f:
                                    BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr009f);
                  }
               }
               §§goto(addr0066);
            }
            §§goto(addr009f);
         }
         §§goto(addr0066);
      }
      
      private function _QuestDetailViewComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.styleName = "confirm";
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 188;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.includeInLayout = false;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_ || _loc3_)
                     {
                        addr006c:
                        _loc1_.addEventListener("click",this.__rewardButton_click);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.id = "rewardButton";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b0:
                                       this.rewardButton = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00ba:
                                          BindingManager.executeBindings(this,"rewardButton",this.rewardButton);
                                       }
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00b0);
                           }
                        }
                     }
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr00b0);
            }
            §§goto(addr006c);
         }
         §§goto(addr00a7);
      }
      
      public function __rewardButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.rewardButtonClickHandler();
         }
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "quest_polaroid_worker";
            if(!_loc2_)
            {
               addr0034:
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_ || Boolean(this))
               {
                  addr0047:
                  _loc1_.top = -44;
                  if(!_loc2_)
                  {
                     _loc1_.left = -30;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "characterGfx";
                        if(_loc3_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr00b5);
                     }
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0086:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b5);
                        }
                     }
                     addr00a3:
                     this.characterGfx = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00b5:
                        BindingManager.executeBindings(this,"characterGfx",this.characterGfx);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr0086);
            }
            §§goto(addr0047);
         }
         §§goto(addr0034);
      }
      
      public function ___QuestDetailViewComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _QuestDetailViewComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr00bf);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00aa);
                  }
                  addr00bf:
               }
               §§goto(addr0099);
            }
            §§goto(addr00bb);
         }
         addr0099:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || _loc2_)
         {
            addr00aa:
            §§pop()[1] = new Binding(this,function():uint
            {
               return QuestDetailViewMediator.UI_LINE_ID;
            },null,"uiInfolayerAlignmentLine.lineId");
            addr00bd:
            addr00bb:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterGfx() : BriskImageDynaLib
      {
         return this._1443225712characterGfx;
      }
      
      public function set characterGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1443225712characterGfx;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1443225712characterGfx = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardButton() : MultistateButton
      {
         return this._1256457025rewardButton;
      }
      
      public function set rewardButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1256457025rewardButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003a:
                  this._1256457025rewardButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0055:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0064);
                  }
               }
               §§goto(addr0055);
            }
            addr0064:
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardHeader() : LocaLabel
      {
         return this._1412873884rewardHeader;
      }
      
      public function set rewardHeader(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1412873884rewardHeader;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1412873884rewardHeader = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr007f);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : RewardSlideComponent
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:RewardSlideComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1690977389rewardList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get task1() : QuestDetailTaskComponent
      {
         return this._110132044task1;
      }
      
      public function set task1(param1:QuestDetailTaskComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._110132044task1;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._110132044task1 = param1;
                  if(!_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005b);
            }
            addr0082:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get task2() : QuestDetailTaskComponent
      {
         return this._110132045task2;
      }
      
      public function set task2(param1:QuestDetailTaskComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110132045task2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._110132045task2 = param1;
                  addr0036:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get task3() : QuestDetailTaskComponent
      {
         return this._110132046task3;
      }
      
      public function set task3(param1:QuestDetailTaskComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110132046task3;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._110132046task3 = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get task4() : QuestDetailTaskComponent
      {
         return this._110132047task4;
      }
      
      public function set task4(param1:QuestDetailTaskComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._110132047task4;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._110132047task4 = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task4",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskHeader() : QuestHeaderComponent
      {
         return this._640748658taskHeader;
      }
      
      public function set taskHeader(param1:QuestHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._640748658taskHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0039:
                  this._640748658taskHeader = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
   }
}

