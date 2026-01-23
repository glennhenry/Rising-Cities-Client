package net.bigpoint.cityrama.view.assistants.ui.components
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
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class RentCollectorOffersItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      public static const EVENT_PURCHASE:String = "EVENT_PURCHASE";
      
      public static const EVENT_TREASURY:String = "EVENT_TREASURY";
      
      public static const EVENT_PAYMENT:String = "EVENT_PAYMENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         EVENT_PURCHASE = "EVENT_PURCHASE";
         if(!(_loc2_ && _loc1_))
         {
            EVENT_TREASURY = "EVENT_TREASURY";
            if(_loc1_)
            {
               addr004b:
               EVENT_PAYMENT = "EVENT_PAYMENT";
            }
            §§goto(addr0054);
         }
         §§goto(addr004b);
      }
      addr0054:
      
      private var _1670087799assistantIcon:BriskImageDynaLib;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1115260014headerBG:BriskImageDynaLib;
      
      private var _945498328paymentButton:MultistateButton;
      
      private var _2131928199paymentButtonGroup:Group;
      
      private var _868554306paymentHoverLabel:LocaLabel;
      
      private var _805360694paymentSaleBadge:BriskImageDynaLib;
      
      private var _1287581744paymentSparkle:BriskImageDynaLib;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _128319588saleBadge:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RentCollectorOffersItemRenderer()
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
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0045:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || Boolean(this))
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       addr0095:
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00be:
                                             §§pop().§§slot[1] = this._RentCollectorOffersItemRenderer_bindingsSetup();
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr00f1:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  addr0119:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0121:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorOffersItemRendererWatcherSetupUtil");
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        addr013d:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr014c:
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr016d:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return RentCollectorOffersItemRenderer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 addr0193:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       this.autoDrawBackground = false;
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          addr0202:
                                                                                          this.width = 184;
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             addr0216:
                                                                                             this.height = 286;
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                addr0229:
                                                                                                this.mxmlContent = [this._RentCollectorOffersItemRenderer_Group1_c()];
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   addr0242:
                                                                                                   this.addEventListener("creationComplete",this.___RentCollectorOffersItemRenderer_ItemRenderer1_creationComplete);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      this.addEventListener("rollOver",this.___RentCollectorOffersItemRenderer_ItemRenderer1_rollOver);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr026e:
                                                                                                         this.addEventListener("rollOut",this.___RentCollectorOffersItemRenderer_ItemRenderer1_rollOut);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0281:
                                                                                                            i = 0;
                                                                                                            addr027f:
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_22:*;
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
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_ || _loc1_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(var _temp_22:* = §§pop(), §§pop().§§slot[4] = _temp_22, !_loc3_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02e6:
                                                                                                   }
                                                                                                   §§goto(addr026e);
                                                                                                }
                                                                                                §§goto(addr02e6);
                                                                                             }
                                                                                             §§goto(addr026e);
                                                                                          }
                                                                                          §§goto(addr02e6);
                                                                                       }
                                                                                       §§goto(addr0229);
                                                                                    }
                                                                                    §§goto(addr0242);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr02e6);
                                                                        }
                                                                        §§goto(addr0281);
                                                                     }
                                                                     §§goto(addr0202);
                                                                  }
                                                                  §§goto(addr014c);
                                                               }
                                                               §§goto(addr027f);
                                                            }
                                                            §§goto(addr016d);
                                                         }
                                                         §§goto(addr013d);
                                                      }
                                                      §§goto(addr014c);
                                                   }
                                                   §§goto(addr02e6);
                                                }
                                                §§goto(addr0121);
                                             }
                                             §§goto(addr027f);
                                          }
                                          §§goto(addr0281);
                                       }
                                       §§goto(addr0193);
                                    }
                                    §§goto(addr027f);
                                 }
                                 §§goto(addr0216);
                              }
                              §§goto(addr016d);
                           }
                           §§goto(addr0119);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr027f);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr0202);
            }
            §§goto(addr0045);
         }
         §§goto(addr00f1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            RentCollectorOffersItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0043);
            }
            addr003d:
            return;
         }
         addr0043:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            UIComponent(this.purchaseButton.labelDisplay).setStyle("fontSize",13);
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(Boolean(this._data));
               if(_loc2_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr0056);
                        }
                        §§goto(addr0071);
                     }
                     §§goto(addr0055);
                  }
               }
               addr0056:
               §§push(this._isDirty);
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0055:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this._isDirty = false;
                     if(_loc2_)
                     {
                        addr0071:
                        var _temp_6:* = this.paymentButtonGroup;
                        var _loc1_:*;
                        this.paymentButtonGroup.visible = _loc1_ = this._data.isExternalPaymentPack;
                        _temp_6.includeInLayout = _loc1_;
                        if(!_loc3_)
                        {
                           this.background.briskDynaVo = this._data.backgroundGfx;
                           if(!(_loc3_ && _loc3_))
                           {
                              this.assistantIcon.briskDynaVo = this._data.iconGfx;
                              if(_loc2_)
                              {
                                 addr00bd:
                                 this.header.text = this._data.headerText;
                                 if(_loc2_)
                                 {
                                    this.flavourLabel.text = this._data.flavourText;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00e9:
                                       this.paymentHoverLabel.text = this._data.paymentHoverText;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr0104:
                                          §§push(this.purchaseButton);
                                          if(!_loc3_)
                                          {
                                             §§pop().label = LocaUtils.getThousendSeperatedNumber(this._data.price);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr0138:
                                                §§push(this.purchaseButton);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this._data);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().isAffordable);
                                                      if(_loc2_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().showPlus = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr016c:
                                                         this.purchaseButton.priceToConfirm = this._data.price;
                                                         addr0168:
                                                         if(!_loc3_)
                                                         {
                                                            addr0177:
                                                            §§push(this.paymentSparkle);
                                                            §§push(this.paymentSparkle);
                                                            §§push(this._data.saleActive);
                                                            if(_loc2_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            §§pop().includeInLayout = §§pop().visible = §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               addr019a:
                                                               var _temp_14:* = this.paymentSaleBadge;
                                                               this.paymentSaleBadge.visible = _loc1_ = this._data.saleActive;
                                                               _temp_14.includeInLayout = _loc1_;
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  addr01bf:
                                                                  §§push(this.saleBadge);
                                                                  §§push(this.saleBadge);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(this._data);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop().saleActive);
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              var _temp_19:* = §§pop();
                                                                              §§push(_temp_19);
                                                                              §§push(_temp_19);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 addr0235:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr022b:
                                                                                       addr0227:
                                                                                       §§push(this._data.isExternalPaymentPack);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr0234:
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 var _temp_22:* = §§pop();
                                                                                 §§push(_temp_22);
                                                                                 §§push(_temp_22);
                                                                              }
                                                                              _loc1_ = §§pop();
                                                                              §§pop().visible = §§pop();
                                                                              §§pop().includeInLayout = _loc1_;
                                                                              §§goto(addr023e);
                                                                           }
                                                                           §§goto(addr0235);
                                                                        }
                                                                        §§goto(addr0234);
                                                                     }
                                                                     §§goto(addr022b);
                                                                  }
                                                                  §§goto(addr0227);
                                                               }
                                                            }
                                                            §§goto(addr023e);
                                                         }
                                                      }
                                                      §§goto(addr01bf);
                                                   }
                                                   §§goto(addr016c);
                                                }
                                                §§goto(addr0168);
                                             }
                                             §§goto(addr019a);
                                          }
                                          §§goto(addr0168);
                                       }
                                       §§goto(addr019a);
                                    }
                                    §§goto(addr01bf);
                                 }
                                 §§goto(addr023e);
                              }
                              §§goto(addr0177);
                           }
                           §§goto(addr019a);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr0138);
                  }
                  §§goto(addr0071);
               }
               addr023e:
               return;
            }
            §§goto(addr00bd);
         }
         §§goto(addr0104);
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.data = param1;
            if(_loc2_)
            {
               §§push(param1 is RentCollectorVo);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006f:
                        addr0057:
                        if(RandomUtilities.isUnEqual(param1,this._data))
                        {
                           if(!_loc3_)
                           {
                              this._data = param1 as RentCollectorVo;
                              if(!_loc3_)
                              {
                                 §§goto(addr0086);
                              }
                              §§goto(addr0098);
                           }
                           addr0086:
                           this._isDirty = true;
                           if(_loc2_ || _loc2_)
                           {
                              addr0098:
                              invalidateProperties();
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr006f);
            }
            §§goto(addr0057);
         }
         addr009d:
      }
      
      public function get assistConfigId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._data);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004d:
                     return this._data.assistConfigId;
                     addr0049:
                  }
               }
               return -1;
            }
            §§goto(addr004d);
         }
         §§goto(addr0049);
      }
      
      public function get externalPackKey() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._data);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr0042);
            }
            addr003e:
            return this._data.externalPackKey;
         }
         addr0042:
         return "";
      }
      
      private function handleRollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.headerBG.dynaBmpSourceName = "header_bg_over";
         }
      }
      
      private function handleRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.headerBG.dynaBmpSourceName = "header_bg_normal";
         }
      }
      
      private function handlePurchaseClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.purchaseButton.showPlus)
            {
               if(_loc2_)
               {
                  dispatchEvent(new Event(EVENT_TREASURY,true,true));
                  if(_loc2_ || _loc3_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(EVENT_PURCHASE,true,true));
            }
         }
      }
      
      private function handlePaymentClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(EVENT_PAYMENT,true,true));
         }
      }
      
      private function handlePaymentBtnOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.purchaseButton.visible = false;
            if(_loc2_ || Boolean(param1))
            {
               this.paymentHoverLabel.visible = true;
            }
         }
      }
      
      private function handlePaymentBtnOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.purchaseButton.visible = true;
            if(_loc2_)
            {
               addr002a:
               this.paymentHoverLabel.visible = false;
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function _RentCollectorOffersItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_BriskImageDynaLib1_i(),this._RentCollectorOffersItemRenderer_VGroup1_c()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr006a:
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
            }
         }
         §§goto(addr006a);
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0033:
               _loc1_.dynaBmpSourceName = "collector_bg_44";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "background";
                  if(_loc2_)
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr007f);
                        }
                     }
                     §§goto(addr0090);
                  }
                  addr007f:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0090:
                     this.background = _loc1_;
                     if(_loc2_)
                     {
                        BindingManager.executeBindings(this,"background",this.background);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0090);
            }
            §§goto(addr005e);
         }
         §§goto(addr0033);
      }
      
      private function _RentCollectorOffersItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr00d9);
               }
               addr0069:
               _loc1_.top = 8;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_Group2_c(),this._RentCollectorOffersItemRenderer_Group3_c(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib4_i(),this._RentCollectorOffersItemRenderer_Group4_c(),this._RentCollectorOffersItemRenderer_HGroup1_c(),this._RentCollectorOffersItemRenderer_Group5_c(),this._RentCollectorOffersItemRenderer_Group6_c()];
                     if(_loc2_ || _loc2_)
                     {
                        addr00cd:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00d9:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr00dd);
            }
            §§goto(addr00cd);
         }
         addr00dd:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 32;
            if(_loc2_)
            {
               _loc1_.width = 170;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_BriskImageDynaLib2_i(),this._RentCollectorOffersItemRenderer_LocaLabel1_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib3_i()];
                  addr0047:
                  if(!_loc3_)
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0083);
               }
            }
            addr006f:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0083:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "header_bg_normal";
               if(!_loc3_)
               {
                  addr004b:
                  _loc1_.id = "headerBG";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0077:
                              this.headerBG = _loc1_;
                              if(_loc2_)
                              {
                                 addr0081:
                                 BindingManager.executeBindings(this,"headerBG",this.headerBG);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr0081);
                        }
                        addr008e:
                        return _loc1_;
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0077);
         }
         §§goto(addr004b);
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "progressBarLabel";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 90;
               if(!_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr00cd);
            }
         }
         addr0074:
         _loc1_.verticalCenter = 0;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr0086:
            _loc1_.id = "header";
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr00bb);
                     }
                  }
                  §§goto(addr00cd);
               }
               addr00bb:
               this.header = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr00cd:
                  BindingManager.executeBindings(this,"header",this.header);
               }
               §§goto(addr00da);
            }
            §§goto(addr00cd);
         }
         addr00da:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "upsell_medium";
               if(!(_loc3_ && _loc3_))
               {
                  addr0047:
                  _loc1_.includeInLayout = false;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(_loc2_ || _loc3_)
                     {
                        addr006c:
                        _loc1_.left = -14;
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.top = -8;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.id = "saleBadge";
                              if(_loc2_)
                              {
                                 addr0093:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00bb:
                                          this.saleBadge = _loc1_;
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr00cd:
                                             BindingManager.executeBindings(this,"saleBadge",this.saleBadge);
                                          }
                                       }
                                       §§goto(addr00da);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00bb);
                              }
                              addr00da:
                              return _loc1_;
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr006c);
            }
            §§goto(addr00bb);
         }
         §§goto(addr0047);
      }
      
      private function _RentCollectorOffersItemRenderer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.height = 8;
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr0054);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "rentCollector_big_44";
               if(!_loc3_)
               {
                  _loc1_.id = "assistantIcon";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr009a:
                              this.assistantIcon = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00ac:
                                 BindingManager.executeBindings(this,"assistantIcon",this.assistantIcon);
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr0066);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _RentCollectorOffersItemRenderer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 6;
            if(_loc2_)
            {
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
      
      private function _RentCollectorOffersItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 42;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr0065);
                  }
               }
               §§goto(addr00aa);
            }
            addr0065:
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_LocaLabel2_i()];
               if(_loc3_)
               {
                  §§goto(addr0096);
               }
               §§goto(addr00aa);
            }
            addr0096:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr00aa:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr00aa);
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "twelveDarkCenter";
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 80;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.setStyle("fontSize",11);
                     if(_loc3_)
                     {
                        _loc1_.id = "flavourLabel";
                        if(_loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00b7:
                                    this.flavourLabel = _loc1_;
                                    if(_loc3_ || _loc2_)
                                    {
                                       BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
               }
               §§goto(addr00b7);
            }
            §§goto(addr0086);
         }
         §§goto(addr009a);
      }
      
      private function _RentCollectorOffersItemRenderer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 6;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004b);
      }
      
      private function _RentCollectorOffersItemRenderer_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 40;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 160;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_HGroup2_c(),this._RentCollectorOffersItemRenderer_HGroup3_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr007b);
            }
            §§goto(addr0077);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.width = 116;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr0070:
                        _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_LocaLabel3_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0080);
                        }
                     }
                     §§goto(addr008c);
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
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
            §§goto(addr0070);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "tenBlueCenter";
            if(_loc3_ || _loc2_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0077:
                        _loc1_.id = "paymentHoverLabel";
                        if(_loc3_)
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00b3:
                                    this.paymentHoverLabel = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"paymentHoverLabel",this.paymentHoverLabel);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0077);
            }
            §§goto(addr0082);
         }
         §§goto(addr00b3);
      }
      
      private function _RentCollectorOffersItemRenderer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc2_)
                     {
                        addr007c:
                        _loc1_.gap = 2;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr009b);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr007c);
               }
            }
            addr009b:
            _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_MultistateButton1_i(),this._RentCollectorOffersItemRenderer_Group7_i()];
            if(_loc2_)
            {
               addr00b1:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00c5:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr00b1);
      }
      
      private function _RentCollectorOffersItemRenderer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.libNameRight = "gui_resources_icons";
            if(!_loc3_)
            {
               §§goto(addr0033);
            }
            §§goto(addr005e);
         }
         addr0033:
         _loc1_.imageNameRight = "dd_button_icon";
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               addr005e:
               _loc1_.useConfirmation = true;
               if(_loc2_)
               {
                  _loc1_.addEventListener("click",this.__purchaseButton_click);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "purchaseButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr00aa);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00bd);
                  }
               }
               §§goto(addr00b3);
            }
            addr00aa:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr00b3:
               this.purchaseButton = _loc1_;
               if(_loc2_)
               {
                  addr00bd:
                  BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
               }
            }
            §§goto(addr00ca);
         }
         addr00ca:
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handlePurchaseClicked(param1);
         }
      }
      
      private function _RentCollectorOffersItemRenderer_Group7_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(!_loc3_)
            {
               _loc1_.height = 40;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_MultistateButton2_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib5_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib6_i()];
                  §§goto(addr0034);
               }
               §§goto(addr005c);
            }
            addr0034:
            if(_loc2_)
            {
               addr005c:
               _loc1_.id = "paymentButtonGroup";
               if(_loc2_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr0099);
            }
            addr0067:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr0087);
                  }
                  §§goto(addr0099);
               }
            }
            addr0087:
            this.paymentButtonGroup = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0099:
               BindingManager.executeBindings(this,"paymentButtonGroup",this.paymentButtonGroup);
            }
            §§goto(addr00a6);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.libNameLeft = "gui_popups_rentCollector";
            if(_loc3_ || _loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_treasury";
               if(!_loc2_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr00a2);
            }
         }
         addr0049:
         _loc1_.width = 40;
         if(!_loc2_)
         {
            _loc1_.addEventListener("rollOver",this.__paymentButton_rollOver);
            if(!_loc2_)
            {
               _loc1_.addEventListener("rollOut",this.__paymentButton_rollOut);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.addEventListener("click",this.__paymentButton_click);
                  if(_loc3_ || _loc2_)
                  {
                     addr00a2:
                     _loc1_.id = "paymentButton";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00ce:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr00df);
                              }
                              §§goto(addr00e9);
                           }
                        }
                        addr00df:
                        this.paymentButton = _loc1_;
                        if(!_loc2_)
                        {
                           addr00e9:
                           BindingManager.executeBindings(this,"paymentButton",this.paymentButton);
                        }
                        §§goto(addr00f6);
                     }
                  }
               }
               §§goto(addr00f6);
            }
            §§goto(addr00ce);
         }
         addr00f6:
         return _loc1_;
      }
      
      public function __paymentButton_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handlePaymentBtnOver(param1);
         }
      }
      
      public function __paymentButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handlePaymentBtnOut(param1);
         }
      }
      
      public function __paymentButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handlePaymentClicked(param1);
         }
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.visible = false;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_rentCollector";
                  if(!_loc3_)
                  {
                     addr004c:
                     _loc1_.dynaBmpSourceName = "minibutton_sparkle_single";
                     if(!_loc3_)
                     {
                        _loc1_.left = -2;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.top = -4;
                           if(_loc2_)
                           {
                              addr007e:
                              _loc1_.id = "paymentSparkle";
                              if(_loc2_)
                              {
                                 addr0089:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr0095:
                                       _loc1_.document = this;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00b2:
                                          this.paymentSparkle = _loc1_;
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             addr00c4:
                                             BindingManager.executeBindings(this,"paymentSparkle",this.paymentSparkle);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr00c4);
                                    }
                                    addr00d1:
                                    return _loc1_;
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr0095);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr004c);
            }
         }
         §§goto(addr00c4);
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "upsell_small";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.left = -6;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.top = -6;
                     if(!_loc3_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.visible = false;
                           if(!_loc3_)
                           {
                              addr0087:
                              _loc1_.id = "paymentSaleBadge";
                              if(_loc2_)
                              {
                                 addr0092:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr00aa);
                                    }
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr00bb);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr0092);
            }
            addr00aa:
            _loc1_.document = this;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr00bb:
               this.paymentSaleBadge = _loc1_;
               if(_loc2_)
               {
                  addr00c5:
                  BindingManager.executeBindings(this,"paymentSaleBadge",this.paymentSaleBadge);
               }
            }
            return _loc1_;
         }
         §§goto(addr00c5);
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleRollOver(param1);
         }
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleRollOut(param1);
         }
      }
      
      private function _RentCollectorOffersItemRenderer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0062);
               }
               §§goto(addr007f);
            }
            §§goto(addr007d);
         }
         addr0062:
         §§push(§§pop().§§slot[1]);
         if(_loc3_)
         {
            §§pop()[0] = new Binding(this,function():Array
            {
               var _loc1_:* = [FilterUtils.createDropShadowTextFilter()];
               return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
            },null,"header.filters");
            addr007f:
            addr007d:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get assistantIcon() : BriskImageDynaLib
      {
         return this._1670087799assistantIcon;
      }
      
      public function set assistantIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1670087799assistantIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr004b:
                  this._1670087799assistantIcon = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assistantIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332194002background;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1332194002background = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._949820541flavourLabel = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
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
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1221270899header;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1221270899header = param1;
                  if(!_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0054);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerBG() : BriskImageDynaLib
      {
         return this._1115260014headerBG;
      }
      
      public function set headerBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1115260014headerBG;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1115260014headerBG = param1;
                  addr0043:
                  if(_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005b);
            }
            addr0081:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentButton() : MultistateButton
      {
         return this._945498328paymentButton;
      }
      
      public function set paymentButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._945498328paymentButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._945498328paymentButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentButtonGroup() : Group
      {
         return this._2131928199paymentButtonGroup;
      }
      
      public function set paymentButtonGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2131928199paymentButtonGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2131928199paymentButtonGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0055:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentButtonGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0055);
            }
            addr0064:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentHoverLabel() : LocaLabel
      {
         return this._868554306paymentHoverLabel;
      }
      
      public function set paymentHoverLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._868554306paymentHoverLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  this._868554306paymentHoverLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentHoverLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentSaleBadge() : BriskImageDynaLib
      {
         return this._805360694paymentSaleBadge;
      }
      
      public function set paymentSaleBadge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._805360694paymentSaleBadge;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0041:
                  this._805360694paymentSaleBadge = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentSaleBadge",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentSparkle() : BriskImageDynaLib
      {
         return this._1287581744paymentSparkle;
      }
      
      public function set paymentSparkle(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1287581744paymentSparkle;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1287581744paymentSparkle = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentSparkle",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1082037139purchaseButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
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
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleBadge() : BriskImageDynaLib
      {
         return this._128319588saleBadge;
      }
      
      public function set saleBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._128319588saleBadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._128319588saleBadge = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
   }
}

