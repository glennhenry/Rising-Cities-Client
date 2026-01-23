package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryOccupiedSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10:BriskImageDynaLib;
      
      private var _514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1:Group;
      
      private var _2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1:VGroup;
      
      private var _1233113849amountGroup:HGroup;
      
      private var _41846797blockedGroup:HGroup;
      
      private var _262472981departmentIcon:BriskImageDynaLib;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1282346808removeBtn:DynamicImageButton;
      
      private var _860889977removeSlotBg:BriskImageDynaLib;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _288785898residentIconGroup:HGroup;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryOccupiedSlotSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.minHeight = 87;
                  if(_loc1_)
                  {
                     this.minWidth = 82;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr005d:
                        this.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib2_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_Group1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib8_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_DynamicImageButton1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup3_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib12_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup4_i()];
                        if(_loc1_ || _loc1_)
                        {
                           addr00ab:
                           this.currentState = "normal";
                           if(_loc1_ || Boolean(this))
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"over",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_blue"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"dynaBmpSourceName",
                                    "value":"abort_over"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"removeBtn",
                                    "name":"includeInLayout",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"removeBtn",
                                    "name":"visible",
                                    "value":true
                                 })]
                              }),new State({
                                 "name":"overNoRemove",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_blue"
                                 })]
                              }),new State({
                                 "name":"overSelected",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_blue"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"itemBackground",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"dynaBmpSourceName",
                                    "value":"abort_over"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"includeInLayout",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"residentIconGroup",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"departmentIcon",
                                    "name":"alpha",
                                    "value":0.5
                                 })]
                              }),new State({
                                 "name":"overEmergencyBlocked",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_red"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"itemBackground",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"departmentIcon",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"blockedGroup",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"blockedGroup",
                                    "name":"includeInLayout",
                                    "value":true
                                 })]
                              }),new State({
                                 "name":"overItem",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_red"
                                 })]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              }),new State({
                                 "name":"selected",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"slotBg",
                                    "name":"dynaBmpSourceName",
                                    "value":"slot_bg_blue"
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"itemBackground",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"includeInLayout",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"residentIconGroup",
                                    "name":"alpha",
                                    "value":0.5
                                 }),new SetProperty().initializeFromObject({
                                    "target":"departmentIcon",
                                    "name":"alpha",
                                    "value":0.5
                                 })]
                              })];
                              addr00bf:
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00ab);
         }
         §§goto(addr005d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         loop0:
         while(true)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || Boolean(this))
            {
               §§push("normal");
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(0);
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr0280:
                           §§push(2);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("selected");
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || Boolean(this))
                           {
                              addr0230:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc4_ && Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0280);
                                 }
                              }
                              else
                              {
                                 §§push("over");
                                 if(_loc5_ || Boolean(this))
                                 {
                                    addr025f:
                                    §§push(_loc3_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr026e:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             §§goto(addr0280);
                                          }
                                          else
                                          {
                                             addr0294:
                                             §§push(3);
                                             if(_loc4_ && param2)
                                             {
                                             }
                                          }
                                          addr02c1:
                                          switch(§§pop())
                                          {
                                             case 0:
                                             case 1:
                                                break;
                                             case 2:
                                             case 3:
                                                §§push(this.hostComponent);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().data);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop().itemAtCursor)
                                                      {
                                                         if(!(_loc5_ || Boolean(this)))
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.hostComponent);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop().data);
                                                            if(!(_loc4_ && Boolean(param1)))
                                                            {
                                                               §§push(§§pop().item);
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(§§pop() == this.hostComponent.data.itemAtCursor)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push("overSelected");
                                                                        if(_loc5_)
                                                                        {
                                                                           param1 = §§pop();
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr011f:
                                                                           §§push(this.hostComponent);
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop().data);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().emergencyRunning);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc5_ || Boolean(param1))
                                                                                    {
                                                                                       addr0150:
                                                                                       var _temp_20:* = §§pop();
                                                                                       §§push(_temp_20);
                                                                                       if(_temp_20)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr0169:
                                                                                             §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr0175:
                                                                                             addr0173:
                                                                                             addr0178:
                                                                                             §§push(this.hostComponent.data.item.sortCategory);
                                                                                             if(_loc4_ && Boolean(param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop() == PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push("overEmergencyBlocked");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01a4:
                                                                                             param1 = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr01b3:
                                                                                          param1 = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr0150);
                                                                              }
                                                                              §§goto(addr0175);
                                                                           }
                                                                           §§goto(addr0173);
                                                                        }
                                                                        §§goto(addr01a4);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("overItem");
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr00fb:
                                                                     param1 = §§pop();
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr011f);
                                                               }
                                                               else
                                                               {
                                                                  addr00dc:
                                                                  §§push(§§pop().configItem.destroyable);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push("over");
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr00fb);
                                                                           }
                                                                           §§goto(addr01a4);
                                                                        }
                                                                        §§goto(addr011f);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("overNoRemove");
                                                                        if(_loc5_)
                                                                        {
                                                                           param1 = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr011f);
                                                                        }
                                                                     }
                                                                     §§goto(addr01a4);
                                                                  }
                                                               }
                                                               §§goto(addr0169);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr00c3:
                                                            §§push(§§pop().data);
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                               §§push(§§pop().item);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr00dc);
                                                               }
                                                               §§goto(addr0178);
                                                            }
                                                         }
                                                         §§goto(addr0175);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.hostComponent);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr00c3);
                                                         }
                                                      }
                                                      §§goto(addr0173);
                                                   }
                                                   §§goto(addr0175);
                                                }
                                                §§goto(addr00c3);
                                             default:
                                                §§goto(addr01b3);
                                                §§push("normal");
                                          }
                                          super.setCurrentState(param1,param2);
                                          break;
                                       }
                                       addr0290:
                                       addr028f:
                                       if("overSelected" === _loc3_)
                                       {
                                          §§goto(addr0294);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       §§goto(addr02c1);
                                       §§goto(addr0294);
                                    }
                                    §§goto(addr0290);
                                 }
                                 §§goto(addr028f);
                              }
                              §§goto(addr02c1);
                           }
                           §§goto(addr026e);
                        }
                        §§goto(addr028f);
                     }
                     §§goto(addr02c1);
                  }
                  §§goto(addr0230);
               }
               §§goto(addr025f);
            }
            §§goto(addr0280);
         }
      }
      
      private function handleRemoveBtnOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this.slotBg.visible = this.slotBg.includeInLayout = false;
            if(!_loc4_)
            {
               this.removeSlotBg.visible = this.removeSlotBg.includeInLayout = true;
            }
         }
      }
      
      private function handleRemoveBtnOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.slotBg.visible = this.slotBg.includeInLayout = true;
            if(_loc3_)
            {
               addr003e:
               this.removeSlotBg.visible = this.removeSlotBg.includeInLayout = false;
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.top = 5;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0056);
               }
               §§goto(addr00a9);
            }
            addr0056:
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "item_master_bg_normal";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "slotBg";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0087:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a9:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr00b2:
                              this.slotBg = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00bc:
                                 BindingManager.executeBindings(this,"slotBg",this.slotBg);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr0087);
            }
            addr00c9:
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 5;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "slot_bg_red";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.visible = false;
                           if(_loc2_ || _loc3_)
                           {
                              addr0087:
                              _loc1_.id = "removeSlotBg";
                              if(!_loc3_)
                              {
                                 addr009c:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          addr00b1:
                                          this.removeSlotBg = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00bb:
                                             BindingManager.executeBindings(this,"removeSlotBg",this.removeSlotBg);
                                          }
                                          §§goto(addr00c8);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    §§goto(addr00c8);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr0087);
            }
            §§goto(addr009c);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.bottom = 0;
            if(_loc2_)
            {
               _loc1_.height = 22;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.top = 68;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.alpha = 1;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0081:
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib3_c(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup2_i()];
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00a5:
                              _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_Group1";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00c9:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00d2:
                                          this._PlayfieldItemInventoryOccupiedSlotSkin_Group1 = _loc1_;
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             addr00e4:
                                             BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",this._PlayfieldItemInventoryOccupiedSlotSkin_Group1);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00d2);
                              }
                           }
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr00e4);
            }
            §§goto(addr00a5);
         }
         §§goto(addr00e4);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 22;
            if(_loc3_)
            {
               _loc1_.width = 59;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0063);
            }
            addr0051:
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               addr0063:
               _loc1_.dynaLibName = "gui_ui_inventory";
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "building_postit";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00a1:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a5);
                  }
               }
               §§goto(addr00a1);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.top = 4;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.gap = 2;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.visible = false;
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib5_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib6_i()];
                           if(_loc2_)
                           {
                              addr0089:
                              _loc1_.id = "improvementGroup";
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00a8:
                                       _loc1_.document = this;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00c5:
                                          this.improvementGroup = _loc1_;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00d7:
                                             BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
                                          }
                                       }
                                    }
                                    §§goto(addr00e4);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00d7);
                           }
                        }
                        addr00e4:
                        return _loc1_;
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00c5);
            }
            §§goto(addr006d);
         }
         §§goto(addr00a8);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.height = 15;
            if(!_loc3_)
            {
               _loc1_.width = 15;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc2_)
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr00b1);
                  }
               }
               addr0062:
               _loc1_.id = "improvementSlot1";
               if(_loc2_ || _loc3_)
               {
                  addr0075:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr00a7);
                        }
                        §§goto(addr00b1);
                     }
                  }
               }
               addr00a7:
               this.improvementSlot1 = _loc1_;
               if(!_loc3_)
               {
                  addr00b1:
                  BindingManager.executeBindings(this,"improvementSlot1",this.improvementSlot1);
               }
               §§goto(addr00be);
            }
            §§goto(addr0075);
         }
         addr00be:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.height = 15;
            if(!_loc3_)
            {
               _loc1_.width = 15;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "improvementSlot2";
                        if(_loc2_)
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr00ad);
               }
               addr008f:
               _loc1_.document = this;
               if(_loc2_ || _loc2_)
               {
                  addr00ad:
                  this.improvementSlot2 = _loc1_;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr00bf:
                     BindingManager.executeBindings(this,"improvementSlot2",this.improvementSlot2);
                  }
               }
               return _loc1_;
            }
            §§goto(addr00ad);
         }
         §§goto(addr007b);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.height = 15;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 15;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc3_)
                     {
                        _loc1_.id = "improvementSlot3";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008b:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§goto(addr009c);
                                 }
                              }
                              §§goto(addr00a6);
                           }
                           addr009c:
                           this.improvementSlot3 = _loc1_;
                           if(_loc3_)
                           {
                              addr00a6:
                              BindingManager.executeBindings(this,"improvementSlot3",this.improvementSlot3);
                           }
                           §§goto(addr00b3);
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0052);
            }
            addr00b3:
            return _loc1_;
         }
         §§goto(addr00a6);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.top = 4;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.visible = false;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib7_c(),this._PlayfieldItemInventoryOccupiedSlotSkin_LocaLabel1_i()];
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.id = "amountGroup";
                           if(_loc2_)
                           {
                              addr00a6:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00b2:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00bb);
                                    }
                                 }
                                 §§goto(addr00c5);
                              }
                              addr00bb:
                              this.amountGroup = _loc1_;
                              if(_loc2_)
                              {
                                 addr00c5:
                                 BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00d2);
                     }
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00b2);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.height = 14;
            if(_loc2_)
            {
               _loc1_.width = 15;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!_loc3_)
                  {
                     addr0055:
                     _loc1_.dynaBmpSourceName = "amount_icon_mini";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0074:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0074);
            }
         }
         §§goto(addr0055);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.text = "1";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "improvementAmount";
               if(!_loc2_)
               {
                  _loc1_.setStyle("paddingTop",3);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "itemAmountLabel";
                     if(!_loc2_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008b:
                                 this.itemAmountLabel = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
                                 }
                              }
                              §§goto(addr00aa);
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr008b);
            }
            §§goto(addr006b);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.top = 8;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0039);
               }
               §§goto(addr004f);
            }
            addr0039:
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bg_playfieldItem_blue";
               if(_loc2_)
               {
                  addr004f:
                  _loc1_.width = 64;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.height = 63;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.alpha = 1;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr00b7);
                     }
                  }
                  addr0093:
                  _loc1_.id = "itemBackground";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00b7:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00c0:
                              this.itemBackground = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00ca:
                                 BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr00ca);
            }
            addr00d7:
            return _loc1_;
         }
         §§goto(addr00c0);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 64;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 63;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = 9;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr008f:
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00a1:
                              _loc1_.alpha = 1;
                              if(!_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib9_i()];
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00c4:
                                    _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1";
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00d7:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00f8:
                                             _loc1_.document = this;
                                             if(!_loc2_)
                                             {
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr0113);
                                          }
                                       }
                                       addr0101:
                                       this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1 = _loc1_;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr0113:
                                          BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1);
                                       }
                                       §§goto(addr0120);
                                    }
                                 }
                                 addr0120:
                                 return _loc1_;
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00f8);
               }
               §§goto(addr00d7);
            }
            §§goto(addr008f);
         }
         §§goto(addr00d7);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.maintainAspectRation = true;
            if(_loc2_)
            {
               _loc1_.smoothing = true;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0044);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0081);
         }
         addr0044:
         _loc1_.maxWidth = 50;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxHeight = 50;
            if(_loc2_)
            {
               _loc1_.id = "itemGfx";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr00a3);
                        }
                        §§goto(addr00b5);
                     }
                  }
               }
            }
            addr00a3:
            this.itemGfx = _loc1_;
            if(_loc2_ || _loc3_)
            {
               addr00b5:
               BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
            }
            §§goto(addr00c2);
         }
         addr00c2:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.height = 25;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 25;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "abort_normal";
                     if(!_loc2_)
                     {
                        addr0067:
                        _loc1_.right = 0;
                        if(!_loc2_)
                        {
                           _loc1_.top = 0;
                           if(_loc3_)
                           {
                              _loc1_.includeInLayout = false;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008c:
                                 _loc1_.visible = false;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0095);
                                 }
                                 §§goto(addr00d4);
                              }
                              addr0095:
                              _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10";
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00c1:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00ca:
                                          this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10 = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00d4:
                                             BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10);
                                          }
                                       }
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00e1);
                           }
                           addr00e1:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0067);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00c1);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "inventoryRemoveBtn";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.right = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0082:
                           _loc1_.addEventListener("rollOver",this.__removeBtn_rollOver);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.addEventListener("rollOut",this.__removeBtn_rollOut);
                              if(_loc2_)
                              {
                                 _loc1_.id = "removeBtn";
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00bf:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00d7:
                                          _loc1_.document = this;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr00e8);
                                          }
                                          §§goto(addr00f2);
                                       }
                                    }
                                    addr00e8:
                                    this.removeBtn = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00f2:
                                       BindingManager.executeBindings(this,"removeBtn",this.removeBtn);
                                    }
                                    §§goto(addr00ff);
                                 }
                              }
                              addr00ff:
                              return _loc1_;
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr00e8);
               }
               §§goto(addr0082);
            }
            §§goto(addr00d7);
         }
         §§goto(addr00e8);
      }
      
      public function __removeBtn_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleRemoveBtnOver(param1);
         }
      }
      
      public function __removeBtn_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleRemoveBtnOut(param1);
         }
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 26;
                  if(_loc3_)
                  {
                     _loc1_.height = 20;
                     if(_loc3_)
                     {
                        addr0061:
                        _loc1_.left = -2;
                        if(!_loc2_)
                        {
                           _loc1_.top = 0;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.visible = false;
                              if(_loc3_)
                              {
                                 addr0093:
                                 _loc1_.alpha = 1;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00a6:
                                    _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib11_i()];
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00be);
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr00fd);
                              }
                              addr00be:
                              _loc1_.id = "residentIconGroup";
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00f3:
                                          this.residentIconGroup = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00fd:
                                             BindingManager.executeBindings(this,"residentIconGroup",this.residentIconGroup);
                                          }
                                       }
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr00f3);
                              }
                              addr010a:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr00f3);
         }
         §§goto(addr0061);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.id = "residentIcon";
               if(!_loc3_)
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0058:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0061:
                           this.residentIcon = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0061);
            }
            §§goto(addr0058);
         }
         §§goto(addr004c);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 24;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.width = 20;
                  if(_loc3_)
                  {
                     _loc1_.alpha = 1;
                     if(!_loc2_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr00d8);
                  }
                  §§goto(addr0092);
               }
               addr0063:
               _loc1_.visible = false;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.includeInLayout = false;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0092:
                     _loc1_.top = 0;
                     if(_loc3_)
                     {
                        addr009c:
                        _loc1_.left = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.id = "departmentIcon";
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00c1:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00d8:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00e9);
                                    }
                                    §§goto(addr00f3);
                                 }
                              }
                              addr00e9:
                              this.departmentIcon = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00f3:
                                 BindingManager.executeBindings(this,"departmentIcon",this.departmentIcon);
                              }
                           }
                           §§goto(addr0100);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00d8);
               }
               addr0100:
               return _loc1_;
            }
            §§goto(addr009c);
         }
         §§goto(addr00f3);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 72;
            if(_loc2_)
            {
               _loc1_.height = 87;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_)
                           {
                              _loc1_.horizontalCenter = 0;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0098:
                                 _loc1_.top = 5;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00aa:
                                    _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib13_c()];
                                    if(!_loc3_)
                                    {
                                       addr00ba:
                                       _loc1_.id = "blockedGroup";
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00cd:
                                          if(!_loc1_.document)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr00e6:
                                                _loc1_.document = this;
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr00ef);
                                                }
                                             }
                                             §§goto(addr0101);
                                          }
                                       }
                                       addr00ef:
                                       this.blockedGroup = _loc1_;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr0101:
                                          BindingManager.executeBindings(this,"blockedGroup",this.blockedGroup);
                                       }
                                       §§goto(addr010e);
                                    }
                                 }
                                 §§goto(addr00e6);
                              }
                              addr010e:
                              return _loc1_;
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00ef);
            }
            §§goto(addr0098);
         }
         §§goto(addr00e6);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_no";
               §§goto(addr0036);
            }
            §§goto(addr0058);
         }
         addr0036:
         if(!(_loc2_ && _loc3_))
         {
            addr0058:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10() : BriskImageDynaLib
      {
         return this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_Group1() : Group
      {
         return this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_Group1(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1 = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006d);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1() : VGroup
      {
         return this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get amountGroup() : HGroup
      {
         return this._1233113849amountGroup;
      }
      
      public function set amountGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1233113849amountGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1233113849amountGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get blockedGroup() : HGroup
      {
         return this._41846797blockedGroup;
      }
      
      public function set blockedGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._41846797blockedGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._41846797blockedGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockedGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr005c);
                  }
                  §§goto(addr004d);
               }
            }
            addr005c:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentIcon() : BriskImageDynaLib
      {
         return this._262472981departmentIcon;
      }
      
      public function set departmentIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._262472981departmentIcon;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._262472981departmentIcon = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006d);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._922505399improvementGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot1() : BriskImageDynaLib
      {
         return this._911601987improvementSlot1;
      }
      
      public function set improvementSlot1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911601987improvementSlot1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._911601987improvementSlot1 = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot1",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot2() : BriskImageDynaLib
      {
         return this._911601986improvementSlot2;
      }
      
      public function set improvementSlot2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911601986improvementSlot2;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0042:
                  this._911601986improvementSlot2 = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot2",_loc2_,param1));
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
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot3() : BriskImageDynaLib
      {
         return this._911601985improvementSlot3;
      }
      
      public function set improvementSlot3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._911601985improvementSlot3;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0035:
                  this._911601985improvementSlot3 = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot3",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0035);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1376040855itemAmountLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1295462561itemBackground = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2116181862itemGfx;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._2116181862itemGfx = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
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
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get removeBtn() : DynamicImageButton
      {
         return this._1282346808removeBtn;
      }
      
      public function set removeBtn(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1282346808removeBtn;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1282346808removeBtn = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeBtn",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get removeSlotBg() : BriskImageDynaLib
      {
         return this._860889977removeSlotBg;
      }
      
      public function set removeSlotBg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._860889977removeSlotBg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._860889977removeSlotBg = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeSlotBg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._311765527residentIcon = param1;
                  if(!_loc4_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0041);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIconGroup() : HGroup
      {
         return this._288785898residentIconGroup;
      }
      
      public function set residentIconGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._288785898residentIconGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._288785898residentIconGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIconGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._899454237slotBg = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0073);
               }
               addr0064:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBg",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr004d:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0058);
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
      }
   }
}

