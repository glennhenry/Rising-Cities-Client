package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryLockedSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1233113849amountGroup:HGroup;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1391742627lockedIcon:BriskImageDynaLib;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryLockedSlotSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr002f:
                  this.minHeight = 87;
                  if(!_loc2_)
                  {
                     addr003a:
                     this.minWidth = 82;
                     if(_loc1_ || Boolean(this))
                     {
                        this.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryLockedSlotSkin_Group1_c(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib7_i(),this._PlayfieldItemInventoryLockedSlotSkin_VGroup1_c(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib9_i()];
                        if(_loc1_)
                        {
                           §§goto(addr007f);
                        }
                     }
                     §§goto(addr008b);
                  }
                  addr007f:
                  this.currentState = "disabled";
                  if(!_loc2_)
                  {
                     states = [new State({
                        "name":"disabled",
                        "overrides":[]
                     }),new State({
                        "name":"over",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"slotBg",
                           "name":"dynaBmpSourceName",
                           "value":"slot_bg_red"
                        })]
                     })];
                     addr008b:
                  }
                  §§goto(addr00d6);
               }
               addr00d6:
               return;
            }
            §§goto(addr003a);
         }
         §§goto(addr002f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(param1 != "over")
            {
               if(!_loc4_)
               {
                  addr0035:
                  param1 = "disabled";
                  if(_loc3_ || Boolean(this))
                  {
                     addr0046:
                     super.setCurrentState(param1,false);
                  }
               }
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr0035);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.top = 5;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005c:
                     _loc1_.dynaBmpSourceName = "item_master_bg_normal";
                     if(_loc2_)
                     {
                        _loc1_.id = "slotBg";
                        if(_loc2_)
                        {
                           addr0072:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr008b:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr009c:
                                    this.slotBg = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00a6:
                                       BindingManager.executeBindings(this,"slotBg",this.slotBg);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00a6);
                              }
                              addr00b3:
                              return _loc1_;
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr008b);
            }
         }
         §§goto(addr005c);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.bottom = 0;
            if(!_loc2_)
            {
               _loc1_.height = 22;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  addr0046:
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr00bb);
               }
               addr0062:
               _loc1_.top = 68;
               if(!_loc2_)
               {
                  _loc1_.alpha = 0.5;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib2_c(),this._PlayfieldItemInventoryLockedSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryLockedSlotSkin_HGroup2_i()];
                     addr0077:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr00a7);
                     }
                     §§goto(addr00bb);
                  }
               }
               addr00a7:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00bb:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr0077);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 22;
            if(_loc2_)
            {
               _loc1_.width = 59;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.dynaLibName = "gui_ui_inventory";
                     if(_loc2_)
                     {
                        _loc1_.dynaBmpSourceName = "building_postit";
                        if(!_loc3_)
                        {
                           addr0073:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0087:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr0087);
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr0073);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 4;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.gap = 2;
                     if(_loc3_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib3_i(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib5_i()];
                           if(!_loc2_)
                           {
                              _loc1_.id = "improvementGroup";
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00a9);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00c7);
                        }
                     }
                     §§goto(addr00d9);
                  }
               }
            }
            addr00a9:
            _loc1_.document = this;
            if(!(_loc2_ && _loc2_))
            {
               addr00c7:
               this.improvementGroup = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00d9:
                  BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr00d9);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 15;
            if(_loc3_)
            {
               _loc1_.width = 15;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc3_)
                     {
                        _loc1_.id = "improvementSlot1";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0086:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr0097:
                                    this.improvementSlot1 = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a1:
                                       BindingManager.executeBindings(this,"improvementSlot1",this.improvementSlot1);
                                    }
                                 }
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr0086);
                     }
                     addr00ae:
                     return _loc1_;
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00a1);
            }
         }
         §§goto(addr0086);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.height = 15;
            if(_loc3_)
            {
               _loc1_.width = 15;
               if(!_loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(!_loc2_)
                     {
                        _loc1_.id = "improvementSlot2";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr007b:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr008c:
                                    this.improvementSlot2 = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"improvementSlot2",this.improvementSlot2);
                                    }
                                 }
                                 §§goto(addr00a3);
                              }
                           }
                           §§goto(addr008c);
                        }
                     }
                     addr00a3:
                     return _loc1_;
                  }
               }
               §§goto(addr008c);
            }
         }
         §§goto(addr007b);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 15;
            if(!_loc2_)
            {
               _loc1_.width = 15;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0045:
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "improvementSlot3";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00a5);
                              }
                           }
                           §§goto(addr00ae);
                        }
                        addr00a5:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr00ae:
                           this.improvementSlot3 = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              BindingManager.executeBindings(this,"improvementSlot3",this.improvementSlot3);
                           }
                        }
                        §§goto(addr00cd);
                     }
                     addr00cd:
                     return _loc1_;
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00ae);
            }
            §§goto(addr0045);
         }
         §§goto(addr0082);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.top = 4;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib6_c(),this._PlayfieldItemInventoryLockedSlotSkin_LocaLabel1_i()];
                        if(!_loc3_)
                        {
                           _loc1_.id = "amountGroup";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a9:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00ba:
                                       this.amountGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c4:
                                          BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
                                       }
                                       §§goto(addr00d1);
                                    }
                                    §§goto(addr00c4);
                                 }
                                 addr00d1:
                                 return _loc1_;
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr00ba);
            }
            §§goto(addr0089);
         }
         §§goto(addr00a9);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.height = 14;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 15;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_ || _loc2_)
                  {
                     addr006c:
                     _loc1_.dynaBmpSourceName = "amount_icon_mini";
                     if(_loc3_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr008b);
                  }
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr008b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr006c);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.text = "1";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "improvementAmount";
               if(!_loc3_)
               {
                  _loc1_.setStyle("paddingTop",3);
                  if(!_loc3_)
                  {
                     _loc1_.id = "itemAmountLabel";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0084:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008d:
                                 this.itemAmountLabel = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr009f:
                                    BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr009f);
                           }
                           addr00ac:
                           return _loc1_;
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr006c);
            }
            §§goto(addr009f);
         }
         §§goto(addr008d);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.top = 8;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "bg_playfieldItem_blue";
                     if(_loc2_ || _loc3_)
                     {
                        addr0067:
                        _loc1_.width = 64;
                        if(_loc2_)
                        {
                           _loc1_.height = 63;
                           if(!_loc3_)
                           {
                              addr007b:
                              _loc1_.alpha = 0.5;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr008e:
                                 _loc1_.id = "itemBackground";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00b2:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             addr00bb:
                                             this.itemBackground = _loc1_;
                                             if(_loc2_)
                                             {
                                                BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                                             }
                                          }
                                       }
                                       §§goto(addr00d2);
                                    }
                                    §§goto(addr00bb);
                                 }
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr0067);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.width = 64;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 63;
               if(!_loc3_)
               {
                  addr003b:
                  _loc1_.top = 9;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_ || _loc3_)
                        {
                           addr007f:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              _loc1_.alpha = 0.5;
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib8_i()];
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           addr00b7:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00c3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00c7);
                     }
                  }
                  §§goto(addr007f);
               }
               addr00c7:
               return _loc1_;
            }
            §§goto(addr003b);
         }
         §§goto(addr00b7);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.maintainAspectRation = true;
            if(!_loc3_)
            {
               _loc1_.smoothing = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.maxWidth = 50;
                  if(!_loc3_)
                  {
                     _loc1_.maxHeight = 50;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "itemGfx";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr007e:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr009a);
                                 }
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr007e);
            }
         }
         addr009a:
         this.itemGfx = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr00ac:
            BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc2_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0095);
         }
         addr0030:
         _loc1_.dynaBmpSourceName = "icon_slot_locked";
         if(_loc2_ || Boolean(this))
         {
            _loc1_.left = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.top = 0;
               if(!_loc3_)
               {
                  addr006b:
                  _loc1_.id = "lockedIcon";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0095:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr009e:
                              this.lockedIcon = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00b0:
                                 BindingManager.executeBindings(this,"lockedIcon",this.lockedIcon);
                              }
                           }
                           §§goto(addr00bd);
                        }
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr006b);
         }
         addr00bd:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get amountGroup() : HGroup
      {
         return this._1233113849amountGroup;
      }
      
      public function set amountGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1233113849amountGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1233113849amountGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGroup() : HGroup
      {
         return this._922505399improvementGroup;
      }
      
      public function set improvementGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._922505399improvementGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._922505399improvementGroup = param1;
                  if(_loc3_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr004e);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot1() : BriskImageDynaLib
      {
         return this._911601987improvementSlot1;
      }
      
      public function set improvementSlot1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._911601987improvementSlot1;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._911601987improvementSlot1 = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot1",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot2() : BriskImageDynaLib
      {
         return this._911601986improvementSlot2;
      }
      
      public function set improvementSlot2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._911601986improvementSlot2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._911601986improvementSlot2 = param1;
                  if(_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot3() : BriskImageDynaLib
      {
         return this._911601985improvementSlot3;
      }
      
      public function set improvementSlot3(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911601985improvementSlot3;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._911601985improvementSlot3 = param1;
                  if(!_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot3",_loc2_,param1));
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
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmountLabel() : LocaLabel
      {
         return this._1376040855itemAmountLabel;
      }
      
      public function set itemAmountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1376040855itemAmountLabel;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1376040855itemAmountLabel = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0065);
            }
            addr0083:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1295462561itemBackground;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1295462561itemBackground = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2116181862itemGfx;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003f:
                  this._2116181862itemGfx = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedIcon() : BriskImageDynaLib
      {
         return this._1391742627lockedIcon;
      }
      
      public function set lockedIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1391742627lockedIcon;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1391742627lockedIcon = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0060);
            }
            addr007e:
            return;
         }
         §§goto(addr0060);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._899454237slotBg = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBg",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PlayfieldItemInventorySlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PlayfieldItemInventorySlotComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
   }
}

