package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class PlayfieldItemInventoryFreeSlotSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PlayfieldItemInventoryFreeSlotSkin_HGroup3:HGroup;
      
      private var _41846797blockedGroup:HGroup;
      
      private var _262472981departmentIcon:BriskImageDynaLib;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1384890473previewGroup:Group;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _288785898residentIconGroup:HGroup;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryFreeSlotSkin()
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(null);
            if(!(_loc4_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0048:
                     §§push(null);
                     if(_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc2_))
                           {
                              addr0070:
                              §§pop().§§slot[5] = null;
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc1_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             super();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr00eb:
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._PlayfieldItemInventoryFreeSlotSkin_bindingsSetup();
                                                      if(_loc3_)
                                                      {
                                                         addr0102:
                                                         §§push(§§newactivation());
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr0125:
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  addr0134:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr0147:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0164:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryFreeSlotSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0177:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr017e:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr019c:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PlayfieldItemInventoryFreeSlotSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          addr01c0:
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr021f:
                                                                                                this.minHeight = 87;
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   addr0232:
                                                                                                   this.minWidth = 82;
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      this.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryFreeSlotSkin_Group1_i()];
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         addr026b:
                                                                                                         this.currentState = "normal";
                                                                                                         if(_loc3_ || Boolean(this))
                                                                                                         {
                                                                                                            addr027f:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"over",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"slotBg",
                                                                                                                  "name":"dynaBmpSourceName",
                                                                                                                  "value":"slot_bg_blue"
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"overBlocked",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"slotBg",
                                                                                                                  "name":"dynaBmpSourceName",
                                                                                                                  "value":"slot_bg_red"
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"blockedGroup",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"overItem",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"slotBg",
                                                                                                                  "name":"dynaBmpSourceName",
                                                                                                                  "value":"slot_bg_green"
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"previewGroup",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"previewGroup",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            })];
                                                                                                            if(_loc3_ || Boolean(this))
                                                                                                            {
                                                                                                               addr037b:
                                                                                                               i = 0;
                                                                                                               addr0379:
                                                                                                            }
                                                                                                         }
                                                                                                         var _temp_24:*;
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
                                                                                                                     if(_loc4_ && Boolean(this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc3_ || _loc1_)
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
                                                                                                         while(var _temp_24:* = §§pop(), §§pop().§§slot[4] = _temp_24, _loc3_);
                                                                                                         
                                                                                                         return;
                                                                                                         addr03dd:
                                                                                                      }
                                                                                                      §§goto(addr0379);
                                                                                                   }
                                                                                                   §§goto(addr03dd);
                                                                                                }
                                                                                                §§goto(addr0379);
                                                                                             }
                                                                                             §§goto(addr03dd);
                                                                                          }
                                                                                          §§goto(addr021f);
                                                                                       }
                                                                                       §§goto(addr0232);
                                                                                    }
                                                                                    §§goto(addr027f);
                                                                                 }
                                                                                 §§goto(addr037b);
                                                                              }
                                                                              §§goto(addr01c0);
                                                                           }
                                                                           §§goto(addr037b);
                                                                        }
                                                                        §§goto(addr0232);
                                                                     }
                                                                  }
                                                                  §§goto(addr019c);
                                                               }
                                                               §§goto(addr0164);
                                                            }
                                                            §§goto(addr026b);
                                                         }
                                                         §§goto(addr017e);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr037b);
                                                }
                                                §§goto(addr0125);
                                             }
                                             §§goto(addr0177);
                                          }
                                          §§goto(addr021f);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr026b);
                                 }
                                 §§goto(addr0177);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr037b);
                        }
                        §§goto(addr027f);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0134);
               }
               §§goto(addr01c0);
            }
            §§goto(addr0070);
         }
         §§goto(addr0048);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            PlayfieldItemInventoryFreeSlotSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0040:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = param1;
         if(!_loc4_)
         {
            §§push("normal");
            if(_loc5_ || Boolean(this))
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        addr0153:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr0181:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("over");
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           addr0177:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr0181);
                              }
                              else
                              {
                                 addr0195:
                                 §§push(2);
                                 if(_loc4_ && param2)
                                 {
                                 }
                              }
                              §§goto(addr01c2);
                           }
                           else
                           {
                              §§goto(addr0191);
                           }
                        }
                        addr0191:
                        §§goto(addr0190);
                     }
                     addr0190:
                     if("overSelected" === _loc3_)
                     {
                        §§goto(addr0195);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr01c2);
                  }
                  addr01c2:
                  switch(§§pop())
                  {
                     case 0:
                        break;
                     case 1:
                     case 2:
                        §§push(this.hostComponent);
                        if(!_loc4_)
                        {
                           §§push(§§pop().data);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(§§pop().itemAtCursor);
                              if(_loc5_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    addr0063:
                                    addr0060:
                                    addr005e:
                                    if(this.hostComponent.data.itemAtCursor.isBlocked)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push("overBlocked");
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          param1 = §§pop();
                                          if(_loc4_ && Boolean(_loc3_))
                                          {
                                          }
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push("overItem");
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          param1 = §§pop();
                                          if(_loc5_ || param2)
                                          {
                                             this.setPreviewItem();
                                             if(_loc5_ || Boolean(param1))
                                             {
                                             }
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push("over");
                                    if(_loc4_ && Boolean(this))
                                    {
                                       addr0102:
                                       param1 = §§pop();
                                       if(_loc5_ || Boolean(param1))
                                       {
                                       }
                                       break;
                                    }
                                 }
                                 param1 = §§pop();
                                 if(_loc5_ || Boolean(this))
                                 {
                                 }
                                 break;
                              }
                              §§goto(addr0063);
                           }
                           §§goto(addr0060);
                        }
                        §§goto(addr005e);
                     default:
                        §§goto(addr0102);
                        §§push("normal");
                  }
                  super.setCurrentState(param1,param2);
                  return;
               }
               §§goto(addr0177);
            }
            §§goto(addr0190);
         }
         §§goto(addr0153);
      }
      
      private function setPreviewItem() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.hostComponent);
            if(!_loc3_)
            {
               §§push(§§pop().data);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop().itemAtCursor);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.itemBackground.briskDynaVo = this.hostComponent.data.itemAtCursor.bgGfxVo;
                           if(!(_loc3_ && _loc2_))
                           {
                              this.itemGfx.briskDynaVo = this.hostComponent.data.itemAtCursor.playfieldItemGfxVo;
                              if(_loc2_)
                              {
                                 this.improvementGroup.visible = this.hostComponent.data.itemAtCursor.improvementGfx != null;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(this.hostComponent);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00b9:
                                       §§push(§§pop().data);
                                       if(_loc2_)
                                       {
                                          addr00c0:
                                          §§push(§§pop().itemAtCursor);
                                          if(!_loc3_)
                                          {
                                             if(§§pop().improvementGfx)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00dc:
                                                   this.improvementSlot1.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[0];
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      this.improvementSlot2.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[1];
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr0131:
                                                         this.improvementSlot3.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[2];
                                                         if(!_loc3_)
                                                         {
                                                            addr014d:
                                                            this.residentIconGroup.visible = this.residentIconGroup.includeInLayout = this.hostComponent.data.itemAtCursor.residentGfx != null;
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr0179:
                                                               §§push(this.hostComponent);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  addr0189:
                                                                  §§push(§§pop().data);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr0198:
                                                                     §§push(§§pop().itemAtCursor);
                                                                     if(_loc2_)
                                                                     {
                                                                        if(§§pop().residentGfx)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              addr01b4:
                                                                              this.residentIcon.briskDynaVo = this.hostComponent.data.itemAtCursor.residentGfx;
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr01cb:
                                                                                 §§push(this.departmentIcon);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this.departmentIcon);
                                                                                    §§push(this.hostComponent.data.itemAtCursor.departmentGfx == null);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    var _temp_16:* = §§pop();
                                                                                    §§pop().visible = §§pop().includeInLayout = §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0215:
                                                                                       addr0212:
                                                                                       addr0210:
                                                                                       addr020d:
                                                                                       if(this.hostComponent.data.itemAtCursor.departmentGfx)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr0225:
                                                                                             this.departmentIcon.briskDynaVo = this.hostComponent.data.itemAtCursor.departmentGfx;
                                                                                             addr0221:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0233);
                                                                                 }
                                                                                 §§goto(addr0225);
                                                                              }
                                                                           }
                                                                           §§goto(addr0233);
                                                                        }
                                                                        §§goto(addr01cb);
                                                                     }
                                                                     §§goto(addr0215);
                                                                  }
                                                                  §§goto(addr0212);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                         }
                                                         §§goto(addr01cb);
                                                      }
                                                      §§goto(addr01b4);
                                                   }
                                                   §§goto(addr0221);
                                                }
                                                §§goto(addr0233);
                                             }
                                             §§goto(addr014d);
                                          }
                                          §§goto(addr0215);
                                       }
                                       §§goto(addr0198);
                                    }
                                    §§goto(addr0189);
                                 }
                                 §§goto(addr0131);
                              }
                              §§goto(addr0179);
                           }
                           §§goto(addr020d);
                        }
                        §§goto(addr00dc);
                     }
                     addr0233:
                     return;
                  }
                  §§goto(addr0215);
               }
               §§goto(addr00c0);
            }
            §§goto(addr00b9);
         }
         §§goto(addr01cb);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 5;
               if(!_loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "item_master_bg_normal";
                     if(!_loc2_)
                     {
                        addr0066:
                        _loc1_.id = "slotBg";
                        if(_loc3_ || _loc2_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00b8);
                              }
                           }
                        }
                        addr00a6:
                        this.slotBg = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr00b8:
                           BindingManager.executeBindings(this,"slotBg",this.slotBg);
                        }
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr0066);
               }
            }
            §§goto(addr0079);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.width = 72;
            if(_loc3_ || _loc3_)
            {
               _loc1_.height = 87;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr00bc);
            }
            addr0043:
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.visible = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.top = 5;
                        if(!_loc2_)
                        {
                           addr0099:
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib2_c()];
                           if(_loc3_)
                           {
                              _loc1_.id = "blockedGroup";
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00bc);
                              }
                           }
                           §§goto(addr00ff);
                        }
                        addr00bc:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00d0:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr00ed);
                              }
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00ff);
               }
               §§goto(addr00d0);
            }
            addr00ed:
            this.blockedGroup = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr00ff:
               BindingManager.executeBindings(this,"blockedGroup",this.blockedGroup);
            }
            return _loc1_;
         }
         §§goto(addr00d0);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_no";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006c);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  §§goto(addr0039);
               }
               §§goto(addr00af);
            }
            §§goto(addr00c1);
         }
         addr0039:
         _loc1_.percentWidth = 100;
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_Group2_c(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup4_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib11_i()];
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "previewGroup";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0092:
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0092);
            }
            addr00af:
            this.previewGroup = _loc1_;
            if(_loc2_ || _loc2_)
            {
               addr00c1:
               BindingManager.executeBindings(this,"previewGroup",this.previewGroup);
            }
            §§goto(addr00ce);
         }
         addr00ce:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_Group3_c(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib8_i(),this._PlayfieldItemInventoryFreeSlotSkin_VGroup1_c()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.bottom = 0;
            if(_loc2_)
            {
               _loc1_.height = 22;
               if(_loc2_)
               {
                  addr003b:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.top = 68;
                     if(_loc2_ || _loc3_)
                     {
                        addr0063:
                        _loc1_.alpha = 0.5;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib3_c(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup2_i(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup3_i()];
                           if(_loc2_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00b1:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr00b1);
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.height = 22;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 59;
               addr0032:
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.dynaLibName = "gui_ui_inventory";
                     if(_loc2_)
                     {
                        _loc1_.dynaBmpSourceName = "building_postit";
                        if(_loc2_ || _loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0092:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr0086);
            }
            addr0096:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.top = 4;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 2;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib5_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib6_i()];
                           if(_loc2_)
                           {
                              addr0098:
                              _loc1_.id = "improvementGroup";
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00ab:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00d3:
                                          this.improvementGroup = _loc1_;
                                          if(!_loc3_)
                                          {
                                             BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0098);
                     }
                  }
               }
            }
            §§goto(addr00ab);
         }
         §§goto(addr00d3);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.height = 15;
            if(!(_loc3_ && _loc2_))
            {
               addr0031:
               _loc1_.width = 15;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_)
                  {
                     addr0052:
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.id = "improvementSlot1";
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0084);
                        }
                        §§goto(addr00a3);
                     }
                     addr0084:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0099);
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0099);
                  }
                  addr0099:
                  this.improvementSlot1 = _loc1_;
                  if(!_loc3_)
                  {
                     addr00a3:
                     BindingManager.executeBindings(this,"improvementSlot1",this.improvementSlot1);
                  }
                  return _loc1_;
               }
               §§goto(addr0052);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0031);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 15;
            if(!_loc2_)
            {
               addr0035:
               _loc1_.width = 15;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "improvementSlot2";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                        }
                     }
                     addr00a6:
                     this.improvementSlot2 = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00b8:
                        BindingManager.executeBindings(this,"improvementSlot2",this.improvementSlot2);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00b8);
               }
            }
            §§goto(addr008a);
         }
         §§goto(addr0035);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 15;
            if(_loc2_)
            {
               _loc1_.width = 15;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "hip_locked";
                     if(_loc2_ || _loc2_)
                     {
                        addr006e:
                        _loc1_.id = "improvementSlot3";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b4:
                                    this.improvementSlot3 = _loc1_;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00c6:
                                       BindingManager.executeBindings(this,"improvementSlot3",this.improvementSlot3);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00c6);
                     }
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr006e);
         }
         §§goto(addr00b4);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.top = 4;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib7_c(),this._PlayfieldItemInventoryFreeSlotSkin_LocaLabel1_i()];
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.id = "_PlayfieldItemInventoryFreeSlotSkin_HGroup3";
                        if(_loc2_ || _loc3_)
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00bc:
                                    this._PlayfieldItemInventoryFreeSlotSkin_HGroup3 = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00ce:
                                       BindingManager.executeBindings(this,"_PlayfieldItemInventoryFreeSlotSkin_HGroup3",this._PlayfieldItemInventoryFreeSlotSkin_HGroup3);
                                    }
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00a0);
                  }
                  addr00db:
                  return _loc1_;
               }
               §§goto(addr00ce);
            }
         }
         §§goto(addr008c);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.height = 14;
            if(!_loc3_)
            {
               addr0034:
               _loc1_.width = 15;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "amount_icon_mini";
                     if(_loc2_)
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0074:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0068);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.text = "1";
            if(!_loc3_)
            {
               _loc1_.styleName = "improvementAmount";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.setStyle("paddingTop",3);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "itemAmountLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a2:
                                 this.itemAmountLabel = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00b4:
                                    BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00b4);
                  }
               }
               addr00c1:
               return _loc1_;
            }
         }
         §§goto(addr00b4);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 8;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "bg_playfieldItem_blue";
                     if(_loc2_)
                     {
                        _loc1_.width = 64;
                        if(_loc2_)
                        {
                           _loc1_.height = 63;
                           if(_loc2_)
                           {
                              _loc1_.alpha = 0.5;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0094:
                                 _loc1_.id = "itemBackground";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr00bf);
                                       }
                                    }
                                    §§goto(addr00d0);
                                 }
                              }
                              §§goto(addr00da);
                           }
                           addr00bf:
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr00d0:
                              this.itemBackground = _loc1_;
                              if(_loc2_)
                              {
                                 addr00da:
                                 BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                              }
                           }
                           §§goto(addr00e7);
                        }
                        addr00e7:
                        return _loc1_;
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr00d0);
            }
            §§goto(addr0094);
         }
         §§goto(addr00d0);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.width = 64;
            if(!_loc2_)
            {
               _loc1_.height = 63;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr003b);
               }
               §§goto(addr0081);
            }
            §§goto(addr0077);
         }
         addr003b:
         _loc1_.top = 9;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  addr0077:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0081:
                     _loc1_.alpha = 0.5;
                     if(!_loc2_)
                     {
                        §§goto(addr0098);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0081);
         }
         addr0098:
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib9_i()];
         if(!_loc2_)
         {
            addr00a8:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr00bc:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.maintainAspectRation = true;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.smoothing = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0044:
                  _loc1_.maxWidth = 50;
                  if(!_loc2_)
                  {
                     _loc1_.maxHeight = 50;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "itemGfx";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00c5);
                              }
                           }
                        }
                        addr00b3:
                        this.itemGfx = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00c5:
                           BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr00c5);
                  }
               }
               §§goto(addr0082);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.width = 26;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 20;
                     if(_loc2_)
                     {
                        _loc1_.left = -2;
                        if(_loc2_)
                        {
                           _loc1_.top = 0;
                           if(!_loc3_)
                           {
                              _loc1_.visible = false;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0088:
                                 _loc1_.includeInLayout = false;
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_.alpha = 0.5;
                                    if(!_loc3_)
                                    {
                                       _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib10_i()];
                                       if(_loc2_)
                                       {
                                          addr00b4:
                                          _loc1_.id = "residentIconGroup";
                                          if(_loc2_)
                                          {
                                             §§goto(addr00bf);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       addr00bf:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc2_ || Boolean(this))
                                          {
                                             _loc1_.document = this;
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§goto(addr00f1);
                                             }
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr00f1);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00fb);
                           }
                           addr00f1:
                           this.residentIconGroup = _loc1_;
                           if(_loc2_)
                           {
                              addr00fb:
                              BindingManager.executeBindings(this,"residentIconGroup",this.residentIconGroup);
                           }
                           §§goto(addr0108);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0088);
               }
               addr0108:
               return _loc1_;
            }
         }
         §§goto(addr00bf);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0048:
               _loc1_.id = "residentIcon";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007c:
                           this.residentIcon = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008e:
                              BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008e);
                  }
               }
            }
            §§goto(addr007c);
         }
         §§goto(addr0048);
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc2_)
            {
               _loc1_.height = 24;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.width = 20;
                  if(!_loc2_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0083);
            }
            addr0052:
            _loc1_.alpha = 0.5;
            if(!_loc2_)
            {
               _loc1_.visible = false;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr007a);
               }
               §§goto(addr00d3);
            }
            addr007a:
            _loc1_.includeInLayout = false;
            if(!_loc2_)
            {
               addr0083:
               _loc1_.top = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0095:
                  _loc1_.left = 0;
                  if(!_loc2_)
                  {
                     _loc1_.id = "departmentIcon";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00e6);
               }
            }
            addr00b2:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00d3:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     §§goto(addr00dc);
                  }
                  §§goto(addr00e6);
               }
            }
            addr00dc:
            this.departmentIcon = _loc1_;
            if(!_loc2_)
            {
               addr00e6:
               BindingManager.executeBindings(this,"departmentIcon",this.departmentIcon);
            }
            §§goto(addr00f3);
         }
         addr00f3:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc1_))
               {
                  §§goto(addr0056);
               }
               §§goto(addr007a);
            }
            §§goto(addr0078);
         }
         addr0056:
         §§push(§§pop().§§slot[1]);
         if(_loc2_ || Boolean(this))
         {
            §§pop()[0] = new Binding(this,function():Boolean
            {
               return !improvementGroup.visible;
            },null,"_PlayfieldItemInventoryFreeSlotSkin_HGroup3.visible");
            addr007a:
            addr0078:
            return result;
         }
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._41846797blockedGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockedGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0058);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._262472981departmentIcon = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
         }
         addr008e:
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGroup() : HGroup
      {
         return this._922505399improvementGroup;
      }
      
      public function set improvementGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._922505399improvementGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._922505399improvementGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0056);
            }
            addr007c:
            return;
         }
         §§goto(addr0056);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._911601987improvementSlot1 = param1;
                  if(_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0042);
            }
            addr0060:
            return;
         }
         §§goto(addr0042);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._911601986improvementSlot2 = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot2",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0059);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._911601985improvementSlot3 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot3",_loc2_,param1));
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
      public function get itemAmountLabel() : LocaLabel
      {
         return this._1376040855itemAmountLabel;
      }
      
      public function set itemAmountLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1376040855itemAmountLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1376040855itemAmountLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0071);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1295462561itemBackground = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr005b);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2116181862itemGfx = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get previewGroup() : Group
      {
         return this._1384890473previewGroup;
      }
      
      public function set previewGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1384890473previewGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1384890473previewGroup = param1;
                  if(!_loc4_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"previewGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311765527residentIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._311765527residentIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0056:
                  this._288785898residentIconGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIconGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get slotBg() : BriskImageDynaLib
      {
         return this._899454237slotBg;
      }
      
      public function set slotBg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._899454237slotBg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._899454237slotBg = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBg",_loc2_,param1));
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0077);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
   }
}

