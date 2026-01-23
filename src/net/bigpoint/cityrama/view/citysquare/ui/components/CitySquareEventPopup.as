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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.ChallengeBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CitySquareEventPopup extends PaperPopupWindow
   {
      
      public static const OPEN_REWARD_PREVIEW:String = "OPEN_REWARD_PREVIEW";
      
      public static const OPEN_DEPOSIT_MINILAYER:String = "OPEN_DEPOSIT_MINILAYER";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         OPEN_REWARD_PREVIEW = "OPEN_REWARD_PREVIEW";
         if(_loc2_ || _loc1_)
         {
            OPEN_DEPOSIT_MINILAYER = "OPEN_DEPOSIT_MINILAYER";
            if(_loc2_)
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
         }
      }
      
      private var _1396253357barOne:ChallengeBarComponent;
      
      private var _1396248263barTwo:ChallengeBarComponent;
      
      private var _756762963bubbleGroup:Group;
      
      private var _812351090challengeName:LocaLabel;
      
      private var _1577357232challengeProgress:StepMarkerBarComponent;
      
      private var _378557844eventButton:MultistateButton;
      
      private var _1917266112eventMainText:LocaLabel;
      
      private var _1835748386eventRuntime:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2076478802timerbar:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _time:Number = 0;
      
      private var _timer:Timer;
      
      private var _timerIsDirty:Boolean;
      
      private var _globalTime:Number = 0;
      
      public function CitySquareEventPopup()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr001e:
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.styleName = "citysquare";
                  if(_loc2_ || _loc1_)
                  {
                     addr0055:
                     this.showBackButton = true;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.width = 785;
                        if(!_loc1_)
                        {
                           addr0072:
                           this.height = 430;
                           if(_loc2_ || _loc2_)
                           {
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventPopup_Array1_c);
                              if(!(_loc1_ && _loc1_))
                              {
                                 this.addEventListener("creationComplete",this.___CitySquareEventPopup_PaperPopupWindow1_creationComplete);
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr0055);
            }
            §§goto(addr0072);
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr004a:
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
         if(!(_loc1_ && Boolean(this)))
         {
            title = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.popupheader");
            if(_loc2_)
            {
               addr0034:
               §§push(this.eventButton);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push("gui_popups_miniLayer");
                  if(!_loc1_)
                  {
                     §§pop().libNameLeft = §§pop();
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.eventButton);
                        if(!_loc1_)
                        {
                           addr006a:
                           §§pop().imageNameLeft = "button_icon_goto";
                           if(!_loc1_)
                           {
                              §§push(this.eventButton);
                              if(_loc2_)
                              {
                                 §§goto(addr007b);
                              }
                              §§goto(addr0128);
                           }
                           §§goto(addr0124);
                        }
                        addr007b:
                        §§pop().skin.setCurrentState("down");
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this.eventButton);
                           if(_loc2_)
                           {
                              addr00a5:
                              §§pop().skin.setCurrentState("up");
                              if(_loc2_ || _loc1_)
                              {
                                 this._timer = new Timer(1000);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    this._timer.addEventListener(TimerEvent.TIMER,this.onTick);
                                    if(_loc2_)
                                    {
                                       addr00ee:
                                       this._timer.start();
                                       if(!_loc1_)
                                       {
                                          this.challengeProgress.addEventListener(StepMarkerBarComponent.MARKER_CLICKED,this.handleMarkerClicked);
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr013a);
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr00ee);
                              }
                              §§goto(addr013a);
                           }
                           §§goto(addr0128);
                        }
                        §§goto(addr00fb);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00a5);
            }
            addr00fb:
            if(!(_loc1_ && _loc2_))
            {
               addr0128:
               this.eventButton.addEventListener(MouseEvent.CLICK,this.handleEventButtonClick);
               addr0124:
               if(!_loc1_)
               {
                  addr013a:
                  this.setTooltips();
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      private function handleMarkerClicked(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:CitysquareRewardPreviewButtonPressedEvent = new CitysquareRewardPreviewButtonPressedEvent(OPEN_REWARD_PREVIEW);
         if(!_loc3_)
         {
            _loc2_.challengeNumber = this.challengeProgress.clickedMarkerIndex + 1;
            if(_loc4_)
            {
               addr0047:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0047);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         var _temp_1:* = _loc2_;
         §§push(_temp_1);
         if(!_temp_1)
         {
            this.eventButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.depositbutton");
            if(!_loc2_)
            {
               addr003e:
               this.timerbar.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.eventruntime");
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function onTick(param1:TimerEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            var _loc2_:* = this;
            §§push(_loc2_._time);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_._time = _loc3_;
            }
            if(_loc4_)
            {
               this._timerIsDirty = true;
               if(!_loc5_)
               {
                  addr0055:
                  invalidateProperties();
               }
               return;
            }
         }
         §§goto(addr0055);
      }
      
      private function handleEventButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(OPEN_DEPOSIT_MINILAYER));
         }
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(!(_loc3_ && _loc3_))
            {
               this._dataIsDirty = true;
               if(_loc2_ || _loc3_)
               {
                  this._timerIsDirty = true;
                  if(!_loc3_)
                  {
                     addr0053:
                     invalidateProperties();
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr0053);
         }
         addr0058:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc1_:Vector.<ChallengeBarComponent> = null;
         var _loc2_:* = 0;
         var _loc3_:EventChallengeStepDetailViewVo = null;
         var _loc4_:EventChallengeDetailViewVo = null;
         var _loc5_:ChallengeBarVo = null;
         var _loc6_:StepMarkerVo = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:ChallengeBarComponent = null;
         if(_loc16_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc16_ || Boolean(_loc1_))
            {
               §§push(this._dataIsDirty);
               if(!_loc17_)
               {
                  §§push(§§pop());
                  if(!(_loc17_ && Boolean(_loc1_)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!_loc17_)
                        {
                           §§pop();
                           if(_loc16_ || Boolean(_loc1_))
                           {
                              §§goto(addr009e);
                           }
                           §§goto(addr00c6);
                        }
                     }
                  }
               }
               addr009e:
               §§goto(addr0099);
            }
            §§goto(addr00bb);
         }
         addr0099:
         if(Boolean(this._data))
         {
            if(_loc16_ || Boolean(_loc1_))
            {
               this._dataIsDirty = false;
               if(!_loc17_)
               {
                  addr00bb:
                  this._globalTime = this._data.time;
               }
               addr00c6:
               _loc1_ = new <ChallengeBarComponent>[this.barOne,this.barTwo];
               if(!(_loc17_ && Boolean(this)))
               {
                  §§push(0);
                  if(_loc16_ || Boolean(this))
                  {
                     _loc2_ = §§pop();
                     addr010e:
                     §§push(0);
                  }
                  for each(_loc4_ in this._data.eventList[0].listOfChallenges)
                  {
                     §§push(_loc4_.state);
                     if(!(_loc17_ && Boolean(this)))
                     {
                        §§push(QuestSystemStateConst.VALID);
                        if(_loc16_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc16_)
                           {
                              var _temp_14:* = §§pop();
                              §§push(_temp_14);
                              if(!_temp_14)
                              {
                                 if(!(_loc17_ && Boolean(_loc1_)))
                                 {
                                    §§pop();
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    addr0185:
                                    addr017f:
                                    §§push(_loc4_.state == QuestSystemStateConst.DONE);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(!(_loc17_ && Boolean(_loc2_)))
                              {
                                 var _loc13_:int = 0;
                                 if(_loc16_ || Boolean(this))
                                 {
                                    for each(_loc3_ in _loc4_.listOfSteps)
                                    {
                                       _loc10_ = _loc1_[_loc2_];
                                       _loc5_ = new ChallengeBarVo();
                                       _loc5_.isEventGood = _loc3_.targetGoodIsEventGood;
                                       if(_loc16_)
                                       {
                                          _loc5_.maxValue = _loc3_.eventStockTarget;
                                          if(_loc16_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc17_ && Boolean(_loc3_)))
                                             {
                                                if(_loc4_.state == QuestSystemStateConst.DONE)
                                                {
                                                   addr0213:
                                                   §§push(_loc3_.eventStockTarget);
                                                   if(!(_loc17_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc17_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc3_.eventStock);
                                                   if(_loc16_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                }
                                                §§pop().currentValue = §§pop();
                                                if(_loc16_)
                                                {
                                                   _loc5_.goodGFXId = _loc3_.gfxId;
                                                   if(_loc16_)
                                                   {
                                                      _loc5_.goodLocaleId = _loc3_.localeId;
                                                      if(_loc16_ || Boolean(_loc2_))
                                                      {
                                                         _loc5_.eventGFXId = this._data.eventList[0].gfxId;
                                                         if(!_loc17_)
                                                         {
                                                            addr0294:
                                                            _loc5_.eventLocalId = this._data.eventList[0].localeId;
                                                            if(!(_loc16_ || Boolean(_loc2_)))
                                                            {
                                                               continue;
                                                            }
                                                            addr02b6:
                                                            _loc5_.elementId = _loc3_.questElementId;
                                                            if(!_loc17_)
                                                            {
                                                               _loc5_.questId = _loc3_.questId;
                                                               if(!(_loc17_ && Boolean(_loc3_)))
                                                               {
                                                                  addr02dc:
                                                                  _loc5_.questType = _loc3_.questType;
                                                                  if(_loc16_)
                                                                  {
                                                                     addr02eb:
                                                                     _loc5_.upsellingPrice = _loc3_.instantFinishPrice;
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc5_.upsellingAffordable = _loc3_.upsellingAffordable;
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc10_.data = _loc5_;
                                                                     if(!(_loc16_ || Boolean(_loc2_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               _loc10_.visible = _loc10_.includeInLayout = true;
                                                               if(_loc16_)
                                                               {
                                                                  _loc2_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr02dc);
                                                         }
                                                         §§goto(addr02eb);
                                                      }
                                                      §§goto(addr02b6);
                                                   }
                                                   §§goto(addr02dc);
                                                }
                                                §§goto(addr02eb);
                                             }
                                             §§goto(addr0213);
                                          }
                                          §§goto(addr0294);
                                       }
                                       §§goto(addr02dc);
                                    }
                                 }
                              }
                              break;
                           }
                           continue;
                        }
                        §§goto(addr0185);
                     }
                     §§goto(addr017f);
                  }
                  _loc6_ = new StepMarkerVo();
                  if(_loc16_)
                  {
                     §§push(0);
                     if(!_loc17_)
                     {
                        §§push(§§pop());
                        if(_loc16_)
                        {
                           _loc7_ = §§pop();
                           if(_loc16_ || Boolean(_loc3_))
                           {
                              §§push(0);
                              if(!(_loc17_ && Boolean(_loc1_)))
                              {
                                 addr039d:
                                 _loc8_ = §§pop();
                                 if(_loc16_)
                                 {
                                    §§push(0);
                                    if(_loc16_)
                                    {
                                       addr03ad:
                                       _loc9_ = §§pop();
                                       if(_loc16_)
                                       {
                                          addr03b7:
                                          var _loc11_:int = 0;
                                          if(_loc16_ || Boolean(_loc3_))
                                          {
                                             for each(_loc4_ in this._data.eventList[0].listOfChallenges)
                                             {
                                                if(_loc17_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc9_);
                                                if(!_loc17_)
                                                {
                                                   if(§§pop() == this._data.eventList[0].listOfChallenges.length - 1)
                                                   {
                                                      if(_loc16_ || Boolean(_loc2_))
                                                      {
                                                         _loc6_.stepInactiveStyles.push("challengeInactivelast");
                                                         if(!_loc17_)
                                                         {
                                                            _loc6_.stepActiveStyles.push("lastActive");
                                                            if(!_loc16_)
                                                            {
                                                               addr0454:
                                                               _loc6_.stepActiveStyles.push("active");
                                                               if(!_loc16_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc6_.hasLastInterval = false;
                                                            if(_loc16_ || Boolean(_loc2_))
                                                            {
                                                               addr047b:
                                                               _loc13_ = 0;
                                                               addr0479:
                                                               if(_loc16_)
                                                               {
                                                                  for each(_loc3_ in _loc4_.listOfSteps)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc16_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc3_.eventStockTarget);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc16_ || Boolean(this))
                                                                                 {
                                                                                    addr04cf:
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr04d7:
                                                                                    §§push(_loc4_.state);
                                                                                    if(_loc16_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§push(QuestSystemStateConst.DONE);
                                                                                       if(!(_loc17_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc16_ || Boolean(_loc2_))
                                                                                          {
                                                                                             var _temp_37:* = §§pop();
                                                                                             §§push(_temp_37);
                                                                                             if(!_temp_37)
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr0518:
                                                                                                   §§pop();
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr052a:
                                                                                                   addr0524:
                                                                                                   §§push(_loc4_.state == QuestSystemStateConst.SUBMITTED);
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc7_);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr0595:
                                                                                                   addr058d:
                                                                                                   §§push(_loc3_.eventStockTarget);
                                                                                                   if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc16_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr0565:
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(_loc17_ && Boolean(_loc1_))
                                                                                                            {
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      addr0589:
                                                                                                      §§push(_loc3_.eventStock);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr0565);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc16_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   §§goto(addr0589);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0595);
                                                                                          }
                                                                                          §§goto(addr0518);
                                                                                       }
                                                                                       §§goto(addr052a);
                                                                                    }
                                                                                    §§goto(addr0524);
                                                                                 }
                                                                                 §§goto(addr0589);
                                                                              }
                                                                              §§goto(addr0595);
                                                                           }
                                                                           §§goto(addr058d);
                                                                        }
                                                                        §§goto(addr04cf);
                                                                     }
                                                                     §§goto(addr04d7);
                                                                  }
                                                               }
                                                               if(_loc17_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         _loc6_.progressSteps.push(_loc8_);
                                                         if(_loc16_ || Boolean(_loc3_))
                                                         {
                                                            _loc9_++;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   _loc6_.stepInactiveStyles.push("challengeInactive");
                                                   if(!_loc17_)
                                                   {
                                                      §§goto(addr0454);
                                                   }
                                                   §§goto(addr0479);
                                                }
                                                §§goto(addr047b);
                                             }
                                          }
                                          if(!(_loc17_ && Boolean(_loc2_)))
                                          {
                                             _loc6_.currentProgress = _loc7_;
                                             if(!_loc17_)
                                             {
                                                addr05e8:
                                                this.challengeProgress.data = _loc6_;
                                                if(_loc16_ || Boolean(_loc2_))
                                                {
                                                   this.eventRuntime.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.eventlifetime");
                                                   if(!_loc17_)
                                                   {
                                                      this.eventButton.label = LocaUtils.getString("rcl.citysquare.popup.runningevent","rcl.citysquare.popup.runningevent.button.deposit");
                                                      §§goto(addr0616);
                                                   }
                                                   §§goto(addr063e);
                                                }
                                                addr0616:
                                                if(_loc16_)
                                                {
                                                   addr063e:
                                                   this.checkEventAssets();
                                                }
                                             }
                                             §§goto(addr0644);
                                          }
                                          §§goto(addr0616);
                                       }
                                       §§goto(addr05e8);
                                    }
                                    §§goto(addr03b7);
                                 }
                                 §§goto(addr0616);
                              }
                              §§goto(addr03b7);
                           }
                           §§goto(addr063e);
                        }
                        §§goto(addr039d);
                     }
                     §§goto(addr03ad);
                  }
                  §§goto(addr0616);
               }
               §§goto(addr010e);
            }
            §§goto(addr00bb);
         }
         addr0644:
         if(this._timerIsDirty)
         {
            if(_loc16_ || Boolean(_loc1_))
            {
               this._timerIsDirty = false;
               if(!_loc17_)
               {
                  this.setTimer();
               }
            }
         }
      }
      
      private function setTimer() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = NaN;
         §§push(LocaUtils);
         §§push(this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000);
         if(!_loc4_)
         {
            §§push(§§pop() / 1000);
         }
         §§push(§§pop().getDaysFromSeconds(§§pop()));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(§§pop() >= 2)
               {
                  if(!_loc4_)
                  {
                     addr0073:
                     §§push(LocaUtils);
                     §§push(this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000);
                     if(_loc3_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop().getExactDaysFromSecond(§§pop()));
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc3_)
                           {
                              addr00c4:
                              addr00c2:
                              if(_loc1_ - _loc2_ < 0)
                              {
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    §§push(this.timerbar);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop().progressBar);
                                       if(!_loc4_)
                                       {
                                          §§push(LocaUtils);
                                          §§push("rcl.misc.timeconventions");
                                          §§push("rcl.misc.timeconventions.specificDays");
                                          §§push(">");
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop() + _loc1_);
                                          }
                                          §§push(§§pop().getString(§§pop(),§§pop(),null));
                                          if(!_loc4_)
                                          {
                                             §§pop().label = §§pop();
                                             if(_loc4_ && Boolean(_loc2_))
                                             {
                                             }
                                             addr01db:
                                             addr01e2:
                                             addr01df:
                                             §§push(this.timerbar.progressBar);
                                             §§push(1);
                                             §§push(this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§push(§§pop() / this._data.eventList[0].listOfChallenges[0].fullRuntime);
                                             }
                                             §§pop().progress = §§pop() - §§pop();
                                          }
                                          else
                                          {
                                             addr01cb:
                                             §§pop().label = §§pop();
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§goto(addr01db);
                                             }
                                          }
                                          §§goto(addr023f);
                                       }
                                       else
                                       {
                                          addr0196:
                                          §§push(LocaUtils);
                                          §§push(this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() / 1000);
                                          }
                                          §§push(§§pop().getDuration(§§pop()));
                                       }
                                       §§goto(addr01cb);
                                    }
                                    else
                                    {
                                       addr0143:
                                       §§push(§§pop().progressBar);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]));
                                          if(!_loc4_)
                                          {
                                             §§pop().label = §§pop();
                                             if(_loc3_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr01db);
                                          }
                                          else
                                          {
                                             §§goto(addr01cb);
                                          }
                                       }
                                    }
                                    §§goto(addr01e2);
                                 }
                                 §§goto(addr01db);
                              }
                              else
                              {
                                 §§push(this.timerbar);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr0143);
                                 }
                                 else
                                 {
                                    addr018d:
                                    §§push(§§pop().progressBar);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr0196);
                                    }
                                 }
                                 §§goto(addr01e2);
                              }
                           }
                           §§goto(addr01db);
                        }
                     }
                     §§goto(addr00c4);
                  }
                  addr023f:
                  return;
               }
               §§push(this.timerbar);
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§goto(addr018d);
               }
               §§goto(addr01df);
            }
            §§goto(addr00c2);
         }
         §§goto(addr0073);
      }
      
      private function checkEventAssets() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:EventChallengeDetailViewVo = null;
         if(!_loc6_)
         {
            §§push(this.polaroidImage);
            if(!(_loc6_ && _loc1_))
            {
               §§push(this._data);
               if(_loc5_)
               {
                  §§pop().dynaSWFFileName = §§pop().eventList[0].gfxId.toString();
                  if(_loc5_)
                  {
                     addr005c:
                     this.polaroidImage.dynaLibName = this._data.eventList[0].gfxId.toString() + "_gui_popup_events";
                     addr0058:
                  }
                  §§goto(addr0071);
               }
               §§goto(addr005c);
            }
            §§goto(addr0058);
         }
         addr0071:
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this._data.eventList[0].listOfChallenges)
         {
            if(_loc5_ || Boolean(_loc1_))
            {
               _loc1_++;
               if(!_loc6_)
               {
                  addr00b8:
                  if(_loc2_.state != QuestSystemStateConst.VALID)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §§push(this.eventMainText);
               §§push(LocaUtils);
               §§push("rcl.citysquarequests.");
               if(_loc5_)
               {
                  §§push(§§pop() + this._data.eventList[0].localeId);
               }
               §§push("rcl.citysquarequests.");
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(§§pop() + this._data.eventList[0].localeId);
                  if(_loc5_)
                  {
                     §§push(§§pop() + ".layer.running.flavour.challenge.");
                     if(!_loc6_)
                     {
                        addr011d:
                        §§push(§§pop() + _loc1_);
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        §§push(this.polaroidImage);
                        §§push("running_");
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop() + _loc1_);
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                     }
                     continue;
                  }
               }
               §§goto(addr011d);
            }
            §§goto(addr00b8);
         }
         if(_loc5_)
         {
            this.challengeName.text = LocaUtils.getString("rcl.citysquare.popup.events","rcl.citysquare.popup.events.challenge.header");
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._timer.stop();
            if(_loc2_ || Boolean(param1))
            {
               addr0048:
               this._timer.removeEventListener(TimerEvent.TIMER,this.onTick);
               if(!_loc3_)
               {
                  this._timer = null;
                  if(_loc2_)
                  {
                     addr0069:
                     dispatchEvent(param1);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0069);
            }
            addr006f:
            return;
         }
         §§goto(addr0048);
      }
      
      public function get data() : CitySquareDetailViewVo
      {
         return this._data;
      }
      
      private function _CitySquareEventPopup_Array1_c() : Array
      {
         return [this._CitySquareEventPopup_Group1_c()];
      }
      
      private function _CitySquareEventPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 340;
               if(_loc3_)
               {
                  _loc1_.top = 20;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquareEventPopup_Group2_c(),this._CitySquareEventPopup_Group8_c(),this._CitySquareEventPopup_Group11_i()];
                     if(_loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr008f);
               }
               addr0093:
               return _loc1_;
            }
         }
         §§goto(addr0083);
      }
      
      private function _CitySquareEventPopup_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.right = 10;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 60;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_Group3_c(),this._CitySquareEventPopup_BriskImageDynaLib3_c(),this._CitySquareEventPopup_Group4_c(),this._CitySquareEventPopup_Group5_c(),this._CitySquareEventPopup_VGroup1_c(),this._CitySquareEventPopup_MultistateButton1_i()];
                  addr0047:
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0095:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0095);
         }
         §§goto(addr0047);
      }
      
      private function _CitySquareEventPopup_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.bottom = -50;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib1_c(),this._CitySquareEventPopup_StepMarkerBarComponent1_i(),this._CitySquareEventPopup_BriskImageDynaLib2_c()];
                  if(_loc2_ || _loc3_)
                  {
                     addr0080:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr008c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0090);
                  }
               }
               §§goto(addr008c);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "challengeProgress_bg";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(!_loc2_)
               {
                  addr004d:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr004d);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 88;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "challengeProgress";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008d:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr009e:
                                 this.challengeProgress = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a8:
                                    BindingManager.executeBindings(this,"challengeProgress",this.challengeProgress);
                                 }
                              }
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr008d);
            }
            §§goto(addr00a8);
         }
         addr00b5:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_residentialPopup";
               if(_loc3_)
               {
                  _loc1_.left = 5;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.top = 10;
                     addr005a:
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008c);
                  }
               }
               addr0078:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr005a);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_quer";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(_loc2_ || _loc3_)
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr005d);
         }
         addr006d:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = 70;
            if(_loc2_)
            {
               addr003b:
               _loc1_.bottom = 45;
               if(_loc2_)
               {
                  _loc1_.left = -3;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskMCDynaLib1_c()];
                     if(!_loc3_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006e);
               }
            }
            addr007e:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _CitySquareEventPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0045);
            }
            §§goto(addr0070);
         }
         addr0045:
         _loc1_.dynaMCSourceName = "stickytape_left";
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0070:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr007a);
               }
               §§goto(addr008e);
            }
            addr007a:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr008e:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0092);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 70;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 45;
               if(!_loc3_)
               {
                  _loc1_.right = -3;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskMCDynaLib2_c()];
                     if(_loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0073);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _CitySquareEventPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008f);
               }
               addr0093:
               return _loc1_;
            }
         }
         §§goto(addr0083);
      }
      
      private function _CitySquareEventPopup_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.left = 20;
            if(!(_loc3_ && _loc2_))
            {
               addr0046:
               _loc1_.top = 22;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 1;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CitySquareEventPopup_Group6_c(),this._CitySquareEventPopup_Group7_c(),this._CitySquareEventPopup_VGroup2_c()];
                        if(_loc2_)
                        {
                           addr0095:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00a1);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _CitySquareEventPopup_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquareEventPopup_HGroup1_c(),this._CitySquareEventPopup_LocaLabel1_i()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0066);
         }
         §§goto(addr007a);
      }
      
      private function _CitySquareEventPopup_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               addr003b:
               _loc1_.width = 470;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.height = 28;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib4_c(),this._CitySquareEventPopup_BriskImageDynaLib5_c(),this._CitySquareEventPopup_BriskImageDynaLib6_c()];
                           if(_loc3_)
                           {
                              addr00be:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00ca:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00ce);
                     }
                  }
                  §§goto(addr00be);
               }
            }
            addr00ce:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               addr004f:
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0062);
               }
               §§goto(addr006e);
            }
            addr0062:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006e:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
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
               §§goto(addr0035);
            }
            §§goto(addr0056);
         }
         addr0035:
         if(_loc2_ || _loc3_)
         {
            addr0056:
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr006c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr006c);
         }
         addr0070:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!_loc2_)
               {
                  addr0044:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _CitySquareEventPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.maxHeight = 85;
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 440;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.styleName = "eventName";
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(!_loc3_)
                        {
                           _loc1_.percentWidth = 100;
                           if(_loc2_)
                           {
                              _loc1_.id = "challengeName";
                              if(_loc2_)
                              {
                                 addr008e:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr00a7);
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           addr00a7:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00b8:
                              this.challengeName = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00c2:
                                 BindingManager.executeBindings(this,"challengeName",this.challengeName);
                              }
                           }
                           §§goto(addr00cf);
                        }
                        addr00cf:
                        return _loc1_;
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00a7);
            }
            §§goto(addr008e);
         }
         §§goto(addr0064);
      }
      
      private function _CitySquareEventPopup_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 10;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0051:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0055);
            }
            §§goto(addr0051);
         }
         addr0055:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               addr0030:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.gap = 10;
                  if(!_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr00a4);
               }
            }
            addr0052:
            _loc1_.width = 470;
            if(_loc2_)
            {
               _loc1_.paddingRight = 10;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr007a);
               }
               §§goto(addr0090);
            }
            addr007a:
            _loc1_.mxmlContent = [this._CitySquareEventPopup_ChallengeBarComponent1_i(),this._CitySquareEventPopup_ChallengeBarComponent2_i()];
            if(!_loc3_)
            {
               addr0090:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00a4:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0030);
      }
      
      private function _CitySquareEventPopup_ChallengeBarComponent1_i() : ChallengeBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ChallengeBarComponent = new ChallengeBarComponent();
         if(!_loc2_)
         {
            _loc1_.width = 430;
            if(_loc3_)
            {
               _loc1_.visible = true;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.includeInLayout = true;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "barOne";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        addr0090:
                        this.barOne = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a2:
                           BindingManager.executeBindings(this,"barOne",this.barOne);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr0087);
                  }
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr0090);
         }
         §§goto(addr0087);
      }
      
      private function _CitySquareEventPopup_ChallengeBarComponent2_i() : ChallengeBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ChallengeBarComponent = new ChallengeBarComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 430;
            if(!_loc2_)
            {
               _loc1_.visible = false;
               if(_loc3_ || Boolean(this))
               {
                  addr0052:
                  _loc1_.includeInLayout = false;
                  if(!_loc2_)
                  {
                     _loc1_.id = "barTwo";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008f:
                                 this.barTwo = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"barTwo",this.barTwo);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr006e);
            }
            §§goto(addr0052);
         }
         §§goto(addr006e);
      }
      
      private function _CitySquareEventPopup_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.bottom = 10;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 207;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.focusEnabled = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.tabFocusEnabled = false;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0090:
                           _loc1_.id = "eventButton";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00c5:
                                       this.eventButton = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00d7:
                                          BindingManager.executeBindings(this,"eventButton",this.eventButton);
                                       }
                                    }
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00e4);
                  }
               }
               §§goto(addr0090);
            }
            addr00e4:
            return _loc1_;
         }
         §§goto(addr00d7);
      }
      
      private function _CitySquareEventPopup_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 0;
            if(!_loc3_)
            {
               _loc1_.top = 38;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_StickyNoteComponent1_c(),this._CitySquareEventPopup_Group9_c(),this._CitySquareEventPopup_VGroup3_c()];
                  §§goto(addr0048);
               }
               §§goto(addr0079);
            }
            addr0048:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0079:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0089);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 85;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 243;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006d:
                     _loc1_.width = 185;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr008c);
                  }
               }
               addr0090:
               return _loc1_;
            }
            §§goto(addr006d);
         }
         §§goto(addr008c);
      }
      
      private function _CitySquareEventPopup_Group9_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = 30;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib7_c(),this._CitySquareEventPopup_BriskImageDynaLib8_i()];
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
               }
               §§goto(addr0078);
            }
            §§goto(addr0074);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0074:
                     _loc1_.verticalCenter = 0;
                     if(_loc2_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr007e);
            }
            §§goto(addr0074);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_events";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalCenter = -1;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = -1;
                  if(!_loc3_)
                  {
                     _loc1_.id = "polaroidImage";
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr009b);
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00a5);
                  }
               }
               addr009b:
               this.polaroidImage = _loc1_;
               if(_loc2_)
               {
                  addr00a5:
                  BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
               }
               §§goto(addr00b2);
            }
            §§goto(addr008a);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 268;
            if(_loc2_)
            {
               §§goto(addr0049);
            }
            §§goto(addr005f);
         }
         addr0049:
         _loc1_.mxmlContent = [this._CitySquareEventPopup_LocaLabel2_i(),this._CitySquareEventPopup_HGroup2_c()];
         if(!_loc3_)
         {
            addr005f:
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
      
      private function _CitySquareEventPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr003a);
            }
            §§goto(addr0078);
         }
         addr003a:
         _loc1_.maxHeight = 85;
         if(_loc3_)
         {
            _loc1_.styleName = "eventRuntime";
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalCenter = -2;
               if(!_loc2_)
               {
                  _loc1_.width = 190;
                  if(!_loc2_)
                  {
                     addr0078:
                     _loc1_.id = "eventRuntime";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00bf);
                           }
                        }
                     }
                     addr00b5:
                     this.eventRuntime = _loc1_;
                     if(!_loc2_)
                     {
                        addr00bf:
                        BindingManager.executeBindings(this,"eventRuntime",this.eventRuntime);
                     }
                     §§goto(addr00cc);
                  }
               }
               §§goto(addr00cc);
            }
            §§goto(addr0078);
         }
         addr00cc:
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.width = 167;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_Group10_c(),this._CitySquareEventPopup_TimerBarComponent1_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0083);
               }
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _CitySquareEventPopup_Group10_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 17;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(!_loc3_)
            {
               addr002b:
               _loc1_.percentWidth = 85;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.revertFlow = true;
                  if(_loc2_)
                  {
                     _loc1_.id = "timerbar";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0075:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr007e:
                                 this.timerbar = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0090:
                                    BindingManager.executeBindings(this,"timerbar",this.timerbar);
                                 }
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0090);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _CitySquareEventPopup_Group11_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib9_c(),this._CitySquareEventPopup_HGroup3_c(),this._CitySquareEventPopup_BriskImageDynaLib10_i()];
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "bubbleGroup";
               if(_loc3_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0094:
                           this.bubbleGroup = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr00a6:
                              BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr00a6);
            }
         }
         §§goto(addr0064);
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaBmpSourceName = "bubble_large";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.top = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0073);
                     }
                  }
                  §§goto(addr0087);
               }
            }
            addr0073:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr0087:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _CitySquareEventPopup_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 57;
            if(_loc2_)
            {
               _loc1_.width = 650;
               if(!(_loc3_ && _loc3_))
               {
                  addr003c:
                  _loc1_.top = 12;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0096);
               }
               addr005b:
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr0096);
               }
               addr0078:
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  addr0096:
                  _loc1_.mxmlContent = [this._CitySquareEventPopup_LocaLabel3_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00be);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _CitySquareEventPopup_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "avatarText";
            if(!_loc3_)
            {
               addr0032:
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.maxDisplayedLines = 4;
                  if(_loc2_)
                  {
                     _loc1_.id = "eventMainText";
                     if(_loc2_ || Boolean(this))
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 this.eventMainText = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    BindingManager.executeBindings(this,"eventMainText",this.eventMainText);
                                 }
                              }
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0087);
                  }
                  addr00af:
                  return _loc1_;
               }
               §§goto(addr0087);
            }
            §§goto(addr006e);
         }
         §§goto(addr0032);
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_)
               {
                  _loc1_.left = 10;
                  var _temp_3:* = _loc2_;
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     _loc1_.top = -15;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006e:
                        _loc1_.id = "infoIcon";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr009a:
                                    this.infoIcon = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00ac:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00b9);
                           }
                        }
                        §§goto(addr009a);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr006e);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      public function ___CitySquareEventPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barOne() : ChallengeBarComponent
      {
         return this._1396253357barOne;
      }
      
      public function set barOne(param1:ChallengeBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1396253357barOne;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1396253357barOne = param1;
                  if(_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barOne",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get barTwo() : ChallengeBarComponent
      {
         return this._1396248263barTwo;
      }
      
      public function set barTwo(param1:ChallengeBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1396248263barTwo;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1396248263barTwo = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTwo",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._756762963bubbleGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleGroup",_loc2_,param1));
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
      public function get challengeName() : LocaLabel
      {
         return this._812351090challengeName;
      }
      
      public function set challengeName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._812351090challengeName;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._812351090challengeName = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0082:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeName",_loc2_,param1));
                        }
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0091:
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeProgress() : StepMarkerBarComponent
      {
         return this._1577357232challengeProgress;
      }
      
      public function set challengeProgress(param1:StepMarkerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1577357232challengeProgress;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1577357232challengeProgress = param1;
                  addr0042:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventButton() : MultistateButton
      {
         return this._378557844eventButton;
      }
      
      public function set eventButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._378557844eventButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._378557844eventButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventMainText() : LocaLabel
      {
         return this._1917266112eventMainText;
      }
      
      public function set eventMainText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1917266112eventMainText;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0040:
                  this._1917266112eventMainText = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventMainText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1835748386eventRuntime = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006c);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventRuntime",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._177606215infoIcon = param1;
                  addr0039:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2112922897polaroidImage = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
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
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerbar() : TimerBarComponent
      {
         return this._2076478802timerbar;
      }
      
      public function set timerbar(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2076478802timerbar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2076478802timerbar = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerbar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
         }
         addr0075:
      }
   }
}

