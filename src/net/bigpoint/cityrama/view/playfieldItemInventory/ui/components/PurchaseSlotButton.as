package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class PurchaseSlotButton extends Group implements IBindingClient
   {
      
      public static const PURCHASE_BTN_CLICKED:String = "PURCHASE_BTN_CLICKED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         PURCHASE_BTN_CLICKED = "PURCHASE_BTN_CLICKED";
      }
      
      private var _1501304571plusGroup:HGroup;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1870554669smallPlusButton:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PurchaseSlotButton()
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
         if(!_loc3_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr004b:
                     §§pop().§§slot[5] = null;
                     addr004a:
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    super();
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr009b:
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00ae:
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._PurchaseSlotButton_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00c6:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr00e0:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            addr00ea:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PurchaseSlotButtonWatcherSetupUtil");
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr0123:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr012a:
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr014b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return PurchaseSlotButton[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr018e:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.width = 61;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.height = 33;
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr01d2:
                                                                                             this.mxmlContent = [this._PurchaseSlotButton_MultistateButton1_i(),this._PurchaseSlotButton_HGroup1_i()];
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr01f1:
                                                                                                this.addEventListener("mouseOver",this.___PurchaseSlotButton_Group1_mouseOver);
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr020b:
                                                                                                   this.addEventListener("mouseOut",this.___PurchaseSlotButton_Group1_mouseOut);
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      addr0226:
                                                                                                      i = 0;
                                                                                                      addr0224:
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
                                                                                                               if(!(_loc4_ || _loc1_))
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     var _temp_19:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_19;
                                                                                                                     if(!(_loc3_ && _loc3_))
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
                                                                                                   addr0293:
                                                                                                }
                                                                                                §§goto(addr0224);
                                                                                             }
                                                                                             §§goto(addr020b);
                                                                                          }
                                                                                          §§goto(addr01f1);
                                                                                       }
                                                                                       §§goto(addr01d2);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0293);
                                                                           }
                                                                           §§goto(addr018e);
                                                                        }
                                                                        §§goto(addr0226);
                                                                     }
                                                                     §§goto(addr0293);
                                                                  }
                                                                  §§goto(addr0226);
                                                               }
                                                               §§goto(addr0123);
                                                            }
                                                            §§goto(addr014b);
                                                         }
                                                         §§goto(addr01d2);
                                                      }
                                                      §§goto(addr012a);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr00e0);
                                             }
                                             §§goto(addr020b);
                                          }
                                          §§goto(addr012a);
                                       }
                                       §§goto(addr00c6);
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr020b);
                              }
                              §§goto(addr009b);
                           }
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr012a);
               }
               §§goto(addr020b);
            }
            §§goto(addr004b);
         }
         §§goto(addr004a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            PurchaseSlotButton._watcherSetupUtil = param1;
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
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
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
      
      public function set showPlus(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.plusGroup.includeInLayout = this.smallPlusButton.visible = param1;
            if(_loc4_ || param1)
            {
               addr0044:
               this.purchaseButton.showPlus = param1;
            }
            return;
         }
         §§goto(addr0044);
      }
      
      public function set price(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this.purchaseButton);
            if(_loc2_ || Boolean(param1))
            {
               §§pop().priceToConfirm = param1;
               if(_loc2_)
               {
                  addr0048:
                  this.purchaseButton.label = LocaUtils.getThousendSeperatedNumber(param1);
                  addr0044:
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0044);
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new Event(PURCHASE_BTN_CLICKED,true));
         }
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.plusGroup.includeInLayout)
            {
               if(_loc2_)
               {
                  addr0026:
                  this.smallPlusButton.dynaBmpSourceName = "mini_plus_over";
               }
            }
            return;
         }
         §§goto(addr0026);
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(this.plusGroup.includeInLayout)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0040:
                  this.smallPlusButton.dynaBmpSourceName = "mini_plus";
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function _PurchaseSlotButton_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "mediumSkinPurchase";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.libNameLeft = "gui_resources_icons";
                     if(!_loc3_)
                     {
                        _loc1_.imageNameLeft = "rc_icon_small";
                        if(_loc2_)
                        {
                           addr006a:
                           _loc1_.useConfirmation = true;
                           if(!_loc3_)
                           {
                              _loc1_.addEventListener("click",this.__purchaseButton_click);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr00c8);
                     }
                     addr008c:
                     _loc1_.id = "purchaseButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr00b6:
                                 this.purchaseButton = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00c8:
                                    BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00d5);
                  }
               }
               §§goto(addr006a);
            }
         }
         addr00d5:
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleButtonClick(param1);
         }
      }
      
      private function _PurchaseSlotButton_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.right = -6;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.top = -6;
                     if(!_loc3_)
                     {
                        §§goto(addr0061);
                     }
                  }
                  §§goto(addr00d2);
               }
               addr0061:
               _loc1_.includeInLayout = true;
               if(_loc2_ || _loc3_)
               {
                  addr007e:
                  _loc1_.visible = true;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._PurchaseSlotButton_BriskImageDynaLib1_i()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr00d2);
               }
               addr00a7:
               _loc1_.id = "plusGroup";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00d2:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr00db);
                        }
                        §§goto(addr00ed);
                     }
                  }
               }
               addr00db:
               this.plusGroup = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr00ed:
                  BindingManager.executeBindings(this,"plusGroup",this.plusGroup);
               }
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr00ed);
      }
      
      private function _PurchaseSlotButton_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_plus";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "smallPlusButton";
                  if(_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0073:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr007c);
                           }
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0073);
               }
               addr007c:
               this.smallPlusButton = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008e:
                  BindingManager.executeBindings(this,"smallPlusButton",this.smallPlusButton);
               }
               §§goto(addr009b);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      public function ___PurchaseSlotButton_Group1_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleMouseOver(param1);
         }
      }
      
      public function ___PurchaseSlotButton_Group1_mouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleMouseOut(param1);
         }
      }
      
      private function _PurchaseSlotButton_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§pop()[0] = new Binding(this,function():Boolean
                     {
                        return this.enabled;
                     },null,"purchaseButton.enabled");
                     addr007d:
                     addr007b:
                     return result;
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr007b);
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusGroup() : HGroup
      {
         return this._1501304571plusGroup;
      }
      
      public function set plusGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1501304571plusGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1501304571plusGroup = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0051);
               }
               addr0042:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
         }
         addr0060:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1082037139purchaseButton = param1;
                  addr0034:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get smallPlusButton() : BriskImageDynaLib
      {
         return this._1870554669smallPlusButton;
      }
      
      public function set smallPlusButton(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1870554669smallPlusButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1870554669smallPlusButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallPlusButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

