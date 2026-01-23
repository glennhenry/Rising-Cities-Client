package net.bigpoint.cityrama.view.miniLayer.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.shopBook.ui.components.NumericStepperComponent;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CitySquareDepositItemRenderer extends ItemRenderer
   {
      
      public static const PLUS_CLICKED_FOR_MARKET:String = "PLUS_CLICKED_FOR_MARKET";
      
      public static const PLUS_CLICKED_FOR_REBUY:String = "PLUS_CLICKED_FOR_REBUY";
      
      public static const VALUE_CHANGED:String = "VALUE_CHANGED";
      
      public static const KEY_ENTER:String = "KEY_ENTER";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         PLUS_CLICKED_FOR_MARKET = "PLUS_CLICKED_FOR_MARKET";
         if(_loc2_)
         {
            PLUS_CLICKED_FOR_REBUY = "PLUS_CLICKED_FOR_REBUY";
            if(_loc2_ || _loc1_)
            {
               addr004e:
               VALUE_CHANGED = "VALUE_CHANGED";
               if(!_loc1_)
               {
                  KEY_ENTER = "KEY_ENTER";
               }
            }
         }
         return;
      }
      §§goto(addr004e);
      
      private var _985912867depositPlayerstockLabel:LocaLabel;
      
      private var _1345056391goodCardBoard:BriskImageDynaLib;
      
      private var _1354855362goodGroup:Group;
      
      private var _405102819goodIconBriskImageDynaLib:BriskImageDynaLib;
      
      private var _1358953527goodLabel:LocaLabel;
      
      private var _884864252numericStepper:NumericStepperComponent;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EventChallengeStepDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      public function CitySquareDepositItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  addr0049:
                  this.autoDrawBackground = false;
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007b);
               }
               addr0065:
               this.height = 135;
               if(_loc1_)
               {
                  this.width = 320;
                  if(_loc1_)
                  {
                     addr007b:
                     this.mxmlContent = [this._CitySquareDepositItemRenderer_StickyNoteComponent1_c(),this._CitySquareDepositItemRenderer_VGroup1_c(),this._CitySquareDepositItemRenderer_Group2_i()];
                  }
               }
               return;
            }
         }
         §§goto(addr0049);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr003b);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr003b:
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = 0;
         if(!_loc3_)
         {
            super.commitProperties();
            if(_loc4_ || _loc3_)
            {
               §§push(this._data);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§push(this._dataIsDirty);
                              if(!_loc3_)
                              {
                                 addr006a:
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0070);
                                 }
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr0398);
                        }
                        §§goto(addr006a);
                     }
                  }
                  addr0070:
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr0082:
                        this._dataIsDirty = false;
                        if(!_loc3_)
                        {
                           §§push(this._data);
                           if(_loc4_ || Boolean(this))
                           {
                              addr00a1:
                              addr009e:
                              if(§§pop().targetGoodIsEventGood)
                              {
                                 if(_loc4_ || Boolean(_loc1_))
                                 {
                                    §§push(this.goodCardBoard);
                                    if(_loc4_)
                                    {
                                       §§push("eventgood_cardBoard_small");
                                       if(_loc4_)
                                       {
                                          §§pop().dynaBmpSourceName = §§pop();
                                          if(!_loc3_)
                                          {
                                             §§push(this.goodIconBriskImageDynaLib);
                                             if(!_loc3_)
                                             {
                                                §§push(this._data);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(§§pop().currentEventGfxId);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§pop().dynaSWFFileName = §§pop().toString();
                                                      if(!_loc3_)
                                                      {
                                                         addr0105:
                                                         §§push(this.goodIconBriskImageDynaLib);
                                                         if(_loc4_)
                                                         {
                                                            addr0116:
                                                            addr0113:
                                                            §§push(this._data.currentEventGfxId + "_gui_resources_icons");
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().dynaLibName = §§pop();
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§push(this.goodIconBriskImageDynaLib);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push("ressource_");
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(this._data);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().gfxId);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr016a:
                                                                                 §§push("_medium");
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0190:
                                                                                          §§push(this.goodLabel);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(LocaUtils);
                                                                                             §§push("rcl.citysquarequests.");
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() + this._data.currentEventLocaleId);
                                                                                             }
                                                                                             §§push("rcl.citysquarequests.");
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(this._data);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop().currentEventLocaleId);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + ".goods.goodname.");
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            addr01e4:
                                                                                                            addr01eb:
                                                                                                            addr01e8:
                                                                                                            §§push(§§pop() + this._data.localeId);
                                                                                                         }
                                                                                                         §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            §§pop().text = §§pop();
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(this.plusIcon);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.plusIcon);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(_loc4_ || Boolean(this))
                                                                                                                     {
                                                                                                                        var _temp_20:* = §§pop();
                                                                                                                        §§push(_temp_20);
                                                                                                                        §§push(_temp_20);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           var _loc2_:* = §§pop();
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                       if(_loc4_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr037f:
                                                                                                                                          this.depositPlayerstockLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.playerStock);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0398:
                                                                                                                                             addr039c:
                                                                                                                                             §§push(this._data.eventStockTarget);
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop() - this._data.eventStock));
                                                                                                                                                if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr03d8);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03de);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr03d8:
                                                                                                                                             _loc1_ = Math.min(_loc1_,this._data.playerStock);
                                                                                                                                             addr03c9:
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr03de:
                                                                                                                                                §§push(this.numericStepper);
                                                                                                                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   if(!(_loc3_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§push(this._data.playerStock);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() > 0)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(!(_loc3_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  addr043a:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr0446:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().setMaxMin(§§pop(),§§pop());
                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr045e:
                                                                                                                                                                  this.numericStepper.setLimit(_loc1_);
                                                                                                                                                                  addr045d:
                                                                                                                                                                  addr0459:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0463);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr045e);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0446);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr043a);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr045e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr045d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0463);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0463);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0370:
                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                       if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr037f);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr0398);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr036e:
                                                                                                                                 }
                                                                                                                                 §§goto(addr0370);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr036d:
                                                                                                                                 §§push(_loc2_);
                                                                                                                              }
                                                                                                                              §§goto(addr036e);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr036b:
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr036d);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr036a:
                                                                                                                           _loc2_ = §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr036b);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0369:
                                                                                                                        var _temp_32:* = §§pop();
                                                                                                                        §§push(_temp_32);
                                                                                                                        §§push(_temp_32);
                                                                                                                     }
                                                                                                                     §§goto(addr036a);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0368:
                                                                                                                     §§push(true);
                                                                                                                  }
                                                                                                                  §§goto(addr0369);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0345:
                                                                                                                  §§pop().toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.depositminilayer.marketlink");
                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr0364:
                                                                                                                     addr0360:
                                                                                                                     §§goto(addr0368);
                                                                                                                     §§push(this.plusIcon);
                                                                                                                     §§push(this.plusIcon);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0459);
                                                                                                            }
                                                                                                            §§goto(addr0398);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0324:
                                                                                                            §§pop().text = §§pop();
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(this.plusIcon);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr0345);
                                                                                                               }
                                                                                                               §§goto(addr0364);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr03de);
                                                                                                      }
                                                                                                      §§goto(addr01e4);
                                                                                                   }
                                                                                                   §§goto(addr01eb);
                                                                                                }
                                                                                                §§goto(addr01e8);
                                                                                             }
                                                                                             §§goto(addr01e4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr030b:
                                                                                             §§push(LocaUtils);
                                                                                             §§push("rcl.goods.goodname");
                                                                                             §§push("rcl.goods.goodname.");
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() + this._data.localeId);
                                                                                             }
                                                                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                          }
                                                                                          §§goto(addr0324);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr02e9:
                                                                                       §§pop().dynaBmpSourceName = §§pop() + "_medium";
                                                                                       addr02e8:
                                                                                       addr02e5:
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr02ff:
                                                                                          this.goodCardBoard.dynaBmpSourceName = "ressource_cardboard1_small";
                                                                                          addr02fc:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0307:
                                                                                             §§goto(addr030b);
                                                                                             §§push(this.goodLabel);
                                                                                          }
                                                                                          §§goto(addr03c9);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03de);
                                                                                 }
                                                                                 §§goto(addr02e8);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02d7:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 §§goto(addr02e5);
                                                                              }
                                                                           }
                                                                           §§goto(addr02e9);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr02d4:
                                                                           §§push(§§pop().gfxId);
                                                                        }
                                                                        §§goto(addr02d7);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02d0:
                                                                        §§push(this._data);
                                                                     }
                                                                     §§goto(addr02d4);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr028a:
                                                                     §§pop().dynaSWFFileName = null;
                                                                     if(!(_loc3_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§push(this.goodIconBriskImageDynaLib);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr02ad:
                                                                           §§push("gui_resources_icons");
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().dynaLibName = §§pop();
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr02c0:
                                                                                 addr02bc:
                                                                                 §§push(this.goodIconBriskImageDynaLib);
                                                                                 §§push("ressource_");
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr02d0);
                                                                                 }
                                                                                 §§goto(addr02e9);
                                                                              }
                                                                              §§goto(addr0398);
                                                                           }
                                                                           §§goto(addr02d0);
                                                                        }
                                                                        §§goto(addr02c0);
                                                                     }
                                                                  }
                                                                  §§goto(addr0463);
                                                               }
                                                               §§goto(addr037f);
                                                            }
                                                            §§goto(addr016a);
                                                         }
                                                         §§goto(addr02ad);
                                                      }
                                                      §§goto(addr0190);
                                                   }
                                                   §§goto(addr0116);
                                                }
                                                §§goto(addr0113);
                                             }
                                             §§goto(addr028a);
                                          }
                                          §§goto(addr02bc);
                                       }
                                       §§goto(addr02ff);
                                    }
                                    §§goto(addr02fc);
                                 }
                                 §§goto(addr03c9);
                              }
                              else
                              {
                                 §§push(this.goodIconBriskImageDynaLib);
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr028a);
                                 }
                              }
                              §§goto(addr02c0);
                           }
                           §§goto(addr039c);
                        }
                        §§goto(addr0360);
                     }
                     §§goto(addr0307);
                  }
                  addr0463:
                  return;
               }
               §§goto(addr009e);
            }
            §§goto(addr0082);
         }
         §§goto(addr0105);
      }
      
      private function onStepperChanged(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            param1.stopImmediatePropagation();
            if(_loc2_)
            {
               if(param1 is KeyboardEvent)
               {
                  if(_loc2_)
                  {
                     addr0044:
                     if((param1 as KeyboardEvent).charCode == Keyboard.ENTER)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           dispatchEvent(new Event(KEY_ENTER,true));
                           if(_loc2_ || _loc3_)
                           {
                              addr008c:
                              dispatchEvent(new Event(VALUE_CHANGED,true));
                           }
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr008c);
                  }
                  addr009a:
                  return;
               }
               §§goto(addr008c);
            }
            §§goto(addr0044);
         }
         §§goto(addr008c);
      }
      
      private function onPlusClicked(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(new Event(PLUS_CLICKED_FOR_MARKET,true,true));
         }
      }
      
      public function get listData() : Object
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Object = {};
         if(!_loc2_)
         {
            _loc1_.goodCid = this._data.targetGoodCid;
            if(!(_loc2_ && _loc3_))
            {
               addr0042:
               _loc1_.amount = this.numericStepper.value;
            }
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(param1 is EventChallengeStepDetailViewVo);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005a:
                     if(RandomUtilities.isUnEqual(param1,this._data))
                     {
                        if(!_loc3_)
                        {
                           this._dataIsDirty = true;
                           if(_loc2_)
                           {
                              addr0079:
                              super.data = param1;
                              if(_loc2_ || Boolean(param1))
                              {
                                 addr008a:
                                 this._data = param1 as EventChallengeStepDetailViewVo;
                                 if(!_loc3_)
                                 {
                                    addr0098:
                                    invalidateProperties();
                                 }
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr009d);
            }
            §§goto(addr005a);
         }
         addr009d:
      }
      
      public function get depositData() : EventChallengeStepDetailViewVo
      {
         return this._data;
      }
      
      private function handleGoodOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this._data)
            {
               if(_loc2_)
               {
                  addr0039:
                  dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD,this._data.targetGoodCid));
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function handleGoodOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function _CitySquareDepositItemRenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 125;
            if(_loc3_)
            {
               addr003e:
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr0067);
            }
            addr0048:
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               addr0067:
               _loc1_.width = 320;
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0086:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0086);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _CitySquareDepositItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.left = 124;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 90;
                  if(!_loc3_)
                  {
                     _loc1_.height = 100;
                     if(!_loc3_)
                     {
                        _loc1_.gap = 0;
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.top = 10;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_VGroup2_c(),this._CitySquareDepositItemRenderer_HGroup1_c(),this._CitySquareDepositItemRenderer_NumericStepperComponent1_i()];
                              addr0077:
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00bb);
                           }
                        }
                        addr00a7:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00bb:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr0077);
               }
               addr00bf:
               return _loc1_;
            }
            §§goto(addr00bb);
         }
         §§goto(addr0077);
      }
      
      private function _CitySquareDepositItemRenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0029);
            }
            §§goto(addr008f);
         }
         addr0029:
         _loc1_.percentHeight = 100;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.verticalAlign = "bottom";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_LocaLabel1_i(),this._CitySquareDepositItemRenderer_Group1_c()];
                     addr0065:
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr00a3);
               }
               addr008f:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr00a3:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0065);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || _loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  _loc1_.styleName = "depositPlayerstockLabel";
                  addr0045:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "goodLabel";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00a0);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00aa);
                  }
                  addr00a0:
                  this.goodLabel = _loc1_;
                  if(_loc2_)
                  {
                     addr00aa:
                     BindingManager.executeBindings(this,"goodLabel",this.goodLabel);
                  }
                  §§goto(addr00b7);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr0045);
      }
      
      private function _CitySquareDepositItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 4;
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0052:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0056);
            }
            §§goto(addr0052);
         }
         addr0056:
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 165;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 20;
                     if(_loc2_ || _loc3_)
                     {
                        addr007b:
                        _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_BriskImageDynaLib1_c(),this._CitySquareDepositItemRenderer_LocaLabel2_i()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a5:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr00a5);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr00a5);
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "icon_product";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_storagePopup";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0056);
      }
      
      private function _CitySquareDepositItemRenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               _loc1_.styleName = "depositPlayerstockLabel";
               if(!_loc3_)
               {
                  _loc1_.id = "depositPlayerstockLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0066:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0083);
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0066);
               }
            }
         }
         addr0083:
         this.depositPlayerstockLabel = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr0095:
            BindingManager.executeBindings(this,"depositPlayerstockLabel",this.depositPlayerstockLabel);
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositItemRenderer_NumericStepperComponent1_i() : NumericStepperComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NumericStepperComponent = new NumericStepperComponent();
         if(!_loc2_)
         {
            _loc1_.width = 175;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0037);
            }
            §§goto(addr0073);
         }
         addr0037:
         _loc1_.addEventListener("change",this.__numericStepper_change);
         if(!_loc2_)
         {
            _loc1_.addEventListener("keyUp",this.__numericStepper_keyUp);
            if(_loc3_)
            {
               _loc1_.id = "numericStepper";
               if(_loc3_)
               {
                  addr0073:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a5:
                           this.numericStepper = _loc1_;
                           if(!_loc2_)
                           {
                              addr00af:
                              BindingManager.executeBindings(this,"numericStepper",this.numericStepper);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00bc);
                  }
               }
            }
            §§goto(addr00a5);
         }
         addr00bc:
         return _loc1_;
      }
      
      public function __numericStepper_change(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.onStepperChanged(param1);
         }
      }
      
      public function __numericStepper_keyUp(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onStepperChanged(param1);
         }
      }
      
      private function _CitySquareDepositItemRenderer_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.top = 10;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._CitySquareDepositItemRenderer_BriskImageDynaLib2_i(),this._CitySquareDepositItemRenderer_BriskImageDynaLib3_i(),this._CitySquareDepositItemRenderer_BriskMCDynaLib1_c(),this._CitySquareDepositItemRenderer_BriskImageDynaLib4_i()];
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "goodGroup";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00ac:
                              this.goodGroup = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00b6:
                                 BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00b6);
               }
               addr00c3:
               return _loc1_;
            }
            §§goto(addr00b6);
         }
         §§goto(addr00ac);
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "ressource_cardboard3_small";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_storagePopup";
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005d:
                     _loc1_.top = 0;
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("rollOver",this.__goodCardBoard_rollOver);
                        if(_loc2_)
                        {
                           addr0078:
                           _loc1_.addEventListener("rollOut",this.__goodCardBoard_rollOut);
                           if(_loc2_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr00c6);
                        }
                        addr0089:
                        _loc1_.id = "goodCardBoard";
                        if(_loc2_)
                        {
                           addr0094:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00ab:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00b4:
                                    this.goodCardBoard = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00c6:
                                       BindingManager.executeBindings(this,"goodCardBoard",this.goodCardBoard);
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00b4);
                        }
                        addr00d3:
                        return _loc1_;
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0078);
            }
            §§goto(addr005d);
         }
         §§goto(addr00ab);
      }
      
      public function __goodCardBoard_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleGoodOver(param1);
         }
      }
      
      public function __goodCardBoard_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleGoodOut(param1);
         }
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  addr003b:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.addEventListener("rollOver",this.__goodIconBriskImageDynaLib_rollOver);
                     if(_loc3_)
                     {
                        addr006a:
                        _loc1_.addEventListener("rollOut",this.__goodIconBriskImageDynaLib_rollOut);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "goodIconBriskImageDynaLib";
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00c0:
                                       this.goodIconBriskImageDynaLib = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00ca:
                                          BindingManager.executeBindings(this,"goodIconBriskImageDynaLib",this.goodIconBriskImageDynaLib);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00c0);
            }
            §§goto(addr003b);
         }
         §§goto(addr00af);
      }
      
      public function __goodIconBriskImageDynaLib_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleGoodOver(param1);
         }
      }
      
      public function __goodIconBriskImageDynaLib_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleGoodOut(param1);
         }
      }
      
      private function _CitySquareDepositItemRenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0065:
                     _loc1_.top = -10;
                     if(!_loc3_)
                     {
                        addr006f:
                        _loc1_.height = 20;
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0085:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0085);
               }
               addr0089:
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr0065);
      }
      
      private function _CitySquareDepositItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(!_loc2_)
               {
                  _loc1_.top = 1;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.right = 1;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.addEventListener("click",this.__plusIcon_click);
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("mouseOver",this.__plusIcon_mouseOver);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0090:
                              _loc1_.addEventListener("mouseOut",this.__plusIcon_mouseOut);
                              if(_loc3_)
                              {
                                 addr00a1:
                                 _loc1_.id = "plusIcon";
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b4:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00cd:
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             addr00d6:
                                             this.plusIcon = _loc1_;
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                addr00e8:
                                                BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                                             }
                                             §§goto(addr00f5);
                                          }
                                          §§goto(addr00e8);
                                       }
                                       addr00f5:
                                       return _loc1_;
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr0090);
            }
            §§goto(addr00e8);
         }
         §§goto(addr00b4);
      }
      
      public function __plusIcon_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onPlusClicked(param1);
         }
      }
      
      public function __plusIcon_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this.plusIcon);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.plusIcon);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().scaleX = §§pop().scaleX + 0.05;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0076:
                     this.plusIcon.scaleY += 0.05;
                     addr0072:
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0076);
            }
            §§goto(addr0072);
         }
         addr007f:
      }
      
      public function __plusIcon_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.plusIcon);
            if(!_loc2_)
            {
               §§push(1);
               if(!_loc2_)
               {
                  §§pop().scaleX = §§pop();
                  if(!_loc2_)
                  {
                     addr0035:
                     this.plusIcon.scaleY = 1;
                     addr0033:
                     addr002f:
                  }
                  return;
               }
               §§goto(addr0035);
            }
            §§goto(addr0033);
         }
         §§goto(addr002f);
      }
      
      [Bindable(event="propertyChange")]
      public function get depositPlayerstockLabel() : LocaLabel
      {
         return this._985912867depositPlayerstockLabel;
      }
      
      public function set depositPlayerstockLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._985912867depositPlayerstockLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._985912867depositPlayerstockLabel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositPlayerstockLabel",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get goodCardBoard() : BriskImageDynaLib
      {
         return this._1345056391goodCardBoard;
      }
      
      public function set goodCardBoard(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1345056391goodCardBoard;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1345056391goodCardBoard = param1;
                  addr0042:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodCardBoard",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : Group
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1354855362goodGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1354855362goodGroup = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodIconBriskImageDynaLib() : BriskImageDynaLib
      {
         return this._405102819goodIconBriskImageDynaLib;
      }
      
      public function set goodIconBriskImageDynaLib(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._405102819goodIconBriskImageDynaLib;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._405102819goodIconBriskImageDynaLib = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodIconBriskImageDynaLib",_loc2_,param1));
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
      public function get goodLabel() : LocaLabel
      {
         return this._1358953527goodLabel;
      }
      
      public function set goodLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1358953527goodLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1358953527goodLabel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007d);
            }
         }
         addr008c:
      }
      
      [Bindable(event="propertyChange")]
      public function get numericStepper() : NumericStepperComponent
      {
         return this._884864252numericStepper;
      }
      
      public function set numericStepper(param1:NumericStepperComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._884864252numericStepper;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0039:
                  this._884864252numericStepper = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numericStepper",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1849499341plusIcon = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

