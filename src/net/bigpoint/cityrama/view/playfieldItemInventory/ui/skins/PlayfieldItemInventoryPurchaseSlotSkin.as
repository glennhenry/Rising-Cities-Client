package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PurchaseSlotButton;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryPurchaseSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1391742627lockedIcon:BriskImageDynaLib;
      
      private var _633230747purchaseBtn:PurchaseSlotButton;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryPurchaseSlotSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.minHeight = 87;
                  if(_loc1_ || _loc1_)
                  {
                     this.minWidth = 82;
                     if(!_loc2_)
                     {
                        this.mxmlContent = [this._PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryPurchaseSlotSkin_PurchaseSlotButton1_i(),this._PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib2_i()];
                        if(_loc1_)
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0097);
            }
            addr0083:
            this.currentState = "normal";
            if(_loc1_ || _loc1_)
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"over",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               })];
               addr0097:
            }
            return;
         }
         §§goto(addr0097);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
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
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || param2)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push("normal");
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(!§§pop());
                     if(_loc3_ || Boolean(this))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr008f);
                        }
                     }
                     addr0090:
                     §§goto(addr0074);
                  }
                  §§goto(addr008f);
               }
               addr0074:
               §§goto(addr0071);
            }
            addr0071:
            §§push(param1 == "over");
            if(_loc3_ || Boolean(this))
            {
               addr008f:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  addr009a:
                  return;
               }
            }
            else
            {
               super.setCurrentState(param1,param2);
            }
            §§goto(addr00af);
         }
         addr00af:
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.top = 5;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "slot_bg_dark";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "slotBg";
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00a9);
            }
            addr0077:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr008e:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr009f);
                  }
                  §§goto(addr00a9);
               }
            }
            addr009f:
            this.slotBg = _loc1_;
            if(_loc2_)
            {
               addr00a9:
               BindingManager.executeBindings(this,"slotBg",this.slotBg);
            }
            return _loc1_;
         }
         §§goto(addr008e);
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_PurchaseSlotButton1_i() : PurchaseSlotButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PurchaseSlotButton = new PurchaseSlotButton();
         if(!_loc3_)
         {
            _loc1_.top = 40;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "purchaseBtn";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr008e:
                              this.purchaseBtn = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"purchaseBtn",this.purchaseBtn);
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr008e);
                  }
                  addr00ad:
                  return _loc1_;
               }
               §§goto(addr008e);
            }
            §§goto(addr00a0);
         }
         §§goto(addr0071);
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_slot_locked";
               if(!_loc2_)
               {
                  _loc1_.left = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = 0;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0072);
               }
               addr0067:
               _loc1_.id = "lockedIcon";
               if(_loc3_)
               {
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr009b);
                        }
                     }
                     §§goto(addr00a5);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0072);
         }
         addr009b:
         this.lockedIcon = _loc1_;
         if(_loc3_)
         {
            addr00a5:
            BindingManager.executeBindings(this,"lockedIcon",this.lockedIcon);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedIcon() : BriskImageDynaLib
      {
         return this._1391742627lockedIcon;
      }
      
      public function set lockedIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1391742627lockedIcon;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1391742627lockedIcon = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedIcon",_loc2_,param1));
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
      public function get purchaseBtn() : PurchaseSlotButton
      {
         return this._633230747purchaseBtn;
      }
      
      public function set purchaseBtn(param1:PurchaseSlotButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._633230747purchaseBtn;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0038:
                  this._633230747purchaseBtn = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseBtn",_loc2_,param1));
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
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get slotBg() : BriskImageDynaLib
      {
         return this._899454237slotBg;
      }
      
      public function set slotBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._899454237slotBg;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._899454237slotBg = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0075);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBg",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PlayfieldItemInventorySlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PlayfieldItemInventorySlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr003c:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr003c);
      }
   }
}

