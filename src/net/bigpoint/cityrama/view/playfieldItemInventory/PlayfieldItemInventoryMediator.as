package net.bigpoint.cityrama.view.playfieldItemInventory
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryView;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PlayfieldItemInventoryMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PlayfieldItemInventoryMediator";
      
      private static const LINE_ID_0:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "PlayfieldItemInventoryMediator";
         if(!(_loc2_ && _loc2_))
         {
            LINE_ID_0 = 0;
         }
      }
      
      private var _data:PlayfieldItemInventoryViewVo;
      
      private var _pIIVP:PlayfieldItemInventoryViewProxy;
      
      private var _lSP:LocalStorageProxy;
      
      private var _eP:EmergencyProxy;
      
      private var _currentCursorItem:InventoryPlayfieldItemVo;
      
      private var _currentSelectedSlotIndex:int = -1;
      
      public function PlayfieldItemInventoryMediator(param1:PlayfieldItemInventoryView)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.onRegister();
            if(!(_loc2_ && _loc2_))
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr007a);
               }
               §§goto(addr0084);
            }
         }
         addr007a:
         this.setData();
         if(_loc1_)
         {
            addr0084:
            this.addListener();
         }
      }
      
      private function setData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._data = this.viewProxy.playfieldItemInventoryViewVo;
            if(_loc1_)
            {
               this._data.preselectedIndex = this._currentSelectedSlotIndex;
               if(_loc1_ || Boolean(this))
               {
                  addr0050:
                  this.component.data = this._data;
               }
               §§goto(addr0059);
            }
            §§goto(addr0050);
         }
         addr0059:
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push(PlayfieldItemInventoryView.EVENT_ALL_DESELECTED);
               if(_loc1_ || _loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleAllDeselected);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(PlayfieldItemInventoryView.EVENT_MINIMIZED_CHANGED);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().addEventListener(§§pop(),this.handleInventoryMinimizedChanged);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.component);
                              if(!_loc2_)
                              {
                                 §§push(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.handlePurchaseSlot);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(!_loc2_)
                                       {
                                          §§push(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr00d2:
                                             §§pop().addEventListener(§§pop(),this.handleDeleteItemFromInventory);
                                             if(!_loc2_)
                                             {
                                                addr00de:
                                                §§push(this.component);
                                                if(!_loc2_)
                                                {
                                                   addr00e6:
                                                   §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT);
                                                   if(_loc1_)
                                                   {
                                                      addr00f1:
                                                      §§pop().addEventListener(§§pop(),this.handleSlotOut);
                                                      if(_loc1_)
                                                      {
                                                         §§push(this.component);
                                                         if(!_loc2_)
                                                         {
                                                            addr0106:
                                                            §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER);
                                                            if(_loc1_)
                                                            {
                                                               §§goto(addr0111);
                                                            }
                                                            §§goto(addr0168);
                                                         }
                                                         §§goto(addr0162);
                                                      }
                                                      §§goto(addr015f);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr0162);
                                             }
                                             §§goto(addr015f);
                                          }
                                          §§goto(addr00f1);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00de);
                                 }
                                 addr0111:
                                 §§pop().addEventListener(§§pop(),this.handleSlotOver);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(this.component);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr013f:
                                       §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK);
                                       if(_loc1_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.handleSlotClick);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr0168:
                                             this.component.addEventListener(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,this.handleInventoryItemSelected);
                                             addr0162:
                                             addr015f:
                                          }
                                          §§goto(addr0170);
                                       }
                                       §§goto(addr0168);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0170);
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr015f);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr0106);
                  }
                  §§goto(addr0170);
               }
               §§goto(addr00f1);
            }
            §§goto(addr013f);
         }
         addr0170:
      }
      
      private function handleInventoryMinimizedChanged(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(_loc2_ || _loc2_)
            {
               addr0035:
               §§push(this.localStorageProxy);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().userdata.inventoryMinimised = this.component.inventoryMinimized;
                  if(_loc2_)
                  {
                     addr005e:
                     this.localStorageProxy.flush();
                     addr0059:
                  }
                  return;
               }
               §§goto(addr005e);
            }
            §§goto(addr0059);
         }
         §§goto(addr0035);
      }
      
      private function handleInventoryItemSelected(param1:PlayfieldItemInventoryEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(param1.listItemVo);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr002e:
                     addr002a:
                     if(param1.listItemVo.item)
                     {
                        if(!_loc3_)
                        {
                           this._currentSelectedSlotIndex = param1.selectedIndex;
                           addr003a:
                           if(!(_loc3_ && _loc3_))
                           {
                              this.viewProxy.currentSelectedInventoryItem = param1.listItemVo;
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.addItemAtCursorToData(param1.listItemVo.item);
                                 if(_loc2_)
                                 {
                                    addr008e:
                                    sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE,param1.listItemVo.item);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr003a);
               }
               addr00a0:
               return;
            }
            §§goto(addr002e);
         }
         §§goto(addr002a);
      }
      
      private function addItemAtCursorToData(param1:InventoryPlayfieldItemVo) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemInventoryListItemVo = null;
         if(!_loc5_)
         {
            this._currentCursorItem = param1;
         }
         for each(_loc2_ in this._data.allListItems)
         {
            if(_loc6_)
            {
               _loc2_.itemAtCursor = param1;
            }
         }
      }
      
      private function handleSlotOver(param1:PlayfieldItemInventoryEvent) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null;
         if(_loc7_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         if(_loc7_ || Boolean(this))
         {
            _loc2_.x += param1.target.width / 2;
         }
         var _loc3_:* = "";
         var _loc4_:* = "";
         if(_loc7_)
         {
            §§push(param1.listItemVo);
            if(!_loc6_)
            {
               §§push(§§pop().slotState);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(LocaUtils);
                           §§push("rcl.playfielditems.name");
                           §§push("rcl.playfielditems.name.");
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(§§pop() + param1.listItemVo.item.itemLocaleId);
                              if(_loc7_)
                              {
                                 addr00cc:
                                 §§push(§§pop() + ".capital");
                              }
                              §§push(§§pop().getString(§§pop(),§§pop()));
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(AbstractUIInfolayerContentVo.HEADER_ICON_ALERT);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                                addr0112:
                                                §§push(param1.listItemVo);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().itemAtCursor);
                                                   if(!(_loc6_ && Boolean(this)))
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.playfieldRestricted"));
                                                            if(_loc7_ || Boolean(this))
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr0159:
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc6_ && Boolean(this)))
                                                                  {
                                                                     addr0196:
                                                                     this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
                                                                     if(_loc6_ && Boolean(_loc3_))
                                                                     {
                                                                        addr041d:
                                                                        §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.occupied.capital"));
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc7_ || Boolean(_loc3_))
                                                                           {
                                                                              addr043e:
                                                                              _loc3_ = §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.occupied"));
                                                                                 if(_loc7_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr045f:
                                                                                    §§push(§§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr0466:
                                                                                       _loc4_ = §§pop();
                                                                                       if(!(_loc6_ && Boolean(param1)))
                                                                                       {
                                                                                          addr0476:
                                                                                          this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
                                                                                          if(_loc7_ || Boolean(_loc2_))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr07b8:
                                                                                          this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr070d:
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_ || Boolean(this))
                                                                                       {
                                                                                          addr071c:
                                                                                          _loc3_ = §§pop();
                                                                                          if(_loc7_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr072b:
                                                                                             §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.freeSlot.add"));
                                                                                             if(_loc7_ || Boolean(param1))
                                                                                             {
                                                                                                addr0745:
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr074c:
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr07b8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr07b0:
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr07b8);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr07c3);
                                                                                             }
                                                                                             §§goto(addr074c);
                                                                                          }
                                                                                          §§goto(addr07b8);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0772:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                          {
                                                                                             addr0781:
                                                                                             _loc3_ = §§pop();
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr0795:
                                                                                                §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.freeSlot.select"));
                                                                                                if(!(_loc6_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr07af:
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr07b0);
                                                                                             }
                                                                                             §§goto(addr07c3);
                                                                                          }
                                                                                          §§goto(addr07af);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr07c3);
                                                                                 }
                                                                                 §§goto(addr07af);
                                                                              }
                                                                              §§goto(addr07c3);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr06e0:
                                                                              §§push(§§pop());
                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr072b);
                                                                                 }
                                                                                 §§goto(addr07b8);
                                                                              }
                                                                           }
                                                                           §§goto(addr0745);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0623:
                                                                           _loc4_ = §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              addr0679:
                                                                              §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.emergency"));
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr068b:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                 {
                                                                                    addr069a:
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc7_ || Boolean(_loc3_)))
                                                                                    {
                                                                                       §§goto(addr0795);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr06be:
                                                                                    addr06c4:
                                                                                    if(§§pop() == InventoryPlayfieldItemVo.BLOCKED_TYPE)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.general"));
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§goto(addr06e0);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0772);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0795);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr07b8);
                                                                              }
                                                                              §§goto(addr069a);
                                                                           }
                                                                        }
                                                                        §§goto(addr07b8);
                                                                     }
                                                                     §§goto(addr07c3);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr059d:
                                                                     §§push(AbstractUIInfolayerContentVo.HEADER_ICON_ALERT);
                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                     {
                                                                        addr05b1:
                                                                        §§push(§§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr05b8:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc7_)
                                                                           {
                                                                              addr05c0:
                                                                              §§push(param1.listItemVo);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr05ca:
                                                                                 §§push(§§pop().itemAtCursor);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr05d3:
                                                                                    §§push(§§pop().blockedReason);
                                                                                    if(_loc7_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr05e4:
                                                                                       §§push(InventoryPlayfieldItemVo.BLOCKED_CONSTRUCTION);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr05f0:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!(_loc6_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr0602:
                                                                                                §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.blocked.construction"));
                                                                                                if(_loc7_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   addr061c:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr0623);
                                                                                                   }
                                                                                                   §§goto(addr07af);
                                                                                                }
                                                                                                §§goto(addr0781);
                                                                                             }
                                                                                             §§goto(addr07b8);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(param1.listItemVo);
                                                                                             if(!(_loc6_ && Boolean(this)))
                                                                                             {
                                                                                                addr0641:
                                                                                                §§push(§§pop().itemAtCursor);
                                                                                                if(!(_loc6_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(§§pop().blockedReason);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(InventoryPlayfieldItemVo.BLOCKED_EMERGENCY);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr0667:
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc7_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               §§goto(addr0679);
                                                                                                            }
                                                                                                            §§goto(addr07b8);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr06b5:
                                                                                                            addr06b2:
                                                                                                            §§push(param1.listItemVo.itemAtCursor.blockedReason);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr06be);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr06e0);
                                                                                                      }
                                                                                                      §§goto(addr06c4);
                                                                                                   }
                                                                                                   §§goto(addr074c);
                                                                                                }
                                                                                                §§goto(addr06b5);
                                                                                             }
                                                                                             §§goto(addr06b2);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0667);
                                                                                    }
                                                                                    §§goto(addr06be);
                                                                                 }
                                                                                 §§goto(addr06b5);
                                                                              }
                                                                              §§goto(addr0641);
                                                                           }
                                                                           §§goto(addr0795);
                                                                        }
                                                                        §§goto(addr0772);
                                                                     }
                                                                     §§goto(addr061c);
                                                                  }
                                                               }
                                                               §§goto(addr061c);
                                                            }
                                                            else
                                                            {
                                                               addr058e:
                                                               _loc3_ = §§pop();
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr059d);
                                                               }
                                                            }
                                                            §§goto(addr0602);
                                                         }
                                                         else
                                                         {
                                                            addr0349:
                                                            §§push(param1.listItemVo);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop().itemAtCursor);
                                                               if(_loc7_ || Boolean(_loc3_))
                                                               {
                                                                  addr0364:
                                                                  if(§§pop() == param1.listItemVo.item)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr0375:
                                                                        §§push(LocaUtils);
                                                                        §§push("rcl.playfielditems.name");
                                                                        §§push("rcl.playfielditems.name.");
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + param1.listItemVo.item.itemLocaleId);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() + ".capital");
                                                                           }
                                                                        }
                                                                        §§push(§§pop().getString(§§pop(),§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr03b0:
                                                                                 §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.occupied.own"));
                                                                                 if(_loc7_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc7_ || Boolean(param1))
                                                                                       {
                                                                                          §§goto(addr0476);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr07b8);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr05e4);
                                                                                    }
                                                                                    §§goto(addr07c3);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr071c);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr05c0);
                                                                              }
                                                                              §§goto(addr0641);
                                                                           }
                                                                           §§goto(addr05e4);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr05b8);
                                                                        }
                                                                     }
                                                                     §§goto(addr07c3);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(AbstractUIInfolayerContentVo.HEADER_ICON_ALERT);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc7_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr041d);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0602);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr07af);
                                                               }
                                                               §§goto(addr05d3);
                                                            }
                                                            else
                                                            {
                                                               addr04f9:
                                                               §§push(§§pop().slotState);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE);
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr050e:
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(param1.listItemVo);
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(§§pop().itemAtCursor);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(param1.listItemVo);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr0547:
                                                                                          §§push(§§pop().itemAtCursor);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr0553:
                                                                                             if(§§pop().isBlocked)
                                                                                             {
                                                                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr0565:
                                                                                                   §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.blocked.capital"));
                                                                                                   if(_loc7_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc6_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr058e);
                                                                                                      }
                                                                                                      §§goto(addr074c);
                                                                                                   }
                                                                                                   §§goto(addr069a);
                                                                                                }
                                                                                                §§goto(addr072b);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.freeSlot.capital"));
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr070d);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0772);
                                                                                          }
                                                                                          §§goto(addr06b5);
                                                                                       }
                                                                                       §§goto(addr06b2);
                                                                                    }
                                                                                    §§goto(addr0679);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.freeSlot.capital"));
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr0772);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr07b0);
                                                                              }
                                                                              §§goto(addr06b5);
                                                                           }
                                                                           §§goto(addr06b2);
                                                                        }
                                                                        §§goto(addr0795);
                                                                     }
                                                                     §§goto(addr07c3);
                                                                  }
                                                                  §§goto(addr05f0);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr068b);
                                                      }
                                                      else
                                                      {
                                                         §§push(LocaUtils.getString("rcl.guiinfolayer.inventory"," rcl.guiinfolayer.inventory.text.occupied"));
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_ || Boolean(_loc3_))
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr0196);
                                                               }
                                                               §§goto(addr07b8);
                                                            }
                                                            §§goto(addr070d);
                                                         }
                                                         else
                                                         {
                                                            addr02fe:
                                                            §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED);
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(param1.listItemVo);
                                                                     if(_loc7_ || Boolean(_loc2_))
                                                                     {
                                                                        addr032e:
                                                                        §§push(§§pop().itemAtCursor);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr0337:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§goto(addr0349);
                                                                              }
                                                                              §§goto(addr059d);
                                                                           }
                                                                           else
                                                                           {
                                                                              sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                                                                                 "type":ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION,
                                                                                 "cid":param1.listItemVo.item.configItem.id,
                                                                                 "lineId":LINE_ID_0,
                                                                                 "pt":_loc2_,
                                                                                 "bDTO":param1.listItemVo.item.buildingDTO,
                                                                                 "dVo":param1.listItemVo.item.decorationVo
                                                                              },NAME);
                                                                              if(!(_loc7_ || Boolean(_loc2_)))
                                                                              {
                                                                                 §§goto(addr0565);
                                                                              }
                                                                              §§goto(addr07c3);
                                                                           }
                                                                        }
                                                                        §§goto(addr0364);
                                                                     }
                                                                     §§goto(addr06b2);
                                                                  }
                                                                  §§goto(addr07c3);
                                                               }
                                                               else
                                                               {
                                                                  §§push(param1.listItemVo);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr04f9);
                                                                  }
                                                               }
                                                               §§goto(addr05ca);
                                                            }
                                                            §§goto(addr0667);
                                                         }
                                                      }
                                                      §§goto(addr0667);
                                                   }
                                                   §§goto(addr0337);
                                                }
                                                §§goto(addr032e);
                                             }
                                             §§goto(addr03b0);
                                          }
                                          §§goto(addr068b);
                                       }
                                       §§goto(addr043e);
                                    }
                                    §§goto(addr07c3);
                                 }
                                 §§goto(addr0159);
                              }
                              §§goto(addr061c);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr0112);
                     }
                     else
                     {
                        §§push(param1.listItemVo);
                        if(_loc7_)
                        {
                           §§push(§§pop().slotState);
                           if(_loc7_)
                           {
                              §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(param1.listItemVo);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().purchaseSlotEnabled);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                {
                                                   §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.header.extraSlot"));
                                                   if(_loc7_ || Boolean(param1))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1.listItemVo);
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               if(§§pop().slotPrice > this._data.realCurrencyStock)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.extraSlot.noRC"));
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              addr02c6:
                                                                              this.showTextInfoLayer(_loc3_,_loc4_,_loc2_,_loc5_);
                                                                              if(!(_loc7_ || Boolean(_loc2_)))
                                                                              {
                                                                                 §§goto(addr072b);
                                                                              }
                                                                              §§goto(addr07c3);
                                                                           }
                                                                           §§goto(addr07b8);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr045f);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr058e);
                                                                     }
                                                                     §§goto(addr0781);
                                                                  }
                                                                  §§goto(addr07c3);
                                                               }
                                                               else
                                                               {
                                                                  §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.extraSlot.affordable"));
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                     {
                                                                        addr02be:
                                                                        _loc4_ = §§pop();
                                                                        if(_loc7_)
                                                                        {
                                                                           §§goto(addr02c6);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr03b0);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr05b1);
                                                                     }
                                                                     §§goto(addr0772);
                                                                  }
                                                               }
                                                               §§goto(addr05b8);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr04f9);
                                                            }
                                                         }
                                                         §§goto(addr0565);
                                                      }
                                                      §§goto(addr0466);
                                                   }
                                                   §§goto(addr0781);
                                                }
                                                §§goto(addr07b8);
                                             }
                                             addr07c3:
                                             return;
                                          }
                                          §§goto(addr0553);
                                       }
                                       else
                                       {
                                          §§goto(addr032e);
                                       }
                                    }
                                    §§goto(addr02c6);
                                 }
                                 else
                                 {
                                    §§push(param1.listItemVo);
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       §§push(§§pop().slotState);
                                       if(_loc7_)
                                       {
                                          §§goto(addr02fe);
                                       }
                                       §§goto(addr0772);
                                    }
                                 }
                                 §§goto(addr0547);
                              }
                              §§goto(addr06c4);
                           }
                           §§goto(addr02be);
                        }
                     }
                     §§goto(addr0641);
                  }
                  §§goto(addr050e);
               }
               §§goto(addr0623);
            }
            §§goto(addr0641);
         }
         §§goto(addr0375);
      }
      
      private function showTextInfoLayer(param1:String, param2:String, param3:Point, param4:String) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:SimpleTextUiInfolayerContentVo = null;
         if(_loc6_ || Boolean(this))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push("");
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    addr007d:
                                    addr007b:
                                    §§push(param2 == "");
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§goto(addr0093);
                                       }
                                       §§goto(addr00a6);
                                    }
                                    addr0093:
                                    var _temp_6:* = §§pop();
                                    addr0094:
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(_loc6_ || Boolean(this))
                                       {
                                          addr00a6:
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             §§goto(addr00bc);
                                          }
                                          §§goto(addr00c0);
                                       }
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00c0);
                              }
                              addr00bc:
                              if(Boolean(param3))
                              {
                                 addr00c0:
                                 _loc5_ = new SimpleTextUiInfolayerContentVo(LINE_ID_0,param3,param2,param1,param4);
                                 if(!_loc7_)
                                 {
                                    sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc5_,this.getMediatorName());
                                 }
                              }
                              return;
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr007d);
            }
            §§goto(addr007b);
         }
         §§goto(addr00c0);
      }
      
      private function handleSlotOut(param1:PlayfieldItemInventoryEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleSlotClick(param1:PlayfieldItemInventoryEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1.listItemVo);
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              §§push(param1.listItemVo);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr005d:
                                 §§push(§§pop().slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr006c);
                                 }
                                 §§goto(addr0146);
                              }
                              §§goto(addr0086);
                           }
                           §§goto(addr0156);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr0147);
               }
               addr006c:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(param1.listItemVo);
                     if(_loc3_ || Boolean(param1))
                     {
                        addr0086:
                        §§push(§§pop().itemAtCursor);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(_loc3_ || Boolean(param1))
                           {
                              var _temp_9:* = §§pop();
                              §§push(_temp_9);
                              §§push(_temp_9);
                              if(_loc3_ || Boolean(param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00d1:
                                       §§pop();
                                       if(!_loc2_)
                                       {
                                          §§push(this.viewProxy);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(§§pop().currentSelectedInventoryItem);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc3_)
                                                {
                                                   addr00fe:
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_PLAYFIELDITEM_TO_INVENTORY,param1.listItemVo.itemAtCursor.itemId);
                                                         if(_loc2_ && Boolean(param1))
                                                         {
                                                            addr0167:
                                                            sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,true);
                                                         }
                                                         §§goto(addr0172);
                                                      }
                                                      §§goto(addr0167);
                                                   }
                                                   else
                                                   {
                                                      addr0140:
                                                      addr013d:
                                                      §§push(Boolean(param1.listItemVo.itemAtCursor));
                                                      if(_loc3_)
                                                      {
                                                         addr0146:
                                                         var _temp_15:* = §§pop();
                                                         addr0147:
                                                         §§push(_temp_15);
                                                         if(_temp_15)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr0150:
                                                               §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr015e);
                                                               }
                                                               §§goto(addr0167);
                                                            }
                                                         }
                                                      }
                                                      addr015e:
                                                      addr015d:
                                                      addr015a:
                                                      addr0156:
                                                      if(Boolean(this.viewProxy.currentSelectedInventoryItem))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr0167);
                                                         }
                                                      }
                                                      §§goto(addr0172);
                                                   }
                                                }
                                                §§goto(addr0150);
                                             }
                                             §§goto(addr015d);
                                          }
                                          §§goto(addr015a);
                                       }
                                       §§goto(addr0172);
                                    }
                                    §§goto(addr0146);
                                 }
                                 §§goto(addr00fe);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr0150);
                        }
                        §§goto(addr0140);
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr0167);
               }
               addr0172:
               return;
            }
            §§goto(addr005d);
         }
         §§goto(addr0167);
      }
      
      private function handleDeleteItemFromInventory(param1:PlayfieldItemInventoryEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.listItemVo)
            {
               if(_loc3_)
               {
                  addr0023:
                  sendNotification(MiniLayerConstants.OPEN_MINI_REMOVE_INVENTORY_ITEM,param1.listItemVo);
               }
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function handlePurchaseSlot(param1:PlayfieldItemInventoryEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               §§push(param1.listItemVo);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(param1.listItemVo);
                        if(!_loc3_)
                        {
                           §§push(§§pop().slotPrice);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              if(§§pop() <= this._data.realCurrencyStock)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr0076:
                                    §§push(param1.listItemVo);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr008a:
                                       addr0087:
                                       if(§§pop().configBagId != -1)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00a9:
                                             StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                                             if(_loc2_)
                                             {
                                                addr00bb:
                                                facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EXPAND_INVENTORY_BAG,param1.listItemVo.configBagId);
                                                if(_loc2_ || Boolean(param1))
                                                {
                                                   addr00de:
                                                   §§push(Boolean(param1.listItemVo.itemAtCursor));
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      var _temp_9:* = §§pop();
                                                      §§push(_temp_9);
                                                      if(_temp_9)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§pop();
                                                            if(_loc2_)
                                                            {
                                                               addr011d:
                                                               addr0107:
                                                               if(Boolean(this.viewProxy.currentSelectedInventoryItem))
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,false);
                                                                     if(_loc2_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0151);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr011d);
                                                }
                                                §§goto(addr0107);
                                             }
                                             §§goto(addr0151);
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0151);
                                    }
                                    §§goto(addr00de);
                                 }
                                 §§goto(addr00a9);
                              }
                              else
                              {
                                 sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                              }
                              §§goto(addr0151);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0076);
                  }
                  addr0151:
                  return;
               }
               §§goto(addr0087);
            }
         }
         §§goto(addr00bb);
      }
      
      private function handleAllDeselected(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.resetSelectedIndex();
            if(!(_loc2_ && _loc2_))
            {
               sendNotification(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,true);
               if(_loc3_)
               {
                  addr0049:
                  sendNotification(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE);
               }
               §§goto(addr0054);
            }
            §§goto(addr0049);
         }
         addr0054:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED,ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED,ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE,ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE,ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:InventoryPlayfieldItemVo = null;
         var _loc3_:* = param1.getName();
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED);
            if(_loc4_ || Boolean(this))
            {
               §§push(_loc3_);
               if(_loc4_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc5_ && Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr026c:
                        §§push(3);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        addr01e7:
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           addr01ee:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr026c);
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE);
                              if(_loc4_ || Boolean(param1))
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    addr021e:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          addr0230:
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr026c);
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                                       if(!_loc5_)
                                       {
                                          addr0247:
                                          §§push(_loc3_);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             addr0256:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr026c);
                                                }
                                                else
                                                {
                                                   addr0283:
                                                   §§push(4);
                                                   if(_loc4_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                §§goto(addr02a3);
                                             }
                                             else
                                             {
                                                §§goto(addr027f);
                                             }
                                          }
                                          addr027f:
                                          §§goto(addr027e);
                                       }
                                       addr027e:
                                       if(ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED === _loc3_)
                                       {
                                          §§goto(addr0283);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                       §§goto(addr02a3);
                                    }
                                    §§goto(addr02a3);
                                 }
                                 §§goto(addr0256);
                              }
                              §§goto(addr027e);
                           }
                           §§goto(addr02a3);
                        }
                        §§goto(addr021e);
                     }
                     §§goto(addr0247);
                  }
                  addr02a3:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           this.setData();
                           if(!_loc5_)
                           {
                              if(!this._currentCursorItem)
                              {
                                 break loop0;
                              }
                              if(_loc4_)
                              {
                                 this.addItemAtCursorToData(this._currentCursorItem);
                                 if(!(_loc4_ || Boolean(this)))
                                 {
                                    break loop0;
                                 }
                                 addr004d:
                                 §§push(this._currentSelectedSlotIndex);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() != -1)
                                 {
                                    break loop0;
                                 }
                                 if(_loc4_)
                                 {
                                    addr0063:
                                    this.scrollToUnoccupiedSlot(this._currentCursorItem.sortCategory);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       break loop0;
                                    }
                                 }
                                 addr0095:
                                 §§push(param1.getBody() is BillboardObject);
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          _loc2_ = this.viewProxy.buildInventoryPlayfieldItemVo(BillboardObject(param1.getBody()));
                                          if(!_loc4_)
                                          {
                                             break loop0;
                                          }
                                       }
                                       else
                                       {
                                          addr00de:
                                          _loc2_ = new InventoryPlayfieldItemVo();
                                       }
                                    }
                                    else
                                    {
                                       addr00d4:
                                       if(param1.getBody() is IPlaneObject)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr00de);
                                       }
                                    }
                                    if(_loc2_)
                                    {
                                       if(_loc4_ || Boolean(this))
                                       {
                                          this.selectCategoryInInventory(_loc2_);
                                          if(!_loc5_)
                                          {
                                             this.addItemAtCursorToData(_loc2_);
                                             if(_loc4_ || Boolean(_loc3_))
                                             {
                                                break loop0;
                                             }
                                             this.addItemAtCursorToData(null);
                                             addr0135:
                                             if(_loc4_ || Boolean(_loc3_))
                                             {
                                                break loop0;
                                             }
                                             break;
                                          }
                                       }
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr0063);
                           }
                           §§goto(addr004d);
                        case 2:
                           this.resetSelectedIndex();
                           if(_loc5_ && Boolean(this))
                           {
                              break loop0;
                           }
                           §§goto(addr0095);
                           break;
                        case 3:
                           this.resetSelectedIndex();
                           if(_loc5_ && Boolean(_loc2_))
                           {
                              break loop0;
                           }
                           §§goto(addr0135);
                           break;
                        case 4:
                           this.setEmergencyRunning(this.emergencyProxy.emergencyActivelyRunning);
                           if(_loc4_)
                           {
                              break;
                           }
                           break loop0;
                        default:
                           break loop0;
                     }
                     this.resetInfrastructureItems();
                     break;
                  }
                  return;
               }
               §§goto(addr01ee);
            }
            §§goto(addr01e7);
         }
         §§goto(addr0230);
      }
      
      private function resetInfrastructureItems() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._currentCursorItem);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           addr0075:
                           §§push(this.emergencyProxy.emergencyActivelyRunning);
                           if(_loc1_ || _loc1_)
                           {
                              addr0074:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 addr0082:
                                 if(this._currentCursorItem.sortCategory == PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr009c:
                                       this.component.resetSelection();
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0074);
            }
            §§goto(addr0082);
         }
         §§goto(addr009c);
      }
      
      private function setEmergencyRunning(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemInventoryListItemVo = null;
         if(_loc6_ || Boolean(_loc2_))
         {
            this._data.emergencyRunning = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this._data.allListItems)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               _loc2_.emergencyRunning = param1;
            }
         }
      }
      
      private function selectCategoryInInventory(param1:InventoryPlayfieldItemVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.sortCategory != "")
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr003a:
                  this.component.sortCategory = param1.sortCategory;
                  if(!(_loc2_ && _loc3_))
                  {
                     this.scrollToUnoccupiedSlot(param1.sortCategory);
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function scrollToUnoccupiedSlot(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this._data)
            {
               if(_loc2_ || _loc2_)
               {
                  addr003f:
                  this.component.scrollToIndex(this._data.getFirstUnoccupiedSlotIndexByCat(param1));
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function resetSelectedIndex() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._currentSelectedSlotIndex = -1;
            if(!(_loc2_ && _loc1_))
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr0048:
                        this._data.preselectedIndex = this._currentSelectedSlotIndex;
                        addr0044:
                     }
                  }
                  return;
               }
               §§goto(addr0048);
            }
         }
         §§goto(addr0044);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ApplicationMediator = null;
         if(_loc2_)
         {
            this.removeListener();
            if(!_loc3_)
            {
               this.viewProxy.currentSelectedInventoryItem = null;
            }
         }
         _loc1_ = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         if(!_loc3_)
         {
            _loc1_.component.mainView.inventoryTopBarView.removeElement(this.component);
            if(!_loc3_)
            {
               addr0073:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0073);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push(PlayfieldItemInventoryView.EVENT_ALL_DESELECTED);
               if(_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleAllDeselected);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§push(PlayfieldItemInventoryView.EVENT_MINIMIZED_CHANGED);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop().removeEventListener(§§pop(),this.handleInventoryMinimizedChanged);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.component);
                              if(!_loc2_)
                              {
                                 addr0075:
                                 §§push(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT);
                                 if(_loc1_)
                                 {
                                    addr0080:
                                    §§pop().removeEventListener(§§pop(),this.handlePurchaseSlot);
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§push(this.component);
                                       if(!_loc2_)
                                       {
                                          addr009d:
                                          §§push(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr00ba:
                                             §§pop().removeEventListener(§§pop(),this.handleDeleteItemFromInventory);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00ce:
                                                §§push(this.component);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr00f1:
                                                      §§pop().removeEventListener(§§pop(),this.handleSlotOut);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr0106:
                                                         §§push(this.component);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            addr0116:
                                                            §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER);
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.handleSlotOver);
                                                               if(!_loc2_)
                                                               {
                                                                  addr012d:
                                                                  §§push(this.component);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     addr013d:
                                                                     §§push(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§pop().removeEventListener(§§pop(),this.handleSlotClick);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr0178:
                                                                           this.component.removeEventListener(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,this.handleInventoryItemSelected);
                                                                           addr0172:
                                                                        }
                                                                        §§goto(addr0180);
                                                                     }
                                                                     §§goto(addr0178);
                                                                  }
                                                                  §§goto(addr0172);
                                                               }
                                                               addr0180:
                                                               return;
                                                            }
                                                            §§goto(addr0178);
                                                         }
                                                         §§goto(addr013d);
                                                      }
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr0178);
                                                }
                                                §§goto(addr013d);
                                             }
                                             §§goto(addr012d);
                                          }
                                          §§goto(addr00f1);
                                       }
                                       §§goto(addr0172);
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0116);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00ba);
            }
            §§goto(addr0075);
         }
         §§goto(addr0106);
      }
      
      public function get component() : PlayfieldItemInventoryView
      {
         return super.getViewComponent() as PlayfieldItemInventoryView;
      }
      
      private function get viewProxy() : PlayfieldItemInventoryViewProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._pIIVP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._pIIVP = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
                  }
               }
               addr004b:
               return this._pIIVP;
            }
         }
         §§goto(addr004b);
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._lSP);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0054:
                     this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                  }
               }
               return this._lSP;
            }
         }
         §§goto(addr0054);
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._eP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr0032:
                     this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
                  }
               }
               return this._eP;
            }
         }
         §§goto(addr0032);
      }
   }
}

