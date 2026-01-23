package net.bigpoint.cityrama.view.citysquare.ui.components
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
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.QuestTextFactory;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.ChallengeListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestLayerRewardSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CitySquarePopup extends PaperPopupWindow implements IBindingClient
   {
      
      public static const START_EVENT:String = "START_EVENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         START_EVENT = "START_EVENT";
         if(_loc2_)
         {
            addr002e:
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
         return;
      }
      §§goto(addr002e);
      
      private var _756762963bubbleGroup:Group;
      
      private var _950398559comment:LocaLabel;
      
      private var _2004181219eventAvailibility:SlimProgressBarComponent;
      
      private var _31177304eventList:List;
      
      private var _31228997eventName:LocaLabel;
      
      private var _1835748386eventRuntime:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1412873884rewardHeader:LocaLabel;
      
      private var _1690977389rewardList:List;
      
      private var _1599251286startEventButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitySquarePopup()
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
         if(_loc4_ || _loc3_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     addr004f:
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._CitySquarePopup_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00d4:
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr00e4:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         addr0107:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr0128:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     addr0138:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_CitySquarePopupWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0156:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0174:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CitySquarePopup[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0191:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01b7:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01de:
                                                                                       this.styleName = "citysquare";
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          this.showBackButton = true;
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             this.width = 785;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                this.height = 430;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr021b:
                                                                                                   this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquarePopup_Array1_c);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0231:
                                                                                                      this.addEventListener("creationComplete",this.___CitySquarePopup_PaperPopupWindow1_creationComplete);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr024a:
                                                                                                         this.addEventListener("removedFromStage",this.___CitySquarePopup_PaperPopupWindow1_removedFromStage);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr025e:
                                                                                                            i = 0;
                                                                                                            addr025c:
                                                                                                         }
                                                                                                         var _temp_17:*;
                                                                                                         loop0:
                                                                                                         do
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
                                                                                                                  while(§§pop() < §§pop().§§slot[1].length)
                                                                                                                  {
                                                                                                                     Binding(bindings[i]).execute();
                                                                                                                     if(!(_loc4_ || Boolean(this)))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc4_);
                                                                                                         
                                                                                                         return;
                                                                                                         addr02ca:
                                                                                                      }
                                                                                                      §§goto(addr025c);
                                                                                                   }
                                                                                                   §§goto(addr02ca);
                                                                                                }
                                                                                                §§goto(addr0231);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr025c);
                                                                                       }
                                                                                       §§goto(addr0231);
                                                                                    }
                                                                                    §§goto(addr024a);
                                                                                 }
                                                                                 §§goto(addr01de);
                                                                              }
                                                                              §§goto(addr01b7);
                                                                           }
                                                                           §§goto(addr02ca);
                                                                        }
                                                                        §§goto(addr025e);
                                                                     }
                                                                     §§goto(addr0191);
                                                                  }
                                                                  §§goto(addr025e);
                                                               }
                                                               §§goto(addr0231);
                                                            }
                                                            §§goto(addr0174);
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr0138);
                                                   }
                                                   §§goto(addr0191);
                                                }
                                                §§goto(addr0107);
                                             }
                                             §§goto(addr0128);
                                          }
                                          §§goto(addr00e4);
                                       }
                                       §§goto(addr0128);
                                    }
                                    §§goto(addr0231);
                                 }
                                 §§goto(addr01de);
                              }
                              §§goto(addr0156);
                           }
                           §§goto(addr02ca);
                        }
                        §§goto(addr0128);
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr0107);
               }
               §§goto(addr021b);
            }
            §§goto(addr0050);
         }
         §§goto(addr004f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            CitySquarePopup._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0048);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0048:
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
         if(!(_loc1_ && _loc2_))
         {
            title = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.popupheader");
            if(!_loc1_)
            {
               this.eventRuntime.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.eventlifetime");
               if(!_loc1_)
               {
                  this.rewardHeader.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.header.reward");
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.startEventButton);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push("gui_popup_citysquare_general");
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§pop().libNameLeft = §§pop();
                           if(_loc2_)
                           {
                              §§push(this.startEventButton);
                              if(!_loc1_)
                              {
                                 §§push("button_icon_event");
                                 if(!_loc1_)
                                 {
                                    §§pop().imageNameLeft = §§pop();
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(this.startEventButton);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§pop().label = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.button.startevent");
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00ec:
                                             §§push(this.startEventButton);
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr0100:
                                                §§pop().styleName = "confirm";
                                                addr00fd:
                                                if(!_loc1_)
                                                {
                                                   addr0107:
                                                   §§push(this.startEventButton);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      addr0118:
                                                      §§pop().skin.setCurrentState("down");
                                                      if(_loc2_)
                                                      {
                                                         addr0131:
                                                         §§push(this.startEventButton);
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§pop().skin.setCurrentState("up");
                                                            if(!_loc1_)
                                                            {
                                                               addr0155:
                                                               this.startEventButton.addEventListener(MouseEvent.CLICK,this.handleStartEventButtonClick);
                                                               addr0151:
                                                            }
                                                            §§goto(addr0162);
                                                         }
                                                         §§goto(addr0155);
                                                      }
                                                      §§goto(addr0151);
                                                   }
                                                   §§goto(addr0155);
                                                }
                                                §§goto(addr0162);
                                             }
                                             §§goto(addr0118);
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr0118);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0100);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr0155);
                  }
                  §§goto(addr0131);
               }
               §§goto(addr00ec);
            }
            §§goto(addr0131);
         }
         addr0162:
      }
      
      private function handleStartEventButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new Event(START_EVENT));
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(param1);
         }
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._data = param1;
            if(_loc2_ || Boolean(param1))
            {
               §§goto(addr0036);
            }
            §§goto(addr0040);
         }
         addr0036:
         this._dataIsDirty = true;
         if(!_loc3_)
         {
            addr0040:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._dataIsDirty)
               {
                  if(_loc2_)
                  {
                     addr0037:
                     this._dataIsDirty = false;
                     if(_loc2_)
                     {
                        this.rewardList.dataProvider = this._data.eventList[0].rewardCollection;
                        if(!(_loc1_ && _loc2_))
                        {
                           this.checkEvents();
                           if(_loc2_)
                           {
                              addr0079:
                              this.checkEventAssets();
                           }
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0037);
         }
         addr007f:
      }
      
      private function checkEvents() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:* = NaN;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc1_:ArrayList = new ArrayList();
         for each(_loc2_ in this._data.eventList[0].listOfChallenges)
         {
            if(!(_loc10_ && Boolean(_loc1_)))
            {
               _loc1_.addItem(_loc2_);
            }
         }
         if(!_loc10_)
         {
            this.eventList.dataProvider = _loc1_;
            if(!(_loc10_ && Boolean(_loc3_)))
            {
               addr0092:
               §§push(this._data.eventList[0].fullRuntime - this._data.eventList[0].timeLeft);
               if(!_loc10_)
               {
                  §§push(§§pop() / this._data.eventList[0].timeLeft);
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                     if(!_loc10_)
                     {
                        addr00dc:
                        _loc3_ = §§pop();
                        if(!(_loc10_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00eb);
                        }
                        §§goto(addr01a0);
                     }
                     §§goto(addr01c7);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr01db);
            }
            addr00eb:
            §§push(this.eventAvailibility);
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  §§push(§§pop() * -1);
               }
               §§pop().progress = §§pop();
               if(_loc9_ || Boolean(_loc1_))
               {
                  §§goto(addr011c);
               }
               §§goto(addr0299);
            }
            addr011c:
            this.eventAvailibility.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.eventavailability");
            if(_loc9_ || Boolean(_loc1_))
            {
               §§push(LocaUtils.getDaysFromSeconds(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000));
               if(!(_loc10_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     addr0183:
                     _loc5_ = §§pop();
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        if(§§pop() >= 2)
                        {
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              addr01a0:
                              §§push(LocaUtils.getExactDaysFromSecond(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000));
                              if(_loc9_)
                              {
                                 addr01c7:
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    _loc6_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       addr01db:
                                       addr01d8:
                                       if(_loc5_ - _loc6_ < 0)
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(LocaUtils);
                                             §§push("rcl.misc.timeconventions");
                                             §§push("rcl.misc.timeconventions.specificDays");
                                             §§push(">");
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() + _loc5_);
                                             }
                                             §§push(§§pop().getString(§§pop(),§§pop(),null));
                                             if(!(_loc10_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc10_ && Boolean(_loc3_)))
                                                {
                                                   _loc4_ = §§pop();
                                                   if(_loc9_ || Boolean(_loc1_))
                                                   {
                                                      addr0299:
                                                      §§push(this.progressBar);
                                                      if(_loc9_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc10_)
                                                         {
                                                            §§pop().label = §§pop();
                                                            if(_loc9_ || Boolean(_loc1_))
                                                            {
                                                               addr02bc:
                                                               §§push(this.progressBar);
                                                               if(!(_loc10_ && Boolean(_loc2_)))
                                                               {
                                                                  §§goto(addr030a);
                                                               }
                                                               §§goto(addr0316);
                                                            }
                                                            §§goto(addr0312);
                                                         }
                                                         addr030a:
                                                         §§pop().toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.overalleventruntime",[LocaUtils.getDuration(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000)]);
                                                         if(!_loc10_)
                                                         {
                                                            addr0316:
                                                            this.progressBar.progress = 1;
                                                            addr0312:
                                                         }
                                                         §§goto(addr031b);
                                                      }
                                                      §§goto(addr0316);
                                                   }
                                                   §§goto(addr031b);
                                                }
                                                else
                                                {
                                                   addr024e:
                                                   §§push(§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         §§goto(addr0299);
                                                      }
                                                      §§goto(addr02bc);
                                                   }
                                                   else
                                                   {
                                                      addr0291:
                                                      _loc4_ = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr0299);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0312);
                                             }
                                             else
                                             {
                                                addr0290:
                                                §§push(§§pop());
                                             }
                                             §§goto(addr0291);
                                          }
                                          §§goto(addr0312);
                                       }
                                       else
                                       {
                                          §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc5_]));
                                          if(_loc9_ || Boolean(_loc1_))
                                          {
                                             §§goto(addr024e);
                                          }
                                          else
                                          {
                                             §§goto(addr0290);
                                          }
                                       }
                                       §§goto(addr0290);
                                    }
                                    §§goto(addr0312);
                                 }
                              }
                              §§goto(addr01db);
                           }
                           §§goto(addr0299);
                        }
                        else
                        {
                           §§push(LocaUtils.getDuration(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000));
                           if(_loc9_)
                           {
                              §§goto(addr0290);
                           }
                        }
                        §§goto(addr0291);
                     }
                  }
                  §§goto(addr01d8);
               }
               §§goto(addr0183);
            }
            addr031b:
            return;
         }
         §§goto(addr0092);
      }
      
      private function checkEventAssets() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.polaroidImage);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this._data);
               if(_loc2_)
               {
                  §§pop().dynaSWFFileName = §§pop().eventList[0].gfxId.toString();
                  if(_loc2_ || _loc3_)
                  {
                     addr0059:
                     §§push(this.polaroidImage);
                     if(!_loc3_)
                     {
                        addr0066:
                        §§push(this._data.eventList[0].gfxId.toString() + "_gui_popup_events");
                        if(_loc2_)
                        {
                           §§pop().dynaLibName = §§pop();
                           if(_loc2_)
                           {
                              addr008d:
                              this.polaroidImage.dynaBmpSourceName = "preview";
                              addr0089:
                           }
                           addr008f:
                           §§push(LocaUtils);
                           §§push("rcl.citysquarequests.");
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() + this._data.eventList[0].localeId);
                           }
                           §§push("rcl.citysquarequests.");
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(§§pop() + this._data.eventList[0].localeId);
                              if(_loc2_)
                              {
                                 §§push(§§pop() + ".layer.preview.flavour");
                              }
                           }
                           §§push(§§pop().getString(§§pop(),§§pop()));
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop());
                           }
                           var _loc1_:* = §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              this.comment.text = QuestTextFactory.replaceWildCards(_loc1_);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr011f:
                                 §§push(this.eventName);
                                 §§push(LocaUtils);
                                 §§push("rcl.citysquarequests.");
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() + this._data.eventList[0].localeId);
                                 }
                                 §§push("rcl.citysquarequests.");
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() + this._data.eventList[0].localeId);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() + ".layer.name");
                                    }
                                 }
                                 §§pop().text = §§pop().getString(§§pop(),§§pop());
                              }
                              return;
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0066);
            }
            §§goto(addr0089);
         }
         §§goto(addr0059);
      }
      
      private function setMouse(param1:MultistateButton, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            param1.mouseChildren = param2;
            if(_loc4_)
            {
               addr002d:
               param1.mouseEnabled = param2;
            }
            return;
         }
         §§goto(addr002d);
      }
      
      public function get data() : CitySquareDetailViewVo
      {
         return this._data;
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.startEventButton.removeEventListener(MouseEvent.CLICK,this.handleStartEventButtonClick);
         }
      }
      
      private function _CitySquarePopup_Array1_c() : Array
      {
         return [this._CitySquarePopup_Group1_c()];
      }
      
      private function _CitySquarePopup_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 340;
               if(!_loc3_)
               {
                  _loc1_.top = 20;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquarePopup_HGroup1_c(),this._CitySquarePopup_Group13_i()];
                     addr0048:
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0072);
                     }
                  }
                  §§goto(addr0086);
               }
               addr0072:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0048);
      }
      
      private function _CitySquarePopup_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr002b:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.top = 35;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        addr0056:
                        _loc1_.gap = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0074:
                           _loc1_.mxmlContent = [this._CitySquarePopup_Group2_c(),this._CitySquarePopup_Group5_c(),this._CitySquarePopup_Group8_c()];
                           if(_loc3_)
                           {
                              §§goto(addr0090);
                           }
                           §§goto(addr009c);
                        }
                     }
                     addr0090:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr009c:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0074);
            }
            §§goto(addr0056);
         }
         §§goto(addr002b);
      }
      
      private function _CitySquarePopup_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.left = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquarePopup_StickyNoteComponent1_c(),this._CitySquarePopup_Group3_c(),this._CitySquarePopup_VGroup1_c()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0081:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0081);
      }
      
      private function _CitySquarePopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.height = 85;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               addr0045:
               if(_loc3_)
               {
                  _loc1_.top = 243;
                  if(!_loc2_)
                  {
                     _loc1_.width = 185;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0085);
                     }
                  }
                  §§goto(addr0081);
               }
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _CitySquarePopup_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.top = 33;
               if(!_loc3_)
               {
                  addr004e:
                  _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib1_c(),this._CitySquarePopup_BriskImageDynaLib2_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004e);
         }
         §§goto(addr0070);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     addr0054:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr0086);
                  }
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0086:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0054);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = -1;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalCenter = -1;
               if(!_loc2_)
               {
                  addr0046:
                  _loc1_.id = "polaroidImage";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr008c:
                              this.polaroidImage = _loc1_;
                              if(_loc3_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                              }
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0096);
            }
            §§goto(addr0046);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.top = 268;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquarePopup_LocaLabel1_i(),this._CitySquarePopup_HGroup2_c()];
               if(!_loc2_)
               {
                  §§goto(addr005f);
               }
               §§goto(addr006b);
            }
         }
         addr005f:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr006b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.maxHeight = 85;
               if(_loc2_)
               {
                  addr003b:
                  _loc1_.styleName = "eventRuntime";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.text = "NotSet";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.verticalCenter = -2;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr009f);
                     }
                  }
                  addr0081:
                  _loc1_.width = 190;
                  if(!_loc3_)
                  {
                     _loc1_.id = "eventRuntime";
                     if(_loc2_ || _loc2_)
                     {
                        addr009f:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr00c9);
                              }
                           }
                           §§goto(addr00db);
                        }
                     }
                     addr00c9:
                     this.eventRuntime = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        addr00db:
                        BindingManager.executeBindings(this,"eventRuntime",this.eventRuntime);
                     }
                  }
                  §§goto(addr00e8);
               }
               addr00e8:
               return _loc1_;
            }
            §§goto(addr0081);
         }
         §§goto(addr003b);
      }
      
      private function _CitySquarePopup_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 167;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CitySquarePopup_Group4_c(),this._CitySquarePopup_BriskImageDynaLib3_c(),this._CitySquarePopup_ProgressBarComponent1_i()];
                  §§goto(addr0053);
               }
               §§goto(addr0090);
            }
            addr0053:
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0090:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _CitySquarePopup_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 20;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr004c:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(_loc3_ || Boolean(this))
               {
                  addr0054:
                  _loc1_.width = 25;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.height = 25;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr0097);
                  }
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
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
         }
         §§goto(addr0054);
      }
      
      private function _CitySquarePopup_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.progress = 0.5;
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "progressBar";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr0088:
                           this.progressBar = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"progressBar",this.progressBar);
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0088);
               }
            }
         }
         addr009f:
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               addr0032:
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib4_c(),this._CitySquarePopup_Group6_c(),this._CitySquarePopup_Group7_c()];
                     addr005a:
                     if(!_loc2_)
                     {
                        §§goto(addr0082);
                     }
                     §§goto(addr0096);
                  }
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0096:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr005a);
            }
            §§goto(addr0096);
         }
         §§goto(addr0032);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_breit";
            if(!(_loc2_ && _loc2_))
            {
               addr0046:
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0082:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0082);
               }
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _CitySquarePopup_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = 51;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005c:
                  _loc1_.mxmlContent = [this._CitySquarePopup_HGroup3_c(),this._CitySquarePopup_LocaLabel2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0086);
               }
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _CitySquarePopup_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.width = 280;
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = -2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0058:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.height = 40;
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib5_c(),this._CitySquarePopup_BriskImageDynaLib6_c(),this._CitySquarePopup_BriskImageDynaLib7_c()];
                              if(_loc2_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00bc);
                           }
                           addr00a8:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00bc:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00c0);
                        }
                     }
                  }
                  addr00c0:
                  return _loc1_;
               }
               §§goto(addr00a8);
            }
            §§goto(addr006d);
         }
         §§goto(addr0058);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.height = 40;
                  if(!_loc3_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0068);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0045);
            }
            §§goto(addr0081);
         }
         addr0045:
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0077);
            }
            §§goto(addr0095);
         }
         addr0077:
         _loc1_.height = 40;
         if(!_loc3_)
         {
            addr0081:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.height = 40;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0080);
            }
         }
         addr0084:
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.maxHeight = 40;
               if(_loc3_ || _loc2_)
               {
                  addr004d:
                  _loc1_.styleName = "eventName";
                  if(!_loc2_)
                  {
                     _loc1_.text = "NotSet";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0078:
                        _loc1_.verticalCenter = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.percentWidth = 100;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.id = "eventName";
                              if(_loc3_)
                              {
                                 addr00b2:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00be:
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          §§goto(addr00c7);
                                       }
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00c7);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00be);
                     }
                     addr00c7:
                     this.eventName = _loc1_;
                     if(_loc3_)
                     {
                        addr00d1:
                        BindingManager.executeBindings(this,"eventName",this.eventName);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr0078);
            }
            §§goto(addr004d);
         }
         §§goto(addr0078);
      }
      
      private function _CitySquarePopup_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.top = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._CitySquarePopup_List1_i()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0090);
                     }
                  }
               }
               §§goto(addr008c);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      private function _CitySquarePopup_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._CitySquarePopup_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.setStyle("skinClass",ChallengeListSkin);
                     if(_loc2_)
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr009e);
            }
            addr0061:
            _loc1_.id = "eventList";
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr008b);
                  }
               }
               §§goto(addr0094);
            }
            addr008b:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0094:
               this.eventList = _loc1_;
               if(!_loc3_)
               {
                  addr009e:
                  BindingManager.executeBindings(this,"eventList",this.eventList);
               }
            }
            §§goto(addr00ab);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _CitySquarePopup_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = ChallangeItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._CitySquarePopup_VGroup2_c()];
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0043);
            }
            §§goto(addr004f);
         }
         addr0043:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr004f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.paddingTop = 25;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gap = 1;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.paddingLeft = -3;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquarePopup_Group9_c(),this._CitySquarePopup_Group12_c(),this._CitySquarePopup_SlimProgressBarComponent1_i(),this._CitySquarePopup_MultistateButton1_i()];
                     addr005f:
                     if(_loc3_ || Boolean(this))
                     {
                        addr0096:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00a2:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a6);
                     }
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr005f);
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _CitySquarePopup_Group9_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 209;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib8_c(),this._CitySquarePopup_Group10_c(),this._CitySquarePopup_VGroup4_c(),this._CitySquarePopup_UiInfolayerAlignmentLine1_i()];
               if(_loc2_)
               {
                  §§goto(addr0069);
               }
            }
            §§goto(addr007d);
         }
         addr0069:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr007d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "reward_postit_blue_previewlayer";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0066);
               }
               §§goto(addr0072);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _CitySquarePopup_Group10_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._CitySquarePopup_Group11_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _CitySquarePopup_Group11_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 188;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.top = 26;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.left = 11;
                  if(!_loc2_)
                  {
                     _loc1_.height = 39;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CitySquarePopup_HGroup4_c(),this._CitySquarePopup_BriskImageDynaLib12_c(),this._CitySquarePopup_VGroup3_c()];
                        addr006a:
                        if(_loc3_ || _loc2_)
                        {
                           addr0099:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00ad:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0099);
            }
            addr00b1:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _CitySquarePopup_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0062:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib9_c(),this._CitySquarePopup_BriskImageDynaLib10_c(),this._CitySquarePopup_BriskImageDynaLib11_c()];
                        §§goto(addr006c);
                     }
                     §§goto(addr009a);
                  }
                  addr006c:
                  if(_loc2_ || _loc2_)
                  {
                     addr009a:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0062);
            }
            §§goto(addr009a);
         }
         §§goto(addr0062);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc3_)
               {
                  addr0057:
                  _loc1_.height = 39;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr0057);
         }
         addr0071:
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib10_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc2_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr004a);
            }
            addr0040:
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 39;
               addr004a:
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0069);
               }
               §§goto(addr007d);
            }
            addr0069:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007d:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0081);
         }
         addr0081:
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc3_ || Boolean(this))
               {
                  addr0066:
                  _loc1_.height = 39;
                  if(_loc3_ || _loc2_)
                  {
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr0066);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!_loc3_)
               {
                  _loc1_.left = -3;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr006f:
                     _loc1_.top = -11;
                     if(!_loc3_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr006f);
      }
      
      private function _CitySquarePopup_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc2_)
                     {
                        addr0083:
                        _loc1_.mxmlContent = [this._CitySquarePopup_LocaLabel3_i()];
                        if(_loc3_ || Boolean(this))
                        {
                           addr009b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00a7:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr009b);
               }
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _CitySquarePopup_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 80;
            if(!_loc2_)
            {
               _loc1_.styleName = "rewardHeader";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "rewardHeader";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00aa);
                           }
                        }
                     }
                     addr00a0:
                     this.rewardHeader = _loc1_;
                     if(!_loc2_)
                     {
                        addr00aa:
                        BindingManager.executeBindings(this,"rewardHeader",this.rewardHeader);
                     }
                     §§goto(addr00b7);
                  }
               }
               §§goto(addr00b7);
            }
            §§goto(addr00a0);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.paddingTop = 80;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0078);
         }
         addr0030:
         _loc1_.horizontalAlign = "center";
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0078:
                  _loc1_.mxmlContent = [this._CitySquarePopup_List2_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0094:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr0098);
            }
            §§goto(addr0094);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _CitySquarePopup_List2_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._CitySquarePopup_ClassFactory2_c();
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.setStyle("skinClass",QuestLayerRewardSkin);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "rewardList";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0085);
                  }
                  addr007c:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0085:
                     this.rewardList = _loc1_;
                     if(!_loc3_)
                     {
                        addr008f:
                        BindingManager.executeBindings(this,"rewardList",this.rewardList);
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr008f);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr008f);
      }
      
      private function _CitySquarePopup_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.top = 80;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr009f);
               }
               addr0062:
               _loc1_.lineId = 0;
               if(_loc3_)
               {
                  _loc1_.id = "uiInfolayerAlignmentLine";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr009f:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00b0:
                              this.uiInfolayerAlignmentLine = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00ba:
                                 BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00c7);
                     }
                  }
                  §§goto(addr00b0);
               }
               addr00c7:
               return _loc1_;
            }
         }
         §§goto(addr00b0);
      }
      
      private function _CitySquarePopup_Group12_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 5;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0043:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0043);
      }
      
      private function _CitySquarePopup_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(_loc3_)
         {
            _loc1_.styleName = "eventOverallTime";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.revertProgress = true;
               if(!_loc2_)
               {
                  _loc1_.id = "eventAvailibility";
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
            }
            addr005f:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0076:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0087);
                  }
                  §§goto(addr0091);
               }
            }
            §§goto(addr0087);
         }
         addr0087:
         this.eventAvailibility = _loc1_;
         if(_loc3_)
         {
            addr0091:
            BindingManager.executeBindings(this,"eventAvailibility",this.eventAvailibility);
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 207;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005a:
                     _loc1_.tabFocusEnabled = false;
                     if(_loc3_)
                     {
                        _loc1_.id = "startEventButton";
                        if(_loc3_ || _loc3_)
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a1:
                                    this.startEventButton = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b3:
                                       BindingManager.executeBindings(this,"startEventButton",this.startEventButton);
                                    }
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00a1);
                        }
                        addr00c0:
                        return _loc1_;
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00a1);
            }
            §§goto(addr005a);
         }
         §§goto(addr00b3);
      }
      
      private function _CitySquarePopup_Group13_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib13_c(),this._CitySquarePopup_LocaLabel4_i(),this._CitySquarePopup_BriskImageDynaLib14_i()];
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "bubbleGroup";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008c:
                           this.bubbleGroup = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr009e:
                              BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr008c);
               }
               addr00ab:
               return _loc1_;
            }
         }
         §§goto(addr009e);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "bubble_large";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  §§goto(addr0054);
               }
               §§goto(addr007c);
            }
            addr0054:
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            §§goto(addr008c);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.maxHeight = 50;
            if(_loc2_)
            {
               _loc1_.maxWidth = 660;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0049:
                  _loc1_.styleName = "avatarText";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.text = "dev";
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(!_loc3_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.percentWidth = 100;
                              if(!_loc3_)
                              {
                                 _loc1_.percentHeight = 100;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00ab:
                                    _loc1_.id = "comment";
                                    if(_loc2_)
                                    {
                                       addr00c0:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc2_)
                                          {
                                             addr00cc:
                                             _loc1_.document = this;
                                             if(_loc2_)
                                             {
                                                §§goto(addr00d5);
                                             }
                                             §§goto(addr00df);
                                          }
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00cc);
                              }
                              addr00d5:
                              this.comment = _loc1_;
                              if(_loc2_)
                              {
                                 addr00df:
                                 BindingManager.executeBindings(this,"comment",this.comment);
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00ab);
                  }
               }
               §§goto(addr00df);
            }
            §§goto(addr00cc);
         }
         §§goto(addr0049);
      }
      
      private function _CitySquarePopup_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.left = 10;
                  if(!_loc2_)
                  {
                     _loc1_.top = -15;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "infoIcon";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00ab:
                                    this.infoIcon = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00bd);
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr00bd);
      }
      
      public function ___CitySquarePopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleCreationComplete();
         }
      }
      
      public function ___CitySquarePopup_PaperPopupWindow1_removedFromStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.removedFromStageHandler(param1);
         }
      }
      
      private function _CitySquarePopup_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr005e);
               }
               §§goto(addr007a);
            }
            §§goto(addr0078);
         }
         addr005e:
         §§push(§§pop().§§slot[1]);
         if(_loc3_)
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr007a:
            addr0078:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleGroup() : Group
      {
         return this._756762963bubbleGroup;
      }
      
      public function set bubbleGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._756762963bubbleGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._756762963bubbleGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get comment() : LocaLabel
      {
         return this._950398559comment;
      }
      
      public function set comment(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._950398559comment;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0053:
                  this._950398559comment = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comment",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventAvailibility() : SlimProgressBarComponent
      {
         return this._2004181219eventAvailibility;
      }
      
      public function set eventAvailibility(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2004181219eventAvailibility;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._2004181219eventAvailibility = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventAvailibility",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventList() : List
      {
         return this._31177304eventList;
      }
      
      public function set eventList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._31177304eventList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._31177304eventList = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventName() : LocaLabel
      {
         return this._31228997eventName;
      }
      
      public function set eventName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._31228997eventName;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._31228997eventName = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventName",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventRuntime() : LocaLabel
      {
         return this._1835748386eventRuntime;
      }
      
      public function set eventRuntime(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1835748386eventRuntime;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1835748386eventRuntime = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventRuntime",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177606215infoIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2112922897polaroidImage = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003a:
                  this._1131509414progressBar = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1412873884rewardHeader;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1412873884rewardHeader = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
               }
               §§goto(addr0050);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1690977389rewardList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1690977389rewardList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
         }
         addr0061:
      }
      
      [Bindable(event="propertyChange")]
      public function get startEventButton() : MultistateButton
      {
         return this._1599251286startEventButton;
      }
      
      public function set startEventButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1599251286startEventButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr004d:
                  this._1599251286startEventButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0082:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startEventButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0082);
               }
            }
            addr0091:
            return;
         }
         §§goto(addr004d);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0061);
      }
   }
}

