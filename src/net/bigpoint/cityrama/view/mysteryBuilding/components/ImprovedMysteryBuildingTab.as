package net.bigpoint.cityrama.view.mysteryBuilding.components
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.mysteryBuilding.skins.MysteryOutcomeSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovedMysteryBuildingTab extends Group implements IBindingClient
   {
      
      public static const BUY_PERMISSION:String = "BUY_PERMISSION";
      
      public static const BUILD_NOW:String = "BUILD_NOW";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         BUY_PERMISSION = "BUY_PERMISSION";
         if(_loc2_)
         {
            §§goto(addr0036);
         }
         §§goto(addr004c);
      }
      addr0036:
      
      public static const GET_RC:String = "GET_RC";
      
      if(!(_loc1_ && _loc2_))
      {
         addr004c:
         BUILD_NOW = "BUILD_NOW";
      }
      
      private var _1768148800buildButton:MultistateButton;
      
      private var _813710843contentLabel:LocaLabel;
      
      private var _973878475eventTimer:SlimProgressBarTimer;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _918837699luckLabel:LocaLabel;
      
      private var _1062744848outcomeList:List;
      
      private var _1639640475permissionLabel:LocaLabel;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1818074518seasonGfx:BriskImageDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeaturedMysteryBuildingVo;
      
      private var _isDirty:Boolean;
      
      private var _disposing:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovedMysteryBuildingTab()
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
         if(_loc3_)
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || _loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(!_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00ca:
                                             §§pop().§§slot[1] = this._ImprovedMysteryBuildingTab_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                addr00da:
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr00fd:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr011e:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     addr012e:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mysteryBuilding_components_ImprovedMysteryBuildingTabWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr014a:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr015d:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0173:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovedMysteryBuildingTab[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 addr0198:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr01c6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01ec:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01f6:
                                                                                          this.percentHeight = 100;
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             addr0208:
                                                                                             this.top = -18;
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr0212:
                                                                                                this.mxmlContent = [this._ImprovedMysteryBuildingTab_Group2_c(),this._ImprovedMysteryBuildingTab_Group3_c(),this._ImprovedMysteryBuildingTab_VGroup1_c(),this._ImprovedMysteryBuildingTab_VGroup2_c()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0235:
                                                                                                   this.addEventListener("creationComplete",this.___ImprovedMysteryBuildingTab_Group1_creationComplete);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr024f:
                                                                                                      this.addEventListener("removedFromStage",this.___ImprovedMysteryBuildingTab_Group1_removedFromStage);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr0263:
                                                                                                         i = 0;
                                                                                                         addr0261:
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
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc4_ && _loc1_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     var _temp_23:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_23;
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         break loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                   addr02ca:
                                                                                                }
                                                                                                §§goto(addr0261);
                                                                                             }
                                                                                             §§goto(addr02ca);
                                                                                          }
                                                                                          §§goto(addr0212);
                                                                                       }
                                                                                       §§goto(addr0235);
                                                                                    }
                                                                                    §§goto(addr024f);
                                                                                 }
                                                                                 §§goto(addr0235);
                                                                              }
                                                                              §§goto(addr024f);
                                                                           }
                                                                           §§goto(addr01f6);
                                                                        }
                                                                        §§goto(addr0263);
                                                                     }
                                                                     §§goto(addr0212);
                                                                  }
                                                                  §§goto(addr0263);
                                                               }
                                                               §§goto(addr01ec);
                                                            }
                                                            §§goto(addr0173);
                                                         }
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr015d);
                                                   }
                                                   §§goto(addr01f6);
                                                }
                                                §§goto(addr015d);
                                             }
                                             §§goto(addr0212);
                                          }
                                          §§goto(addr012e);
                                       }
                                       §§goto(addr00da);
                                    }
                                    §§goto(addr0208);
                                 }
                                 §§goto(addr011e);
                              }
                              §§goto(addr01c6);
                           }
                           §§goto(addr0198);
                        }
                        §§goto(addr0212);
                     }
                     §§goto(addr011e);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr011e);
            }
            §§goto(addr0040);
         }
         §§goto(addr00fd);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ImprovedMysteryBuildingTab._watcherSetupUtil = param1;
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
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0050);
         }
         addr004a:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.title.capital");
            if(!(_loc3_ && Boolean(param1)))
            {
               this.buildButton.toolTip = LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.place");
               if(!(_loc3_ && Boolean(this)))
               {
                  this.contentLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.text");
                  if(_loc2_ || _loc2_)
                  {
                     addr008b:
                     this.luckLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.preButton.text");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00aa:
                        UIComponent(this.purchaseButton.labelDisplay).setStyle("fontSize",13);
                     }
                  }
               }
               return;
            }
            §§goto(addr00aa);
         }
         §§goto(addr008b);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this._isDirty)
               {
                  if(!_loc1_)
                  {
                     this._isDirty = false;
                     if(!_loc1_)
                     {
                        this.seasonGfx.briskDynaVo = this._data.seasonGfx;
                        if(!(_loc1_ && _loc1_))
                        {
                           this.permissionLabel.text = this._data.permissionAmount.toString();
                           if(!(_loc1_ && _loc1_))
                           {
                              addr0078:
                              §§push(this.purchaseButton);
                              if(!_loc1_)
                              {
                                 §§push(LocaUtils.getThousendSeperatedNumber(this._data.permissionPrice));
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§pop().label = §§pop();
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       §§push(this.purchaseButton);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§push(this._data);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§push(§§pop().permissionPrice);
                                             if(!_loc1_)
                                             {
                                                §§pop().priceToConfirm = §§pop();
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00ef:
                                                   this.buildButton.enabled = this._data.permissionAmount > 0;
                                                   if(_loc2_)
                                                   {
                                                      addr0105:
                                                      §§push(this.purchaseButton);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr011d:
                                                         §§pop().showPlus = this._data.permissionPrice > this._data.rcStock;
                                                         addr011a:
                                                         addr0116:
                                                         if(_loc2_)
                                                         {
                                                            this.outcomeList.dataProvider = this._data.possibleResult;
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr0149:
                                                               §§push(this.purchaseButton);
                                                               if(_loc2_)
                                                               {
                                                                  addr0152:
                                                                  if(§§pop().showPlus)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        addr015e:
                                                                        §§push(this.purchaseButton);
                                                                        if(!(_loc1_ && Boolean(this)))
                                                                        {
                                                                           §§goto(addr016f);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01a1:
                                                                           §§push(LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.buy"));
                                                                        }
                                                                        §§goto(addr01ad);
                                                                     }
                                                                     §§goto(addr01bc);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.purchaseButton);
                                                                  }
                                                                  §§goto(addr01a1);
                                                               }
                                                               addr016f:
                                                               §§push(LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.noCash"));
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  §§pop().toolTip = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                  }
                                                                  addr01bc:
                                                                  this.setTimer();
                                                               }
                                                               else
                                                               {
                                                                  addr01ad:
                                                                  §§pop().toolTip = §§pop();
                                                                  if(!(_loc1_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr01bc);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr01c1);
                                                         }
                                                         §§goto(addr015e);
                                                      }
                                                      §§goto(addr01a1);
                                                   }
                                                   §§goto(addr015e);
                                                }
                                                §§goto(addr0105);
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr011a);
                                       }
                                       §§goto(addr0152);
                                    }
                                    §§goto(addr00ef);
                                 }
                                 §§goto(addr01ad);
                              }
                              §§goto(addr0116);
                           }
                           §§goto(addr0149);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr015e);
                  }
                  §§goto(addr0149);
               }
               addr01c1:
               return;
            }
            §§goto(addr0105);
         }
         §§goto(addr0149);
      }
      
      private function handleBuildNow(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new Event(BUILD_NOW));
         }
      }
      
      private function handleBuyButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(this.purchaseButton.showPlus)
            {
               if(_loc2_)
               {
                  addr0038:
                  dispatchEvent(new Event(GET_RC));
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(BUY_PERMISSION));
            }
            return;
         }
         §§goto(addr0038);
      }
      
      private function handleRemoved(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            TweenMax.killDelayedCallsTo(this.setTimer);
            if(_loc2_ || _loc2_)
            {
               addr0040:
               this._disposing = true;
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function setTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._disposing)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr00cf:
               TweenMax.delayedCall(60,this.setTimer);
            }
            else if(this._data.availabilityTimer)
            {
               if(_loc1_ || _loc1_)
               {
                  addr0049:
                  §§push(this.eventTimer);
                  if(!_loc2_)
                  {
                     §§pop().data = this._data.availabilityTimer;
                     if(_loc1_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00cf);
                  }
                  addr006e:
                  §§goto(addr006a);
               }
               addr006a:
               §§push(this.eventTimer);
               §§push(LocaUtils);
               §§push("rcl.tooltips.mysteryBuilding");
               §§push("rcl.tooltips.mysteryBuilding.timeline");
               §§push(LocaUtils);
               §§push(this._data.availabilityTimer.targetTime);
               if(_loc1_ || Boolean(this))
               {
                  §§push(§§pop() - this._data.availabilityTimer.currentTime);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(§§pop() / 1000);
                  }
               }
               §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),[§§pop().getDurationHM(§§pop())]);
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr00cf);
               }
               §§goto(addr00db);
            }
            addr00db:
            return;
         }
         §§goto(addr0049);
      }
      
      public function set data(param1:FeaturedMysteryBuildingVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(RandomUtilities.isUnEqual(this._data,param1))
            {
               if(!_loc2_)
               {
                  this._isDirty = true;
                  if(_loc3_)
                  {
                     §§goto(addr004b);
                  }
                  §§goto(addr0055);
               }
               addr004b:
               this._data = param1;
               if(!_loc2_)
               {
                  addr0055:
                  invalidateProperties();
               }
               §§goto(addr005a);
            }
            addr005a:
            return;
         }
         §§goto(addr0055);
      }
      
      private function _ImprovedMysteryBuildingTab_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = -5;
            if(_loc3_)
            {
               _loc1_.left = -5;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib1_c()];
                  if(_loc3_ || _loc3_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0079);
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_architect_featured";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mystery_bg";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 746;
                  if(_loc3_ || _loc2_)
                  {
                     addr006a:
                     _loc1_.height = 318;
                     if(_loc3_ || Boolean(this))
                     {
                        addr007d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0089:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007d);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _ImprovedMysteryBuildingTab_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.bottom = 5;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0047:
               _loc1_.left = 5;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib2_i()];
                  if(_loc3_)
                  {
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0077);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_architect_featured";
            if(_loc3_)
            {
               _loc1_.id = "seasonGfx";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0063);
                     }
                  }
                  §§goto(addr007f);
               }
               addr0063:
               _loc1_.document = this;
               if(_loc3_ || Boolean(this))
               {
                  addr007f:
                  this.seasonGfx = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     BindingManager.executeBindings(this,"seasonGfx",this.seasonGfx);
                  }
               }
               §§goto(addr009e);
            }
         }
         addr009e:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               addr0039:
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.gap = 3;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008b:
                           _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_Group4_c()];
                           if(!_loc2_)
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009b);
            }
            §§goto(addr008b);
         }
         §§goto(addr0039);
      }
      
      private function _ImprovedMysteryBuildingTab_Group4_c() : Group
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
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup1_c(),this._ImprovedMysteryBuildingTab_Group5_c(),this._ImprovedMysteryBuildingTab_HGroup2_c(),this._ImprovedMysteryBuildingTab_HGroup3_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0076);
            }
            §§goto(addr0082);
         }
         addr0076:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0082:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.height = 30;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0078:
                        _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BlueBarComponent1_c()];
                        if(_loc3_ || _loc2_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0078);
               }
               §§goto(addr009c);
            }
            §§goto(addr0090);
         }
         §§goto(addr0078);
      }
      
      private function _ImprovedMysteryBuildingTab_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.width = 574;
               if(!_loc2_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr0057);
            }
            addr0043:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0057:
                  _loc1_.document = this;
               }
            }
            §§goto(addr005b);
         }
         addr005b:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 574;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr005c);
               }
               §§goto(addr0078);
            }
            addr005c:
            _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib3_c()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 48;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 43;
               if(!(_loc2_ && _loc2_))
               {
                  addr0057:
                  _loc1_.left = 50;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaLibName = "gui_popups_architect_featured";
                     if(!_loc2_)
                     {
                        _loc1_.dynaBmpSourceName = "mystery_icon";
                        addr0074:
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0074);
            }
            §§goto(addr0057);
         }
         §§goto(addr00a9);
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0053);
         }
         addr0031:
         _loc1_.verticalAlign = "middle";
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               addr0053:
               _loc1_.height = 30;
               if(!_loc3_)
               {
                  _loc1_.paddingTop = 2;
                  if(_loc2_)
                  {
                     addr0074:
                     _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel1_i()];
                     if(!_loc3_)
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0074);
            }
            §§goto(addr0084);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "StatusBarStyle";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.maxWidth = 356;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr006d);
            }
            §§goto(addr0078);
         }
         addr006d:
         _loc1_.id = "headerTextLabel";
         if(!_loc2_)
         {
            addr0078:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  §§goto(addr0091);
               }
               §§goto(addr00ac);
            }
            §§goto(addr009a);
         }
         addr0091:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr009a:
            this.headerTextLabel = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr00ac:
               BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 17;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.top = 32;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib4_c(),this._ImprovedMysteryBuildingTab_SlimProgressBarTimer1_i()];
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00a6);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00a6);
               }
            }
            §§goto(addr00a2);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc3_)
            {
               §§goto(addr0040);
            }
            §§goto(addr007c);
         }
         addr0040:
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         if(!_loc3_)
         {
            _loc1_.width = 18;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 17;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr007c);
               }
               §§goto(addr0088);
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0088:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008c);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         if(_loc3_)
         {
            _loc1_.progressBarTint = 10739019;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.revertProgress = true;
               if(!_loc2_)
               {
                  _loc1_.width = 330;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "eventTimer";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a0:
                                 this.eventTimer = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"eventTimer",this.eventTimer);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr008f);
                  }
                  addr00b7:
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr00aa);
         }
         §§goto(addr006f);
      }
      
      private function _ImprovedMysteryBuildingTab_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.bottom = 26;
            if(_loc2_)
            {
               _loc1_.height = 274;
               if(_loc2_ || _loc2_)
               {
                  addr0043:
                  _loc1_.right = 10;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.maxHeight = 274;
                     if(_loc2_)
                     {
                        _loc1_.minHeight = 274;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0083:
                           _loc1_.horizontalAlign = "right";
                           if(_loc2_)
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr00d6);
                        }
                        addr008e:
                        _loc1_.width = 446;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup4_c(),this._ImprovedMysteryBuildingTab_Group6_c(),this._ImprovedMysteryBuildingTab_Group7_c(),this._ImprovedMysteryBuildingTab_HGroup5_c(),this._ImprovedMysteryBuildingTab_HGroup6_c()];
                           addr0099:
                           if(_loc2_ || _loc2_)
                           {
                              addr00d6:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00e2:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr00e2);
                        }
                        §§goto(addr00e6);
                     }
                     addr00e6:
                     return _loc1_;
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00d6);
            }
            §§goto(addr0083);
         }
         §§goto(addr0043);
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.verticalAlign = "bottom";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  addr0051:
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0082:
                        _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel2_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0092);
                        }
                        §§goto(addr00a6);
                     }
                     addr0092:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a6:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0082);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0051);
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "darkBlueElevenCenter";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc3_)
               {
                  §§goto(addr0038);
               }
            }
            §§goto(addr0054);
         }
         addr0038:
         _loc1_.percentWidth = 70;
         if(_loc3_ || _loc2_)
         {
            addr0054:
            _loc1_.id = "contentLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0086);
            }
            §§goto(addr0090);
         }
         addr0086:
         this.contentLabel = _loc1_;
         if(_loc3_)
         {
            addr0090:
            BindingManager.executeBindings(this,"contentLabel",this.contentLabel);
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr005a);
         }
         addr0038:
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_List1_i(),this._ImprovedMysteryBuildingTab_UiInfolayerAlignmentLine1_i()];
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr005a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc3_)
         {
            _loc1_.itemRenderer = this._ImprovedMysteryBuildingTab_ClassFactory1_c();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  addr0060:
                  _loc1_.setStyle("skinClass",MysteryOutcomeSkin);
                  if(!_loc2_)
                  {
                     _loc1_.id = "outcomeList";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0098:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00a1:
                                 this.outcomeList = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00a1);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _ImprovedMysteryBuildingTab_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = MysteryOutcomeRenderer;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.top = 20;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.right = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0072);
            }
            addr005c:
            _loc1_.lineId = 0;
            if(_loc3_)
            {
               addr0067:
               _loc1_.id = "uiInfolayerAlignmentLine";
               if(_loc3_)
               {
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0094);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00a7);
            }
            addr0094:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr009d:
               this.uiInfolayerAlignmentLine = _loc1_;
               if(_loc3_)
               {
                  addr00a7:
                  BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
               }
            }
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _ImprovedMysteryBuildingTab_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.height = 1;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup5_c() : HGroup
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
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel3_i()];
                     addr005e:
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0085);
                     }
                     §§goto(addr0099);
                  }
                  addr0085:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0099:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr005e);
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "darkBlueThirteenCenter";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 85;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "luckLabel";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00a5);
                              }
                           }
                           §§goto(addr00b7);
                        }
                     }
                     addr00a5:
                     this.luckLabel = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00b7:
                        BindingManager.executeBindings(this,"luckLabel",this.luckLabel);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr007b);
            }
            §§goto(addr00b7);
         }
         addr00c4:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup7_c(),this._ImprovedMysteryBuildingTab_HGroup8_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0088);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup7_c() : HGroup
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
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.gap = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_Group8_c(),this._ImprovedMysteryBuildingTab_MultistateButton1_i()];
                     §§goto(addr0053);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr007c);
            }
            addr0053:
            if(!(_loc2_ && _loc2_))
            {
               addr007c:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0090:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _ImprovedMysteryBuildingTab_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 76;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0045);
            }
            §§goto(addr0041);
         }
         addr0045:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.useConfirmation = true;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 185;
               if(!_loc3_)
               {
                  _loc1_.libNameRight = "gui_resources_icons";
                  if(!_loc3_)
                  {
                     _loc1_.imageNameRight = "dd_button_icon";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0064:
                        _loc1_.addEventListener("click",this.__purchaseButton_click);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007c:
                           _loc1_.id = "purchaseButton";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008f:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00b8:
                                       this.purchaseButton = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c2:
                                          BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                                       }
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr008f);
                     }
                     addr00cf:
                     return _loc1_;
                  }
                  §§goto(addr008f);
               }
               §§goto(addr007c);
            }
            §§goto(addr0064);
         }
         §§goto(addr00a7);
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleBuyButtonClick(param1);
         }
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup8_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr004e);
               }
               §§goto(addr008e);
            }
            §§goto(addr00a2);
         }
         addr004e:
         _loc1_.gap = 3;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel4_i(),this._ImprovedMysteryBuildingTab_BriskImageDynaLib5_c(),this._ImprovedMysteryBuildingTab_MultistateButton2_i(),this._ImprovedMysteryBuildingTab_Group9_c()];
            if(_loc3_ || Boolean(_loc1_))
            {
               addr008e:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00a2:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00a6);
            }
            §§goto(addr00a2);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               _loc1_.styleName = "blueFifteenRight";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004b:
                  _loc1_.width = 35;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005d:
                     _loc1_.id = "permissionLabel";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0091:
                                 this.permissionLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"permissionLabel",this.permissionLabel);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr005d);
            }
            §§goto(addr004b);
         }
         §§goto(addr009b);
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_architect_featured";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "permission_icon";
               if(!_loc3_)
               {
                  _loc1_.width = 22;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 22;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr0081);
      }
      
      private function _ImprovedMysteryBuildingTab_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.enabled = false;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.imageNameLeft = "button_icon_build";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.libNameLeft = "gui_popups_paperPopup";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.addEventListener("click",this.__buildButton_click);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0097:
                           _loc1_.id = "buildButton";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00ce:
                                       this.buildButton = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00e0:
                                          BindingManager.executeBindings(this,"buildButton",this.buildButton);
                                       }
                                    }
                                    §§goto(addr00ed);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00ce);
                     }
                     addr00ed:
                     return _loc1_;
                  }
                  §§goto(addr00ce);
               }
            }
            §§goto(addr0097);
         }
         §§goto(addr00e0);
      }
      
      public function __buildButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handleBuildNow(param1);
         }
      }
      
      private function _ImprovedMysteryBuildingTab_Group9_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 5;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0047:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004b);
            }
            §§goto(addr0047);
         }
         addr004b:
         return _loc1_;
      }
      
      public function ___ImprovedMysteryBuildingTab_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___ImprovedMysteryBuildingTab_Group1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleRemoved(param1);
         }
      }
      
      private function _ImprovedMysteryBuildingTab_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc1_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§pop()[0] = new Binding(this,function():uint
                     {
                        return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                     },null,"uiInfolayerAlignmentLine.alignment");
                     addr0073:
                     addr0071:
                     return result;
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0071);
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildButton() : MultistateButton
      {
         return this._1768148800buildButton;
      }
      
      public function set buildButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1768148800buildButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0039:
                  this._1768148800buildButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildButton",_loc2_,param1));
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
      public function get contentLabel() : LocaLabel
      {
         return this._813710843contentLabel;
      }
      
      public function set contentLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._813710843contentLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003f:
                  this._813710843contentLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventTimer() : SlimProgressBarTimer
      {
         return this._973878475eventTimer;
      }
      
      public function set eventTimer(param1:SlimProgressBarTimer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._973878475eventTimer;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._973878475eventTimer = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventTimer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1105049158headerTextLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get luckLabel() : LocaLabel
      {
         return this._918837699luckLabel;
      }
      
      public function set luckLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._918837699luckLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._918837699luckLabel = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006c);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1062744848outcomeList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1062744848outcomeList = param1;
                  addr003b:
                  if(_loc4_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr006a);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionLabel() : LocaLabel
      {
         return this._1639640475permissionLabel;
      }
      
      public function set permissionLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1639640475permissionLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1639640475permissionLabel = param1;
                  addr0041:
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0070);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0038:
                  this._1082037139purchaseButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get seasonGfx() : BriskImageDynaLib
      {
         return this._1818074518seasonGfx;
      }
      
      public function set seasonGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1818074518seasonGfx;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1818074518seasonGfx = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seasonGfx",_loc2_,param1));
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
         }
         addr0073:
      }
   }
}

