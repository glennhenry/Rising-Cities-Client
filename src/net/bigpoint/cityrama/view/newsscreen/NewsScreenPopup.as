package net.bigpoint.cityrama.view.newsscreen
{
   import com.greensock.TweenMax;
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
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.newsscreen.components.BubblePagingItemRenderer;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import net.bigpoint.cityrama.view.quest.ui.skin.BubblePagingListSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class NewsScreenPopup extends PaperPopupWindow implements IBindingClient
   {
      
      private static const SLIDE_DURATION:int = 4;
      
      private static const SLIDE_ANIMATION_DURATION:int = 1;
      
      public static const SHOW_FORUM:String = "SHOW_FORUM";
      
      public static const OPEN_LINK:String = "OPEN_LINK";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SLIDE_DURATION = 4;
         if(!(_loc2_ && _loc1_))
         {
            SLIDE_ANIMATION_DURATION = 1;
            if(!(_loc2_ && _loc1_))
            {
               SHOW_FORUM = "SHOW_FORUM";
               if(!(_loc2_ && NewsScreenPopup))
               {
                  OPEN_LINK = "OPEN_LINK";
                  addr005f:
                  if(_loc1_)
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
               §§goto(addr009f);
            }
            §§goto(addr005f);
         }
         addr009f:
         return;
      }
      §§goto(addr005f);
      
      private var _1389200807bigGfx:BriskMCDynaLib;
      
      private var _623702286bigGfxOld:BriskMCDynaLib;
      
      private var _1781625235buttonGroup:HGroup;
      
      private var _78821332buttonToForum:MultistateButton;
      
      private var _972546791buttonToLink:MultistateButton;
      
      private var _223781260detailFlavourLabel:LocaLabel;
      
      private var _1760597841detailHeadlineLabel:LocaLabel;
      
      private var _1302042186pagingList:List;
      
      private var _417762822scrollBar:VScrollBar;
      
      private var _2043238322scrollGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:NewsscreenPopupVo;
      
      private var _dataDirty:Boolean;
      
      private var _mouseIsOver:Boolean;
      
      private var _tween:TweenMax;
      
      private var _slideTween:TweenMax;
      
      private var _slideTweenOld:TweenMax;
      
      private var _headlineTween:TweenMax;
      
      private var _scrollGroupTween:TweenMax;
      
      private var _buttonGroupTween:TweenMax;
      
      private var _newIndex:int = -1;
      
      private var _oldIndex:int = -1;
      
      private var _disposing:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NewsScreenPopup()
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
         if(_loc4_ || _loc2_)
         {
            §§push(null);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     addr0051:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc3_ && _loc3_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc2_)
                              {
                                 addr0095:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    super();
                                    if(_loc4_ || Boolean(this))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          addr00d4:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._NewsScreenPopup_bindingsSetup();
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr0116:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr0158:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_newsscreen_NewsScreenPopupWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr016c:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0192:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return NewsScreenPopup[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr01b0:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01d6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr0204:
                                                                                       this.styleName = "newsScreen";
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr0211:
                                                                                          this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NewsScreenPopup_Array1_c);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.addEventListener("creationComplete",this.___NewsScreenPopup_PaperPopupWindow1_creationComplete);
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr0240:
                                                                                                this.addEventListener("rollOver",this.___NewsScreenPopup_PaperPopupWindow1_rollOver);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0252:
                                                                                                   this.addEventListener("rollOut",this.___NewsScreenPopup_PaperPopupWindow1_rollOut);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0265:
                                                                                                      i = 0;
                                                                                                      addr0263:
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
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               Binding(bindings[i]).execute();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!(_loc4_ || _loc1_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     var _temp_24:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_24;
                                                                                                                     if(!(_loc3_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   return;
                                                                                                   addr02ca:
                                                                                                }
                                                                                                §§goto(addr0263);
                                                                                             }
                                                                                             §§goto(addr02ca);
                                                                                          }
                                                                                          §§goto(addr0263);
                                                                                       }
                                                                                       §§goto(addr02ca);
                                                                                    }
                                                                                    §§goto(addr0211);
                                                                                 }
                                                                                 §§goto(addr0204);
                                                                              }
                                                                           }
                                                                           §§goto(addr0263);
                                                                        }
                                                                        §§goto(addr0265);
                                                                     }
                                                                     §§goto(addr02ca);
                                                                  }
                                                                  §§goto(addr0265);
                                                               }
                                                               §§goto(addr0240);
                                                            }
                                                            §§goto(addr0192);
                                                         }
                                                         §§goto(addr01b0);
                                                      }
                                                      §§goto(addr0158);
                                                   }
                                                   §§goto(addr0240);
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr016c);
                                          }
                                          §§goto(addr0265);
                                       }
                                       §§goto(addr01d6);
                                    }
                                    §§goto(addr0252);
                                 }
                                 §§goto(addr02ca);
                              }
                              §§goto(addr01b0);
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr0158);
               }
               §§goto(addr0204);
            }
            §§goto(addr0051);
         }
         §§goto(addr0116);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            NewsScreenPopup._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr004d);
         }
         addr0037:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr004d:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.buttonToForum.label = LocaUtils.getString("rcl.newsscreens.layer","rcl.newsscreens.layer.button.toForum.capital");
            if(!(_loc2_ && _loc3_))
            {
               addr0045:
               this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemoveHandler);
            }
            return;
         }
         §§goto(addr0045);
      }
      
      public function setData(param1:NewsscreenPopupVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  addr003a:
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._dataDirty = true;
                     if(_loc2_)
                     {
                        addr004e:
                        invalidateProperties();
                     }
                     §§goto(addr0053);
                  }
               }
               §§goto(addr004e);
            }
            addr0053:
            return;
         }
         §§goto(addr003a);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:int = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:NewsScreenSlideVo = null;
         if(!_loc8_)
         {
            super.commitProperties();
            if(!_loc8_)
            {
               if(this._dataDirty)
               {
                  if(_loc7_)
                  {
                     addr0046:
                     this._dataDirty = false;
                  }
                  addr004b:
                  _loc2_ = new ArrayCollection();
                  _loc3_ = new ArrayCollection();
                  for each(_loc4_ in this._data.slides)
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc2_.addItem(++_loc1_);
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           _loc3_.addItem(_loc4_);
                        }
                     }
                  }
                  if(_loc7_ || Boolean(this))
                  {
                     this.pagingList.dataProvider = _loc2_;
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        this.pagingList.selectedIndex = 0;
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           if(this._data.slides.length > 1)
                           {
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 addr0114:
                                 this.scrollGroup.maxHeight = 65;
                                 if(!(_loc8_ && Boolean(_loc1_)))
                                 {
                                    this.scrollGroup.height = 65;
                                    if(_loc7_)
                                    {
                                       this._tween = TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          addr01a0:
                                          this.displaySlide();
                                       }
                                    }
                                    else
                                    {
                                       addr0192:
                                       this.scrollGroup.height = 80;
                                       if(!_loc8_)
                                       {
                                          §§goto(addr01a0);
                                       }
                                    }
                                    §§goto(addr01a6);
                                 }
                                 else
                                 {
                                    addr0183:
                                    this.scrollGroup.maxHeight = 80;
                                    if(!_loc8_)
                                    {
                                       §§goto(addr0192);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              this.pagingList.visible = this.pagingList.includeInLayout = false;
                              if(!_loc8_)
                              {
                                 §§goto(addr0183);
                              }
                           }
                           §§goto(addr01a0);
                        }
                     }
                     §§goto(addr0114);
                  }
               }
               addr01a6:
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr004b);
      }
      
      private function handlePagingChanged(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._disposing)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return;
               }
               §§goto(addr0085);
            }
            else
            {
               TweenMax.killDelayedCallsTo(this.changeSlide);
               if(!(_loc2_ && Boolean(param1)))
               {
                  if(param1)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0075:
                        this._newIndex = this.pagingList.selectedIndex;
                        if(!_loc2_)
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr0098);
                     }
                  }
                  addr0085:
                  this.displaySlide();
                  if(_loc3_ || Boolean(this))
                  {
                     addr0098:
                     this._tween = TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
                  }
                  return;
               }
               §§goto(addr0075);
            }
            §§goto(addr0098);
         }
         §§goto(addr0075);
      }
      
      private function changeSlide() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(this._disposing);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return;
                  }
                  addr00cf:
                  this.handlePagingChanged();
               }
               else
               {
                  addr0036:
                  if(!this._mouseIsOver)
                  {
                     if(!_loc3_)
                     {
                        this._newIndex = this.pagingList.selectedIndex + 1;
                        if(_loc4_)
                        {
                           if(this.pagingList.selectedIndex < this._data.slides.length - 1)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 var _loc1_:* = this.pagingList;
                                 var _loc2_:* = _loc1_.selectedIndex + 1;
                                 if(!_loc3_)
                                 {
                                    _loc1_.selectedIndex = _loc2_;
                                 }
                                 if(_loc4_ || Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           else
                           {
                              this.pagingList.selectedIndex = 0;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00cf);
                              }
                           }
                           §§goto(addr00d5);
                        }
                     }
                     §§goto(addr00cf);
                  }
               }
               addr00d5:
               return;
            }
            §§goto(addr0036);
         }
         §§goto(addr00cf);
      }
      
      private function displaySlide() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         if(_loc3_)
         {
            §§push(this._disposing);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     return;
                  }
                  addr03e2:
                  §§push(this._scrollGroupTween);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0409:
                           this._scrollGroupTween.kill();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr041b:
                              this.scrollGroup.alpha = 1;
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr0432:
                                 this._scrollGroupTween = TweenMax.to(this.scrollGroup,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
                                 if(_loc3_)
                                 {
                                    addr0452:
                                    §§push(this._headlineTween);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr0471:
                                             this._headlineTween.kill();
                                             addr046d:
                                             if(!(_loc4_ && Boolean(_loc1_)))
                                             {
                                                addr0483:
                                                this.detailHeadlineLabel.alpha = 1;
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   addr0499:
                                                   this._headlineTween = TweenMax.to(this.detailHeadlineLabel,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
                                                   if(_loc3_)
                                                   {
                                                      addr04b9:
                                                      §§push(this._buttonGroupTween);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr04d9:
                                                               this._buttonGroupTween.kill();
                                                               addr04d5:
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr04eb);
                                                               }
                                                               §§goto(addr04f9);
                                                            }
                                                            §§goto(addr0535);
                                                         }
                                                         addr04eb:
                                                         this.buttonGroup.alpha = 1;
                                                         if(_loc3_)
                                                         {
                                                            this._buttonGroupTween = TweenMax.to(this.buttonGroup,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
                                                            addr04f9:
                                                            if(_loc3_)
                                                            {
                                                            }
                                                            addr0535:
                                                            this._oldIndex = this.pagingList.selectedIndex;
                                                         }
                                                         §§goto(addr0540);
                                                      }
                                                      §§goto(addr04d9);
                                                   }
                                                   §§goto(addr04d5);
                                                }
                                             }
                                          }
                                          §§goto(addr04b9);
                                       }
                                       §§goto(addr0483);
                                    }
                                    §§goto(addr0471);
                                 }
                                 §§goto(addr0499);
                              }
                              §§goto(addr04b9);
                           }
                           §§goto(addr0535);
                        }
                        §§goto(addr0432);
                     }
                     §§goto(addr041b);
                  }
                  §§goto(addr0409);
               }
               else
               {
                  §§push(this._oldIndex);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(-1);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           addr0063:
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              var _temp_12:* = §§pop();
                              §§push(_temp_12);
                              §§push(_temp_12);
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(this._data);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop().slides.length > 1);
                                             if(!_loc4_)
                                             {
                                                addr00a9:
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.bigGfxOld);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(this.bigGfx);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(§§pop().dynaLibName);
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§pop().dynaLibName = §§pop();
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.bigGfxOld);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr00fd:
                                                                     §§pop().dynaMCSourceName = this.bigGfx.dynaMCSourceName;
                                                                     addr00fa:
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this._slideTweenOld);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr011c:
                                                                                 this._slideTweenOld.kill();
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr012d:
                                                                                    §§push(this.bigGfxOld);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0137:
                                                                                       §§pop().x = 0;
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push(this._oldIndex);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(this._newIndex);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      addr0175:
                                                                                                      §§push(-724);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            addr01b8:
                                                                                                            var _temp_23:* = this.bigGfxOld;
                                                                                                            var _loc2_:Boolean;
                                                                                                            this.bigGfxOld.includeInLayout = _loc2_ = true;
                                                                                                            _temp_23.visible = _loc2_;
                                                                                                            addr01b4:
                                                                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               this._slideTweenOld = TweenMax.to(this.bigGfxOld,SLIDE_ANIMATION_DURATION,{"x":_loc1_});
                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr01f9:
                                                                                                                  §§push(this.bigGfx);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().dynaLibName = this._data.slides[this.pagingList.selectedIndex].gfxId.toString();
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(this.bigGfx);
                                                                                                                        if(_loc3_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr023c:
                                                                                                                           §§push("news");
                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + this._data.slides[this.pagingList.selectedIndex].gfxId);
                                                                                                                           }
                                                                                                                           §§pop().dynaMCSourceName = §§pop();
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this._oldIndex);
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(-1);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr029d:
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       if(_loc3_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr02ab:
                                                                                                                                          var _temp_32:* = §§pop();
                                                                                                                                          addr02ac:
                                                                                                                                          §§push(_temp_32);
                                                                                                                                          if(_temp_32)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                addr02bd:
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr02cf);
                                                                                                                                                }
                                                                                                                                                §§goto(addr032c);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr02cf:
                                                                                                                                       addr02c7:
                                                                                                                                       if(this._data.slides.length > 1)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.bigGfx);
                                                                                                                                             if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                             {
                                                                                                                                                §§push(this.bigGfx);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().dynaLibName);
                                                                                                                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                   {
                                                                                                                                                      §§pop().dynaLibName = §§pop();
                                                                                                                                                      if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.bigGfx);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr0323:
                                                                                                                                                            §§pop().dynaMCSourceName = this.bigGfx.dynaMCSourceName;
                                                                                                                                                            addr0320:
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr032c:
                                                                                                                                                               §§push(this._slideTween);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr034a:
                                                                                                                                                                        this._slideTween.kill();
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0354:
                                                                                                                                                                           addr035c:
                                                                                                                                                                           addr0358:
                                                                                                                                                                           if(this._oldIndex < this._newIndex)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr036d:
                                                                                                                                                                                 §§push(this.bigGfx);
                                                                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr037f:
                                                                                                                                                                                    §§push(724);
                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03bc:
                                                                                                                                                                                          this._slideTween = TweenMax.to(this.bigGfx,SLIDE_ANIMATION_DURATION,{
                                                                                                                                                                                             "x":0,
                                                                                                                                                                                             "onComplete":this.slideAnimationCompleted
                                                                                                                                                                                          });
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr03e2);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0432);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0483);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03ac:
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr03bc);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0535);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03a6:
                                                                                                                                                                                    §§push(-724);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03ac);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0483);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.bigGfx);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03a6);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03bc);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04f9);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0354);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr034a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr046d);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr037f);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr041b);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0323);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0320);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03a6);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0432);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.setTexts();
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0535);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0540);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02bd);
                                                                                                                                 }
                                                                                                                                 §§goto(addr035c);
                                                                                                                              }
                                                                                                                              §§goto(addr0358);
                                                                                                                           }
                                                                                                                           §§goto(addr03bc);
                                                                                                                        }
                                                                                                                        §§goto(addr037f);
                                                                                                                     }
                                                                                                                     §§goto(addr0452);
                                                                                                                  }
                                                                                                                  §§goto(addr023c);
                                                                                                               }
                                                                                                               addr0540:
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr03bc);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr01a5:
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§goto(addr01b4);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr04eb);
                                                                                                   }
                                                                                                   §§goto(addr01b4);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(724);
                                                                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      §§goto(addr01a5);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0358);
                                                                                             }
                                                                                             §§goto(addr035c);
                                                                                          }
                                                                                          §§goto(addr01a5);
                                                                                       }
                                                                                       §§goto(addr04d5);
                                                                                    }
                                                                                    §§goto(addr01b8);
                                                                                 }
                                                                                 §§goto(addr036d);
                                                                              }
                                                                              §§goto(addr041b);
                                                                           }
                                                                           §§goto(addr012d);
                                                                        }
                                                                        §§goto(addr011c);
                                                                     }
                                                                     §§goto(addr0535);
                                                                  }
                                                                  §§goto(addr0137);
                                                               }
                                                               §§goto(addr046d);
                                                            }
                                                            §§goto(addr00fd);
                                                         }
                                                         §§goto(addr00fa);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr0535);
                                                }
                                                §§goto(addr01f9);
                                             }
                                             §§goto(addr029d);
                                          }
                                          §§goto(addr02c7);
                                       }
                                       §§goto(addr0175);
                                    }
                                    §§goto(addr02ab);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr02ac);
                           }
                           §§goto(addr02bd);
                        }
                        §§goto(addr029d);
                     }
                     §§goto(addr035c);
                  }
                  §§goto(addr01a5);
               }
               §§goto(addr04eb);
            }
            §§goto(addr0063);
         }
         §§goto(addr0354);
      }
      
      private function setTexts() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(§§findproperty(title));
            §§push(LocaUtils);
            §§push("rcl.newsscreens");
            §§push("rcl.newsscreens.");
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + this._data.slides[this.pagingList.selectedIndex].localeId);
               if(_loc1_ || _loc2_)
               {
                  addr004f:
                  §§push(§§pop() + ".title.capital");
               }
               §§pop().title = §§pop().getString(§§pop(),§§pop());
               if(_loc1_ || Boolean(this))
               {
                  §§push(this.detailHeadlineLabel);
                  §§push(LocaUtils);
                  §§push("rcl.newsscreens");
                  §§push("rcl.newsscreens.");
                  if(_loc1_)
                  {
                     §§push(§§pop() + this._data.slides[this.pagingList.selectedIndex].localeId);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop() + ".header");
                     }
                  }
                  §§pop().text = §§pop().getString(§§pop(),§§pop());
                  if(_loc1_)
                  {
                     §§push(this.detailFlavourLabel);
                     §§push(LocaUtils);
                     §§push("rcl.newsscreens");
                     §§push("rcl.newsscreens.");
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(§§pop() + this._data.slides[this.pagingList.selectedIndex].localeId);
                        if(_loc1_)
                        {
                           §§push(§§pop() + ".flavour");
                        }
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     if(_loc1_)
                     {
                        addr00f4:
                        §§push(this.buttonToLink);
                        §§push(LocaUtils);
                        §§push("rcl.newsscreens.layer");
                        §§push("rcl.newsscreens.layer.button.");
                        if(_loc1_ || _loc1_)
                        {
                           §§push(§§pop() + this._data.slides[this.pagingList.selectedIndex].buttonLabelIdentifier);
                           if(_loc1_ || _loc1_)
                           {
                              addr013c:
                              §§push(§§pop() + ".capital");
                           }
                           §§pop().label = §§pop().getString(§§pop(),§§pop());
                           §§goto(addr0146);
                        }
                        §§goto(addr013c);
                     }
                  }
                  addr0146:
                  return;
               }
               §§goto(addr00f4);
            }
            §§goto(addr004f);
         }
         §§goto(addr00f4);
      }
      
      private function slideAnimationCompleted() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            var _temp_1:* = this.bigGfxOld;
            var _loc1_:Boolean;
            this.bigGfxOld.includeInLayout = _loc1_ = false;
            _temp_1.visible = _loc1_;
            if(_loc2_)
            {
               this.setTexts();
               if(!(_loc3_ && _loc2_))
               {
                  this.scrollGroup.alpha = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.detailHeadlineLabel.alpha = 0;
                     if(_loc2_ || _loc1_)
                     {
                        addr006b:
                        this.buttonGroup.alpha = 0;
                        if(!(_loc3_ && _loc3_))
                        {
                           this.scrollBar.value = 0;
                           if(!_loc3_)
                           {
                              §§push(this._scrollGroupTween);
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr00c3);
                              }
                              addr00a5:
                              this._scrollGroupTween.kill();
                              §§goto(addr00a1);
                           }
                           §§goto(addr0170);
                        }
                        addr00a1:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00c3:
                           this._scrollGroupTween = TweenMax.to(this.scrollGroup,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00eb:
                              §§push(this._headlineTween);
                              if(_loc2_ || Boolean(this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§goto(addr0111);
                                    }
                                 }
                                 §§goto(addr0122);
                              }
                              addr0111:
                              this._headlineTween.kill();
                              §§goto(addr010d);
                           }
                        }
                        §§goto(addr010d);
                     }
                     §§goto(addr0170);
                  }
                  §§goto(addr0122);
               }
               addr010d:
               if(_loc2_ || _loc2_)
               {
                  addr0122:
                  this._headlineTween = TweenMax.to(this.detailHeadlineLabel,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
                  if(_loc2_ || _loc1_)
                  {
                     addr014a:
                     §§push(this._buttonGroupTween);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr0174:
                              this._buttonGroupTween.kill();
                              addr0170:
                              if(!_loc3_)
                              {
                                 addr017d:
                                 this._buttonGroupTween = TweenMax.to(this.buttonGroup,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
                              }
                           }
                           §§goto(addr0198);
                        }
                        §§goto(addr017d);
                     }
                     §§goto(addr0174);
                  }
                  §§goto(addr0170);
               }
               addr0198:
               return;
            }
            §§goto(addr00eb);
         }
         §§goto(addr006b);
      }
      
      private function handleRemoved() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            TweenMax.killDelayedCallsTo(this.changeSlide);
            if(_loc1_ || Boolean(this))
            {
               addr003e:
               this._tween = null;
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function overHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._mouseIsOver = true;
            if(!(_loc3_ && _loc3_))
            {
               addr0040:
               §§push(this._tween);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0056:
                        this._tween.pause();
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
            addr005a:
            return;
         }
         §§goto(addr0040);
      }
      
      private function outHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._mouseIsOver = false;
            if(!_loc3_)
            {
               §§push(this._tween);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr005a:
                        this._tween.resume();
                        addr0056:
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005a);
            }
            addr005e:
            return;
         }
         §§goto(addr0056);
      }
      
      private function onForumClicked(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(SHOW_FORUM));
         }
      }
      
      private function onLinkButtonClicked(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new ItemClickEvent(OPEN_LINK,false,false,null,this.pagingList.selectedIndex));
         }
      }
      
      private function onRemoveHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._disposing = true;
            if(_loc3_ || _loc2_)
            {
               §§push(this._tween);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr003f:
                        this._tween.kill();
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0050);
                        }
                        §§goto(addr0115);
                     }
                     §§goto(addr00c9);
                  }
                  addr0050:
                  §§push(this._slideTween);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0066);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr006f);
                  }
                  addr0066:
                  this._slideTween.kill();
                  if(_loc3_)
                  {
                     addr006f:
                     §§push(this._slideTweenOld);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              addr0099:
                              this._slideTweenOld.kill();
                              if(_loc3_)
                              {
                                 addr00a2:
                                 §§push(this._scrollGroupTween);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr00c0:
                                          this._scrollGroupTween.kill();
                                          addr00bc:
                                          if(_loc3_)
                                          {
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr0103);
                                       }
                                    }
                                    addr00c9:
                                    §§push(this._headlineTween);
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§goto(addr00f2);
                                          }
                                       }
                                       §§goto(addr0103);
                                    }
                                    addr00f2:
                                    this._headlineTween.kill();
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       addr0103:
                                       §§push(this._buttonGroupTween);
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr0119:
                                                this._buttonGroupTween.kill();
                                                addr0115:
                                             }
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr0119);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0099);
                  }
                  addr011d:
                  return;
               }
               §§goto(addr003f);
            }
         }
         §§goto(addr0103);
      }
      
      private function _NewsScreenPopup_Array1_c() : Array
      {
         return [this._NewsScreenPopup_Group1_c()];
      }
      
      private function _NewsScreenPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0042:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup1_c()];
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr0042);
      }
      
      private function _NewsScreenPopup_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0094);
            }
            addr0047:
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._NewsScreenPopup_Group2_c(),this._NewsScreenPopup_Group3_c(),this._NewsScreenPopup_HGroup2_i()];
                  if(!_loc3_)
                  {
                     addr0094:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0094);
      }
      
      private function _NewsScreenPopup_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 724;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 190;
               if(!_loc2_)
               {
                  _loc1_.clipAndEnableScrolling = true;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._NewsScreenPopup_BriskMCDynaLib1_i(),this._NewsScreenPopup_BriskMCDynaLib2_i()];
                     if(!_loc2_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0084:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0078);
               }
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _NewsScreenPopup_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.addEventListener("click",this.__bigGfx_click);
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "bigGfx";
               if(_loc2_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr0078);
            }
            addr0059:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0065:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr0078);
               }
            }
            addr006e:
            this.bigGfx = _loc1_;
            if(!_loc3_)
            {
               addr0078:
               BindingManager.executeBindings(this,"bigGfx",this.bigGfx);
            }
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      public function __bigGfx_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onLinkButtonClicked(param1);
         }
      }
      
      private function _NewsScreenPopup_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(_loc3_)
               {
                  §§goto(addr0045);
               }
               §§goto(addr0050);
            }
            addr0045:
            _loc1_.id = "bigGfxOld";
            if(_loc3_)
            {
               addr0050:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0079:
                        this.bigGfxOld = _loc1_;
                        if(!_loc2_)
                        {
                           addr0083:
                           BindingManager.executeBindings(this,"bigGfxOld",this.bigGfxOld);
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0079);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _NewsScreenPopup_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr0044:
               _loc1_.height = 125;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._NewsScreenPopup_Rect1_c(),this._NewsScreenPopup_Rect2_c(),this._NewsScreenPopup_VGroup2_c()];
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0093);
         }
         §§goto(addr0044);
      }
      
      private function _NewsScreenPopup_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.bottom = 7;
                  if(!_loc3_)
                  {
                     _loc1_.fill = this._NewsScreenPopup_SolidColor1_c();
                     if(_loc2_ || _loc3_)
                     {
                        addr007f:
                        _loc1_.initialized(this,null);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007f);
            }
            addr0086:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _NewsScreenPopup_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(!_loc2_)
         {
            _loc1_.color = 16777215;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Rect2_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 2;
                  if(!_loc2_)
                  {
                     _loc1_.left = 2;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.right = 2;
                        if(_loc3_)
                        {
                           addr008d:
                           _loc1_.bottom = 9;
                           if(!_loc2_)
                           {
                              §§goto(addr0098);
                           }
                           §§goto(addr00af);
                        }
                     }
                     addr0098:
                     _loc1_.fill = this._NewsScreenPopup_LinearGradient1_c();
                     if(_loc3_ || _loc3_)
                     {
                        addr00af:
                        _loc1_.initialized(this,null);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00af);
               }
               addr00b6:
               return _loc1_;
            }
            §§goto(addr00af);
         }
         §§goto(addr008d);
      }
      
      private function _NewsScreenPopup_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(!_loc2_)
         {
            _loc1_.rotation = 90;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.entries = [this._NewsScreenPopup_GradientEntry1_c(),this._NewsScreenPopup_GradientEntry2_c()];
            }
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc3_)
         {
            _loc1_.color = 16513776;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_GradientEntry2_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.color = 14999501;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._NewsScreenPopup_Group4_c(),this._NewsScreenPopup_Group5_c()];
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
               if(_loc2_ || Boolean(this))
               {
                  addr007d:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _NewsScreenPopup_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.minHeight = 10;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._NewsScreenPopup_List1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0063);
               }
               §§goto(addr006f);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006f:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0073);
         }
         addr0073:
         return _loc1_;
      }
      
      private function _NewsScreenPopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.itemRenderer = this._NewsScreenPopup_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.selectedIndex = 0;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 25;
                     if(!_loc2_)
                     {
                        _loc1_.setStyle("skinClass",BubblePagingListSkin);
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("change",this.__pagingList_change);
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.id = "pagingList";
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00b5:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00be:
                                          this.pagingList = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00c8:
                                             BindingManager.executeBindings(this,"pagingList",this.pagingList);
                                          }
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00be);
                              }
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00b5);
               }
               addr00d5:
               return _loc1_;
            }
         }
         §§goto(addr00c8);
      }
      
      private function _NewsScreenPopup_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = BubblePagingItemRenderer;
         }
         return _loc1_;
      }
      
      public function __pagingList_change(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handlePagingChanged(param1);
         }
      }
      
      private function _NewsScreenPopup_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._NewsScreenPopup_HGroup1_c(),this._NewsScreenPopup_VScrollBar1_i(),this._NewsScreenPopup_BriskImageDynaLib1_c()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0073:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0087:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _NewsScreenPopup_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup3_c()];
                  if(_loc3_)
                  {
                     §§goto(addr0062);
                  }
               }
               §§goto(addr006e);
            }
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
      
      private function _NewsScreenPopup_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.width = 605;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.gap = 2;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._NewsScreenPopup_LocaLabel1_i(),this._NewsScreenPopup_Group6_c(),this._NewsScreenPopup_Group7_i()];
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr008f);
                  }
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0093);
               }
            }
         }
         addr0093:
         return _loc1_;
      }
      
      private function _NewsScreenPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "blueThirteenCenter";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.maxWidth = 605;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "detailHeadlineLabel";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0095:
                                 this.detailHeadlineLabel = _loc1_;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"detailHeadlineLabel",this.detailHeadlineLabel);
                                 }
                              }
                              §§goto(addr00b4);
                           }
                        }
                        §§goto(addr0095);
                     }
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0095);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               addr0046:
               _loc1_.height = 4;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._NewsScreenPopup_Line1_c(),this._NewsScreenPopup_Line2_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr008f);
               }
               addr007b:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr008f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0093);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _NewsScreenPopup_Line1_c() : Line
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Line = new Line();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.xFrom = 0;
            if(!_loc2_)
            {
               _loc1_.yFrom = 1;
               if(_loc3_)
               {
                  addr004b:
                  _loc1_.xTo = 600;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.yTo = 1;
                     if(_loc3_)
                     {
                        _loc1_.stroke = this._NewsScreenPopup_SolidColorStroke1_c();
                        if(!_loc2_)
                        {
                           addr0085:
                           _loc1_.initialized(this,null);
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr004b);
         }
         §§goto(addr0085);
      }
      
      private function _NewsScreenPopup_SolidColorStroke1_c() : SolidColorStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc3_)
         {
            _loc1_.color = 12171707;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Line2_c() : Line
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Line = new Line();
         if(_loc2_)
         {
            _loc1_.xFrom = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.yFrom = 2;
               if(!_loc3_)
               {
                  _loc1_.xTo = 600;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr006e:
                     _loc1_.yTo = 2;
                     if(_loc2_)
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr0088);
                  }
                  addr0079:
                  _loc1_.stroke = this._NewsScreenPopup_SolidColorStroke2_c();
                  if(_loc2_)
                  {
                     addr0088:
                     _loc1_.initialized(this,null);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006e);
         }
         §§goto(addr0088);
      }
      
      private function _NewsScreenPopup_SolidColorStroke2_c() : SolidColorStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc3_)
         {
            _loc1_.color = 16711673;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group7_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.clipAndEnableScrolling = true;
            if(_loc3_)
            {
               _loc1_.maxHeight = 65;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.height = 65;
                  if(!_loc2_)
                  {
                     _loc1_.width = 605;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup4_c()];
                        if(!_loc2_)
                        {
                           _loc1_.id = "scrollGroup";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008d:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr0099:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00a2);
                                    }
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr0099);
                     }
                     addr00a2:
                     this.scrollGroup = _loc1_;
                     if(_loc3_)
                     {
                        addr00ac:
                        BindingManager.executeBindings(this,"scrollGroup",this.scrollGroup);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr008d);
            }
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._NewsScreenPopup_LocaLabel2_i(),this._NewsScreenPopup_Group8_c()];
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _NewsScreenPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "greyElevenCenter";
            if(_loc3_)
            {
               _loc1_.maxWidth = 605;
               if(!_loc2_)
               {
                  _loc1_.id = "detailFlavourLabel";
                  if(_loc3_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007d:
                              this.detailFlavourLabel = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"detailFlavourLabel",this.detailFlavourLabel);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr008f);
                        }
                        addr009c:
                        return _loc1_;
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0074);
               }
            }
         }
         §§goto(addr0054);
      }
      
      private function _NewsScreenPopup_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 10;
            if(!_loc2_)
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
      
      private function _NewsScreenPopup_VScrollBar1_i() : VScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VScrollBar = new VScrollBar();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.right = 7;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "slimVScrollBar";
                  if(!_loc2_)
                  {
                     _loc1_.id = "scrollBar";
                     if(_loc3_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0093:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009c:
                                 this.scrollBar = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"scrollBar",this.scrollBar);
                                 }
                              }
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0073);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr00ae);
      }
      
      private function _NewsScreenPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_newsScreenPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "shadow_bottom";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0066:
                     _loc1_.bottom = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0071);
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0066);
            }
            addr0071:
            if(!_loc1_.document)
            {
               if(!_loc3_)
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
      
      private function _NewsScreenPopup_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 55;
            if(_loc3_ || _loc3_)
            {
               addr003a:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0069:
                     _loc1_.mxmlContent = [this._NewsScreenPopup_MultistateButton1_i(),this._NewsScreenPopup_MultistateButton2_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "buttonGroup";
                        if(!_loc2_)
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00c4:
                                    this.buttonGroup = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00d6:
                                       BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00d6);
                           }
                        }
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0069);
            }
            §§goto(addr0092);
         }
         §§goto(addr003a);
      }
      
      private function _NewsScreenPopup_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 185;
            if(!_loc2_)
            {
               _loc1_.addEventListener("click",this.__buttonToForum_click);
               if(_loc3_)
               {
                  _loc1_.id = "buttonToForum";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr005e:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr007c:
                              this.buttonToForum = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 BindingManager.executeBindings(this,"buttonToForum",this.buttonToForum);
                              }
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr005e);
            }
            §§goto(addr007c);
         }
         addr009b:
         return _loc1_;
      }
      
      public function __buttonToForum_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.onForumClicked(param1);
         }
      }
      
      private function _NewsScreenPopup_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 185;
            if(_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr00a6);
         }
         addr0032:
         _loc1_.addEventListener("click",this.__buttonToLink_click);
         if(_loc2_)
         {
            _loc1_.id = "buttonToLink";
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0094);
                     }
                     §§goto(addr00a6);
                  }
               }
            }
         }
         addr0094:
         this.buttonToLink = _loc1_;
         if(!(_loc3_ && Boolean(this)))
         {
            addr00a6:
            BindingManager.executeBindings(this,"buttonToLink",this.buttonToLink);
         }
         return _loc1_;
      }
      
      public function __buttonToLink_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.onLinkButtonClicked(param1);
         }
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.overHandler(param1);
         }
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.outHandler(param1);
         }
      }
      
      private function _NewsScreenPopup_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_)
         {
            _loc1_[0] = new Binding(this,null,null,"scrollBar.viewport","scrollGroup");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bigGfx() : BriskMCDynaLib
      {
         return this._1389200807bigGfx;
      }
      
      public function set bigGfx(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1389200807bigGfx;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1389200807bigGfx = param1;
                  if(_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get bigGfxOld() : BriskMCDynaLib
      {
         return this._623702286bigGfxOld;
      }
      
      public function set bigGfxOld(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._623702286bigGfxOld;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._623702286bigGfxOld = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigGfxOld",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0068);
            }
         }
         addr008f:
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGroup() : HGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1781625235buttonGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1781625235buttonGroup = param1;
                  if(!_loc3_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonToForum() : MultistateButton
      {
         return this._78821332buttonToForum;
      }
      
      public function set buttonToForum(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._78821332buttonToForum;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._78821332buttonToForum = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonToForum",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonToLink() : MultistateButton
      {
         return this._972546791buttonToLink;
      }
      
      public function set buttonToLink(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._972546791buttonToLink;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._972546791buttonToLink = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonToLink",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get detailFlavourLabel() : LocaLabel
      {
         return this._223781260detailFlavourLabel;
      }
      
      public function set detailFlavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._223781260detailFlavourLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._223781260detailFlavourLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailFlavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr005f);
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get detailHeadlineLabel() : LocaLabel
      {
         return this._1760597841detailHeadlineLabel;
      }
      
      public function set detailHeadlineLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1760597841detailHeadlineLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1760597841detailHeadlineLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailHeadlineLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingList() : List
      {
         return this._1302042186pagingList;
      }
      
      public function set pagingList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1302042186pagingList;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1302042186pagingList = param1;
                  if(_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingList",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr004f);
               }
            }
            addr005e:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollBar() : VScrollBar
      {
         return this._417762822scrollBar;
      }
      
      public function set scrollBar(param1:VScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._417762822scrollBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._417762822scrollBar = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollGroup() : Group
      {
         return this._2043238322scrollGroup;
      }
      
      public function set scrollGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2043238322scrollGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2043238322scrollGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
   }
}

