package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementInventoryLayerComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialImprovementContentComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentialImprovementContentMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ResidentialImprovementContentMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      public static const LINE_ID_0:uint = 0;
      
      public static const LINE_ID_1:uint = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ResidentialImprovementContentMediator";
         if(_loc2_)
         {
            UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
            if(_loc2_ || _loc1_)
            {
               addr0051:
               LINE_ID_0 = 0;
               if(_loc2_ || _loc2_)
               {
                  addr0066:
                  LINE_ID_1 = 1;
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      §§goto(addr0051);
      
      private var _data:ResidentialImprovementViewVo;
      
      private var _component:ResidentialImprovementContentComponent;
      
      private var _iLP:ImprovementLayerProxy;
      
      private var _iCP:ImprovementCursorProxy;
      
      private var _tP:TimerProxy;
      
      private var _fP:FeatureProxy;
      
      private var _indexToSelect:int;
      
      public function ResidentialImprovementContentMediator(param1:String, param2:ResidentialPopup)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super(param1,param2);
         }
      }
      
      public function init(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!this._component)
            {
               if(!_loc3_)
               {
                  this._component = new ResidentialImprovementContentComponent();
                  if(_loc2_)
                  {
                     addr0035:
                     facade.removeMediator(UI_MEDIATOR_NAME);
                     if(_loc2_)
                     {
                        §§push(facade);
                        §§push(§§findproperty(UserInterfaceInfoLayerMediator));
                        var _temp_1:* = new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLineTop,this.component.uiInfolayerAlignmentLineBottom];
                        §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLineTop,this.component.uiInfolayerAlignmentLineBottom],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.setImprovementData(param1);
                           if(_loc2_ || _loc3_)
                           {
                              addr00b8:
                              this.container.contentGroup.addElement(this.component);
                              if(_loc2_)
                              {
                                 this.addListener();
                                 if(!_loc3_)
                                 {
                                    addr00d7:
                                    this.checkCurrentSelection();
                                 }
                              }
                              §§goto(addr00dd);
                           }
                           §§goto(addr00d7);
                        }
                        addr00dd:
                        return;
                     }
                  }
               }
               §§goto(addr00b8);
            }
            §§goto(addr0035);
         }
         §§goto(addr00d7);
      }
      
      private function checkCurrentSelection() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(_loc3_)
         {
            §§push(this.cursorProxy);
            if(!_loc2_)
            {
               §§push(§§pop().currentSelectedImprovementCid);
               if(!_loc2_)
               {
                  if(§§pop() != -1)
                  {
                     if(_loc3_)
                     {
                        addr0044:
                        addr003b:
                        §§push(this.cursorProxy.currentSelectedImprovementCid);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        _loc1_ = §§pop();
                        if(!_loc2_)
                        {
                           this._indexToSelect = this._data.getImprovementIndex(_loc1_,this._component.currentInventorySortFilter);
                           if(!_loc2_)
                           {
                              addr0065:
                              §§push(this.component.inventory);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop().improvementItemList);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop().selectedIndex != this._indexToSelect)
                                    {
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00ab:
                                          §§push(this._component);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().inventory);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop().improvementItemList);
                                                if(_loc3_)
                                                {
                                                   §§pop().selectedIndex = this._indexToSelect;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00f6:
                                                      this._component.inventory.improvementItemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleItemListUpdated);
                                                      addr00f3:
                                                      addr00f0:
                                                      addr00ec:
                                                   }
                                                   §§goto(addr0103);
                                                }
                                                §§goto(addr00f6);
                                             }
                                             §§goto(addr00f3);
                                          }
                                          §§goto(addr00f0);
                                       }
                                       §§goto(addr0103);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00f6);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0065);
                  }
                  addr0103:
                  return;
               }
               §§goto(addr0044);
            }
            §§goto(addr003b);
         }
         §§goto(addr00ec);
      }
      
      private function handleItemListUpdated(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this._component);
            if(_loc3_)
            {
               §§push(§§pop().inventory);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().improvementItemList);
                  if(_loc3_)
                  {
                     §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleItemListUpdated);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!isNaN(this._indexToSelect))
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr007a:
                              §§push(this._component);
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 §§push(§§pop().inventory);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().improvementItemList);
                                    if(!_loc2_)
                                    {
                                       §§push(this._indexToSelect);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().ensureIndexIsVisible(§§pop());
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             §§push(this._component);
                                             if(_loc3_ || Boolean(param1))
                                             {
                                                addr00d9:
                                                §§push(§§pop().inventory);
                                                if(!_loc2_)
                                                {
                                                   addr00e1:
                                                   §§push(§§pop().improvementItemList);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00f1:
                                                      if(§§pop().selectedIndex != this._indexToSelect)
                                                      {
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr0124:
                                                            this._component.inventory.improvementItemList.selectedIndex = this._indexToSelect;
                                                            addr0120:
                                                            addr0110:
                                                            addr010d:
                                                            addr0109:
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§goto(addr0134);
                                                            }
                                                         }
                                                         §§goto(addr0148);
                                                      }
                                                      addr0134:
                                                      this.component.highlightSlots();
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr0148:
                                                         this._indexToSelect = NaN;
                                                      }
                                                      §§goto(addr014f);
                                                   }
                                                   §§goto(addr0120);
                                                }
                                                §§goto(addr0110);
                                             }
                                             §§goto(addr010d);
                                          }
                                          §§goto(addr014f);
                                       }
                                       §§goto(addr0124);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr0109);
                        }
                        addr014f:
                        return;
                     }
                     §§goto(addr0148);
                  }
                  §§goto(addr0120);
               }
               §§goto(addr0110);
            }
            §§goto(addr00d9);
         }
         §§goto(addr007a);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_CLOSED);
            if(!_loc1_)
            {
               this.handleDetachItem(null);
               if(!(_loc1_ && _loc1_))
               {
                  this.removeListener();
                  if(_loc2_ || _loc1_)
                  {
                     addr0068:
                     super.onRemove();
                  }
               }
               return;
            }
         }
         §§goto(addr0068);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§push(ResidentialImprovementContentComponent.OPEN_FEATURE_SCREEN);
               if(_loc2_ || _loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleOpenFeatureScreen);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.component);
                     if(_loc2_)
                     {
                        addr0056:
                        §§push(ResidentialImprovementContentComponent.OPEN_IMPROVEMENT_STORE);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop().addEventListener(§§pop(),this.handleOpenStore);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(this.component);
                              if(!_loc1_)
                              {
                                 §§push(ImprovementInventoryItemRenderer.GET_MORE_EVENT);
                                 if(!_loc1_)
                                 {
                                    addr0090:
                                    §§pop().addEventListener(§§pop(),this.handleOpenStore);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(this.component);
                                       if(_loc2_)
                                       {
                                          §§push(ImprovementInventoryLayerComponent.DESELECT_ALL);
                                          if(_loc2_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.handleDetachItem);
                                             if(!_loc1_)
                                             {
                                                addr00cd:
                                                §§push(this.component);
                                                if(_loc2_)
                                                {
                                                   addr00d5:
                                                   §§push(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr00e8:
                                                      §§pop().addEventListener(§§pop(),this.handleImprovementSelected);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr00fc:
                                                         §§push(this.component);
                                                         if(!_loc1_)
                                                         {
                                                            addr0104:
                                                            §§push(ImprovementSlotComponent.SLOT_CLICKED);
                                                            if(!_loc1_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.handleSlotClicked);
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(this.component);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(ImprovementSlotComponent.SLOT_OVER);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr012f);
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr0143);
                                                               }
                                                               §§goto(addr015b);
                                                            }
                                                            addr012f:
                                                            §§pop().addEventListener(§§pop(),this.handleSlotOver);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(this.component);
                                                               if(_loc2_)
                                                               {
                                                                  addr0143:
                                                                  §§push(ImprovementSlotComponent.SLOT_OUT);
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr014e:
                                                                     §§pop().addEventListener(§§pop(),this.handleSlotOut);
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr015b:
                                                                        §§push(this.component);
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           addr016b:
                                                                           §§push(ImprovementInventoryItemRendererEvent.ITEM_OUT);
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              addr0188:
                                                                              §§pop().addEventListener(§§pop(),this.handleInventoryItemOut);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr01a5:
                                                                                 this.component.addEventListener(ImprovementInventoryItemRendererEvent.ITEM_OVER,this.handleInventoryItemOver);
                                                                                 addr019f:
                                                                                 addr019c:
                                                                              }
                                                                              §§goto(addr01ad);
                                                                           }
                                                                           §§goto(addr01a5);
                                                                        }
                                                                        §§goto(addr019f);
                                                                     }
                                                                     §§goto(addr01ad);
                                                                  }
                                                                  §§goto(addr0188);
                                                               }
                                                               §§goto(addr016b);
                                                            }
                                                            §§goto(addr01ad);
                                                         }
                                                         §§goto(addr0143);
                                                      }
                                                      §§goto(addr01ad);
                                                   }
                                                   §§goto(addr01a5);
                                                }
                                                §§goto(addr0143);
                                             }
                                             addr01ad:
                                             return;
                                          }
                                          §§goto(addr0188);
                                       }
                                       §§goto(addr0104);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00e8);
                              }
                              §§goto(addr016b);
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr019c);
               }
               §§goto(addr014e);
            }
            §§goto(addr0056);
         }
         §§goto(addr00cd);
      }
      
      private function handleInventoryItemOver(param1:ImprovementInventoryItemRendererEvent) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         §§push(param1.selectedConfigID);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc8_ && Boolean(this)))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc7_ || Boolean(param1))
            {
               §§push(!isNaN(_loc2_));
               if(_loc7_ || Boolean(_loc3_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc7_ || Boolean(param1))
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || _loc2_)
                        {
                           §§pop();
                           if(_loc7_ || Boolean(param1))
                           {
                              addr00b4:
                              §§push(param1.improvementVo);
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr00df:
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                                             "cid":_loc2_,
                                             "lineId":LINE_ID_1,
                                             "pt":_loc3_,
                                             "impro":param1.improvementVo
                                          },this.getMediatorName());
                                          if(_loc8_ && _loc2_)
                                          {
                                             addr0141:
                                             addr0146:
                                             addr0145:
                                             if(!param1.improvementVo)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr0150:
                                                   §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.shoplink.header.capital"));
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            addr01a1:
                                                            addr0181:
                                                            §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.shoplink.text"));
                                                            if(_loc7_)
                                                            {
                                                               addr01a0:
                                                               §§push(§§pop());
                                                            }
                                                            _loc5_ = §§pop();
                                                         }
                                                         §§goto(addr01a3);
                                                      }
                                                      §§goto(addr01a0);
                                                   }
                                                   §§goto(addr01a1);
                                                }
                                                addr01a3:
                                                _loc6_ = new SimpleTextUiInfolayerContentVo(LINE_ID_1,_loc3_,_loc5_,_loc4_);
                                                if(_loc7_)
                                                {
                                                   sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,this.getMediatorName());
                                                }
                                                §§goto(addr01ce);
                                             }
                                          }
                                          addr01ce:
                                          return;
                                       }
                                       §§goto(addr0181);
                                    }
                                    else
                                    {
                                       §§push(_loc2_ == ImprovementInventoryItemRendererVo.GET_MORE_CONFIG_ID_DUMMY);
                                       if(_loc7_)
                                       {
                                          var _temp_13:* = §§pop();
                                          addr0130:
                                          §§push(_temp_13);
                                          if(_temp_13)
                                          {
                                             if(_loc7_)
                                             {
                                                addr013a:
                                                §§pop();
                                                if(_loc7_)
                                                {
                                                   §§goto(addr0141);
                                                }
                                                §§goto(addr0150);
                                             }
                                          }
                                          §§goto(addr0146);
                                       }
                                       §§goto(addr013a);
                                    }
                                 }
                                 §§goto(addr0146);
                              }
                              §§goto(addr0145);
                           }
                           §§goto(addr01a3);
                        }
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr0130);
               }
               §§goto(addr013a);
            }
            §§goto(addr01a3);
         }
         §§goto(addr00b4);
      }
      
      private function handleInventoryItemOut(param1:ImprovementInventoryItemRendererEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleSlotClicked(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:ImprovementVo = null;
         var _loc4_:ImprovementSlotComponentVo = null;
         var _loc5_:ImprovementSlotComponentVo = null;
         if(!_loc8_)
         {
            param1.stopPropagation();
         }
         var _loc2_:ImprovementSlotComponent = param1.target as ImprovementSlotComponent;
         if(!_loc8_)
         {
            if(_loc2_)
            {
               if(_loc9_)
               {
                  if(this.cursorProxy.currentSelectedImprovementCid == -1)
                  {
                     if(_loc9_ || Boolean(param1))
                     {
                        §§push(_loc2_.currentSlotState);
                        if(_loc9_ || Boolean(param1))
                        {
                           §§push(ImprovementSlotComponent.STATE_SLOT_ACTIVE);
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_INFO,{
                                       "buildingId":this._data.residentialVo.buildingDTO.id,
                                       "slotId":_loc2_.data.configSlot.id,
                                       "impro":_loc2_.data.improvementVo
                                    });
                                    if(_loc8_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 addr00e0:
                                 addr00da:
                                 if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_EXPIRED)
                                 {
                                    if(_loc9_ || Boolean(_loc3_))
                                    {
                                       addr00f2:
                                       sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_EXPIRED,{
                                          "buildingId":this._data.residentialVo.buildingDTO.id,
                                          "slotId":_loc2_.data.configSlot.id,
                                          "impro":_loc2_.data.improvementVo
                                       });
                                    }
                                 }
                              }
                              §§goto(addr02fa);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr00f2);
                  }
                  else
                  {
                     _loc3_ = this._data.getImprovementByConfigId(this.cursorProxy.currentSelectedImprovementCid);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.currentSlotState);
                        if(_loc9_)
                        {
                           §§push(ImprovementSlotComponent.STATE_SLOT_PREVIEW);
                           if(_loc9_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_EQUIP,{
                                       "buildingId":this._data.residentialVo.buildingDTO.id,
                                       "slotId":_loc2_.data.configSlot.id,
                                       "impro":_loc3_
                                    });
                                    if(_loc8_ && Boolean(this))
                                    {
                                       addr0241:
                                       sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_REPLACE_EXPIRED,{
                                          "buildingId":this._data.residentialVo.buildingDTO.id,
                                          "slotId":_loc2_.data.configSlot.id,
                                          "impro":_loc2_.data.improvementVo,
                                          "newImpro":_loc3_
                                       });
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§goto(addr0283);
                                       }
                                       §§goto(addr0291);
                                    }
                                    §§goto(addr0283);
                                 }
                                 §§goto(addr0291);
                              }
                              else
                              {
                                 §§push(_loc2_.currentSlotState);
                                 if(_loc9_)
                                 {
                                    §§push(ImprovementSlotComponent.STATE_SLOT_ACTIVE);
                                    if(_loc9_)
                                    {
                                       addr01c1:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             sendNotification(MiniLayerConstants.OPEN_MINI_IMPROVEMENT_REPLACE,{
                                                "buildingId":this._data.residentialVo.buildingDTO.id,
                                                "slotId":_loc2_.data.configSlot.id,
                                                "impro":_loc2_.data.improvementVo,
                                                "newImpro":_loc3_
                                             });
                                             if(_loc8_)
                                             {
                                                §§goto(addr0241);
                                             }
                                          }
                                          §§goto(addr0283);
                                       }
                                       else
                                       {
                                          §§push(_loc2_.currentSlotState);
                                          if(_loc9_)
                                          {
                                             §§push(ImprovementSlotComponent.STATE_SLOT_EXPIRED);
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      §§goto(addr0241);
                                                   }
                                                }
                                                addr0283:
                                                §§goto(addr028d);
                                             }
                                             addr028d:
                                             §§goto(addr0287);
                                          }
                                       }
                                       §§goto(addr0287);
                                    }
                                    §§goto(addr028d);
                                 }
                              }
                              §§goto(addr0287);
                           }
                           §§goto(addr01c1);
                        }
                        addr0287:
                        if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_PREVIEW)
                        {
                           addr0291:
                           for each(_loc5_ in this._data.slotData)
                           {
                              if(_loc5_.configSlot.id == _loc2_.data.configSlot.id)
                              {
                                 _loc4_ = _loc5_;
                                 _loc4_.currentTime = this.timerProxy.currentTimeStamp;
                                 break;
                              }
                           }
                           if(!_loc8_)
                           {
                              _loc2_.data = _loc4_;
                           }
                        }
                        §§goto(addr02fa);
                     }
                     §§goto(addr0291);
                  }
               }
               §§goto(addr00f2);
            }
            addr02fa:
            return;
         }
         §§goto(addr00f2);
      }
      
      private function handleSlotOver(param1:Event) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:ImprovementSlotComponent = null;
         var _loc3_:ImprovementVo = null;
         var _loc4_:Point = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:ImprovementSlotComponentVo = null;
         var _loc8_:* = NaN;
         var _loc9_:SimpleTextUiInfolayerContentVo = null;
         if(_loc11_ || Boolean(this))
         {
            param1.stopPropagation();
         }
         _loc2_ = param1.target as ImprovementSlotComponent;
         if(_loc11_ || Boolean(param1))
         {
            if(_loc2_)
            {
               if(!_loc12_)
               {
                  addr0072:
                  if(this.cursorProxy.currentSelectedImprovementCid != -1)
                  {
                     if(_loc11_)
                     {
                        addr0085:
                        if(_loc2_.data.currentState == ImprovementSlotComponent.STATE_SLOT_FREE)
                        {
                           addr0095:
                           _loc3_ = this._data.getImprovementByConfigId(this.cursorProxy.currentSelectedImprovementCid);
                           _loc7_ = new ImprovementSlotComponentVo();
                           _loc7_.configSlot = _loc2_.data.configSlot;
                           if(_loc11_ || Boolean(param1))
                           {
                              _loc7_.currentState = ImprovementSlotComponent.STATE_SLOT_PREVIEW;
                              if(!_loc12_)
                              {
                                 _loc7_.improvementVo = _loc3_;
                                 if(!(_loc12_ && Boolean(_loc3_)))
                                 {
                                    _loc2_.data = _loc7_;
                                 }
                              }
                           }
                        }
                        addr00f7:
                        _loc4_ = _loc2_.localToGlobal(new Point());
                        _loc4_.x += _loc2_.width / 2;
                        if(!_loc12_)
                        {
                           §§push("");
                           if(!(_loc12_ && Boolean(_loc3_)))
                           {
                              _loc5_ = §§pop();
                              if(_loc11_)
                              {
                                 addr0132:
                                 _loc6_ = "";
                                 addr0130:
                              }
                              §§push(_loc2_.currentSlotState);
                              if(!_loc12_)
                              {
                                 while(true)
                                 {
                                    var _loc10_:* = §§pop();
                                    if(!_loc12_)
                                    {
                                       §§push(ImprovementSlotComponent.STATE_SLOT_ACTIVE);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc11_ || Boolean(_loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(0);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr043e:
                                                   §§push(3);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ImprovementSlotComponent.STATE_SLOT_EXPIRED);
                                                if(!(_loc12_ && Boolean(param1)))
                                                {
                                                   addr03b8:
                                                   §§push(_loc10_);
                                                   if(!(_loc12_ && Boolean(this)))
                                                   {
                                                      addr03c8:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§push(1);
                                                            if(_loc11_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr043e);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ImprovementSlotComponent.STATE_SLOT_FREE);
                                                         if(_loc11_)
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               addr03f2:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr03fc:
                                                                     §§push(2);
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0456:
                                                                     §§push(4);
                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr0476);
                                                               }
                                                               §§push(ImprovementSlotComponent.STATE_SLOT_PREVIEW);
                                                               if(!(_loc12_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc12_ && Boolean(this)))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc12_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr043e);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0456);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0452);
                                                                     }
                                                                     §§goto(addr0456);
                                                                  }
                                                                  addr0452:
                                                                  §§goto(addr0450);
                                                               }
                                                               addr0450:
                                                               if(ImprovementSlotComponent.STATE_SLOT_LOCKED === _loc10_)
                                                               {
                                                                  §§goto(addr0456);
                                                               }
                                                               else
                                                               {
                                                                  §§push(5);
                                                               }
                                                               addr0476:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                  case 1:
                                                                     §§push(_loc2_.data);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop().improvementVo);
                                                                        if(!(_loc12_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(§§pop().config.id);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc8_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(!isNaN(_loc8_));
                                                                              if(_loc11_ || Boolean(_loc2_))
                                                                              {
                                                                                 var _temp_14:* = §§pop();
                                                                                 §§push(_temp_14);
                                                                                 §§push(_temp_14);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc11_ || Boolean(this))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc12_ && Boolean(param1)))
                                                                                          {
                                                                                             addr01ac:
                                                                                             addr01a9:
                                                                                             §§push(Boolean(_loc2_.data.improvementVo));
                                                                                             if(_loc11_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr01bb:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc11_ || Boolean(param1))
                                                                                                   {
                                                                                                      sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                                                                                                         "cid":_loc8_,
                                                                                                         "lineId":LINE_ID_0,
                                                                                                         "pt":_loc4_,
                                                                                                         "impro":_loc2_.data.improvementVo
                                                                                                      },this.getMediatorName());
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr049d:
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         addr04ad:
                                                                                                         §§push("");
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc11_ || Boolean(this))
                                                                                                            {
                                                                                                               addr04c4:
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc11_ || Boolean(this))
                                                                                                               {
                                                                                                                  var _temp_22:* = §§pop();
                                                                                                                  addr04d4:
                                                                                                                  §§push(_temp_22);
                                                                                                                  if(_temp_22)
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        addr04de:
                                                                                                                        §§pop();
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           addr0507:
                                                                                                                           addr04e9:
                                                                                                                           addr04e7:
                                                                                                                           addr04e5:
                                                                                                                           §§push(_loc6_ == "");
                                                                                                                           if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              addr04f8:
                                                                                                                              §§push(!§§pop());
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr050b:
                                                                                                                        _loc9_ = new SimpleTextUiInfolayerContentVo(LINE_ID_0,_loc4_,_loc6_,_loc5_);
                                                                                                                        if(_loc11_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc9_,this.getMediatorName());
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr04f8);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0507);
                                                                                                            }
                                                                                                            §§goto(addr04f8);
                                                                                                         }
                                                                                                         §§goto(addr04e9);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr02bb:
                                                                                                      §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.improvatcursor.text",[ImprovementLayerProxy.improvementName(_loc3_.config)]));
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr02d9:
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc11_ || Boolean(param1)))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr02e8:
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr049d);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr04e7);
                                                                                                }
                                                                                                §§goto(addr049d);
                                                                                             }
                                                                                             §§goto(addr0507);
                                                                                          }
                                                                                          §§goto(addr04e5);
                                                                                       }
                                                                                       §§goto(addr04de);
                                                                                    }
                                                                                    §§goto(addr01bb);
                                                                                 }
                                                                                 §§goto(addr04d4);
                                                                              }
                                                                              §§goto(addr04c4);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr023b:
                                                                              §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.text"));
                                                                              if(_loc11_ || Boolean(param1))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc12_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr0272:
                                                                                    _loc6_ = §§pop();
                                                                                    if(!(_loc11_ || Boolean(param1)))
                                                                                    {
                                                                                       addr0326:
                                                                                       §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotlocked.text",[_loc2_.data.unlockLevel]));
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr0340:
                                                                                          §§push(§§pop());
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(_loc12_ && Boolean(param1))
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr049d);
                                                                                          }
                                                                                          §§goto(addr04e7);
                                                                                       }
                                                                                       §§goto(addr04ad);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr02e8);
                                                                                 }
                                                                                 §§goto(addr049d);
                                                                              }
                                                                              §§goto(addr0272);
                                                                           }
                                                                        }
                                                                        §§goto(addr01ac);
                                                                     }
                                                                     §§goto(addr01a9);
                                                                  case 2:
                                                                     §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.header.capital"));
                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc12_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§goto(addr023b);
                                                                           }
                                                                           §§goto(addr049d);
                                                                        }
                                                                        §§goto(addr0272);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02b3:
                                                                        _loc5_ = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           §§goto(addr02bb);
                                                                        }
                                                                     }
                                                                     §§goto(addr050b);
                                                                  case 3:
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotfree.improvatcursor.header.capital"));
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc11_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§goto(addr02b3);
                                                                              }
                                                                              §§goto(addr04ad);
                                                                           }
                                                                           §§goto(addr02d9);
                                                                        }
                                                                        §§goto(addr050b);
                                                                     }
                                                                     §§goto(addr049d);
                                                                  case 4:
                                                                     §§push(LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.simpletext.slotlocked.header.capital"));
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc12_ && Boolean(_loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr0326);
                                                                        }
                                                                        §§goto(addr050b);
                                                                     }
                                                                     §§goto(addr0340);
                                                                  default:
                                                                     §§goto(addr049d);
                                                               }
                                                               addr053f:
                                                               return;
                                                               §§goto(addr0456);
                                                            }
                                                            §§goto(addr0452);
                                                         }
                                                         §§goto(addr0450);
                                                      }
                                                      §§goto(addr0476);
                                                   }
                                                   §§goto(addr03f2);
                                                }
                                                §§goto(addr0450);
                                             }
                                             §§goto(addr0476);
                                          }
                                          §§goto(addr03c8);
                                       }
                                       §§goto(addr03b8);
                                    }
                                    §§goto(addr03fc);
                                 }
                              }
                              §§goto(addr04ad);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr0130);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr0085);
            }
            §§goto(addr053f);
         }
         §§goto(addr0072);
      }
      
      private function handleSlotOut(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:ImprovementSlotComponentVo = null;
         var _loc4_:ImprovementSlotComponentVo = null;
         if(!_loc7_)
         {
            param1.stopPropagation();
         }
         var _loc2_:ImprovementSlotComponent = param1.target as ImprovementSlotComponent;
         if(!(_loc7_ && Boolean(this)))
         {
            if(_loc2_)
            {
               if(!(_loc7_ && Boolean(this)))
               {
                  addr005a:
                  if(this.cursorProxy.currentSelectedImprovementCid != -1)
                  {
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        if(_loc2_.currentSlotState == ImprovementSlotComponent.STATE_SLOT_PREVIEW)
                        {
                           addr0090:
                           for each(_loc4_ in this._data.slotData)
                           {
                              if(_loc4_.configSlot.id == _loc2_.data.configSlot.id)
                              {
                                 _loc3_ = _loc4_;
                                 if(_loc8_)
                                 {
                                    _loc4_.currentTime = this.timerProxy.currentTimeStamp;
                                 }
                                 break;
                              }
                           }
                           if(!_loc7_)
                           {
                              _loc2_.data = _loc3_;
                           }
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr0090);
                  }
                  addr00fe:
                  sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
                  §§goto(addr0108);
               }
               §§goto(addr0090);
            }
            addr0108:
            return;
         }
         §§goto(addr005a);
      }
      
      private function handleImprovementSelected(param1:ImprovementInventoryItemRendererEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  addr002b:
                  sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,param1.selectedConfigID);
               }
            }
            return;
         }
         §§goto(addr002b);
      }
      
      private function handleDetachItem(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr003e);
               }
            }
            §§goto(addr0050);
         }
         addr003e:
         param1.stopPropagation();
         if(_loc3_ || _loc2_)
         {
            addr0050:
            sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
         }
      }
      
      private function handleOpenFeatureScreen(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc2_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.quest = false;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr005e);
            }
            §§goto(addr006e);
         }
         addr005e:
         _loc2_.feature = QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS;
         if(!_loc3_)
         {
            addr006e:
            sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
         }
      }
      
      private function handleOpenStore(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               addr0035:
               sendNotification(ApplicationNotificationConstants.OPEN_INGAME_STORE_POPUP,{"index":IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX});
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(ResidentialImprovementContentComponent.OPEN_FEATURE_SCREEN);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().removeEventListener(§§pop(),this.handleOpenFeatureScreen);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.component);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(ResidentialImprovementContentComponent.OPEN_IMPROVEMENT_STORE);
                        if(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.handleOpenStore);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(this.component);
                              if(_loc1_)
                              {
                                 addr0084:
                                 §§push(ImprovementInventoryItemRenderer.GET_MORE_EVENT);
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr0097:
                                    §§pop().removeEventListener(§§pop(),this.handleOpenStore);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(ImprovementInventoryLayerComponent.DESELECT_ALL);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§pop().removeEventListener(§§pop(),this.handleDetachItem);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00da:
                                                §§push(this.component);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr00f4:
                                                   §§push(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.handleImprovementSelected);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.component);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            §§push(ImprovementSlotComponent.SLOT_CLICKED);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.handleSlotClicked);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  addr014b:
                                                                  §§push(this.component);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr0153:
                                                                     §§push(ImprovementSlotComponent.SLOT_OVER);
                                                                     if(_loc1_)
                                                                     {
                                                                        §§pop().removeEventListener(§§pop(),this.handleSlotOver);
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(this.component);
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              addr017a:
                                                                              §§push(ImprovementSlotComponent.SLOT_OUT);
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 addr018d:
                                                                                 §§pop().removeEventListener(§§pop(),this.handleSlotOut);
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    §§push(this.component);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr01aa:
                                                                                       §§push(ImprovementInventoryItemRendererEvent.ITEM_OUT);
                                                                                       if(_loc1_ || _loc2_)
                                                                                       {
                                                                                          §§pop().removeEventListener(§§pop(),this.handleInventoryItemOut);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             addr01e4:
                                                                                             this.component.removeEventListener(ImprovementInventoryItemRendererEvent.ITEM_OVER,this.handleInventoryItemOver);
                                                                                             addr01de:
                                                                                             addr01db:
                                                                                          }
                                                                                          §§goto(addr01ec);
                                                                                       }
                                                                                       §§goto(addr01e4);
                                                                                    }
                                                                                    §§goto(addr01de);
                                                                                 }
                                                                                 §§goto(addr01ec);
                                                                              }
                                                                              §§goto(addr01e4);
                                                                           }
                                                                           §§goto(addr01aa);
                                                                        }
                                                                        §§goto(addr01db);
                                                                     }
                                                                     §§goto(addr01e4);
                                                                  }
                                                                  §§goto(addr017a);
                                                               }
                                                               §§goto(addr01ec);
                                                            }
                                                            §§goto(addr018d);
                                                         }
                                                         §§goto(addr01de);
                                                      }
                                                      §§goto(addr01ec);
                                                   }
                                                   §§goto(addr01e4);
                                                }
                                                §§goto(addr0153);
                                             }
                                             §§goto(addr01db);
                                          }
                                          §§goto(addr01e4);
                                       }
                                       §§goto(addr01aa);
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr018d);
                              }
                              §§goto(addr0153);
                           }
                           §§goto(addr01db);
                        }
                        §§goto(addr01e4);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr0097);
            }
            §§goto(addr00f4);
         }
         addr01ec:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED,ApplicationNotificationConstants.IMPROVEMENT_DELETED,ApplicationNotificationConstants.IMPROVEMENT_UPDATED,ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED,ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Boolean = false;
         var _loc3_:* = param1.getName();
         if(_loc5_ || Boolean(this))
         {
            §§push(ApplicationNotificationConstants.IMPROVEMENT_DELETED);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(_loc5_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        addr00fe:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr01d2:
                        §§push(4);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr01ea);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01b4:
                                 §§push(3);
                                 if(_loc4_ && Boolean(param1))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.IMPROVEMENT_UPDATED);
                              if(_loc5_ || Boolean(this))
                              {
                                 addr014d:
                                 §§push(_loc3_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(2);
                                          if(_loc4_ && _loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr01b4);
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED);
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr019c:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr01b4);
                                                }
                                                else
                                                {
                                                   §§goto(addr01d2);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01ce);
                                             }
                                             §§goto(addr01d2);
                                          }
                                          addr01ce:
                                          §§goto(addr01cd);
                                       }
                                       addr01cd:
                                       if(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT === _loc3_)
                                       {
                                          §§goto(addr01d2);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                       §§goto(addr01ea);
                                    }
                                    §§goto(addr01ea);
                                 }
                                 §§goto(addr019c);
                              }
                              §§goto(addr01cd);
                           }
                           addr01ea:
                           switch(§§pop())
                           {
                              case 0:
                              case 1:
                              case 2:
                              case 3:
                                 sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(this.component);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       §§push(false);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§pop().highlightSlots(§§pop());
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          this.setImprovementData(this._data.residentialVo);
                                          if(_loc4_ && Boolean(_loc3_))
                                          {
                                             break;
                                          }
                                          addr0079:
                                          this.checkCurrentSelection();
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          addr0099:
                                          addr0096:
                                          §§push(this.component);
                                          §§push(_loc2_);
                                       }
                                       §§pop().highlightSlots(§§pop());
                                       if(_loc4_ && Boolean(param1))
                                       {
                                       }
                                       break;
                                    }
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr0079);
                              case 4:
                                 _loc2_ = Boolean(param1.getBody());
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0096);
                           }
                           return;
                        }
                        §§goto(addr01ce);
                     }
                     §§goto(addr014d);
                  }
               }
               §§goto(addr019c);
            }
            §§goto(addr014d);
         }
         §§goto(addr00fe);
      }
      
      private function setImprovementData(param1:ResidentialFieldObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._data = this.layerProxy.getResidentialImprovementViewVo(param1);
            if(!_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr005b);
         }
         addr0038:
         this.component.data = this._data;
         if(_loc3_ || Boolean(param1))
         {
            addr005b:
            if(!this.featureProxy.improvementFeatureUnlocked)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._component.locked(this.featureProxy.improvementFeatureUnlockLevel);
               }
            }
         }
      }
      
      private function get container() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      public function get component() : ResidentialImprovementContentComponent
      {
         return this._component;
      }
      
      private function get layerProxy() : ImprovementLayerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._iLP);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0055:
                     this._iLP = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
                  }
               }
               return this._iLP;
            }
         }
         §§goto(addr0055);
      }
      
      private function get cursorProxy() : ImprovementCursorProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._iCP);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr003a:
                     this._iCP = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
                  }
               }
               return this._iCP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._tP);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr0032:
                     this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               return this._tP;
            }
         }
         §§goto(addr0032);
      }
      
      private function get featureProxy() : FeatureProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._fP);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  }
               }
               addr0055:
               return this._fP;
            }
         }
         §§goto(addr0055);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_OPENED);
         }
      }
   }
}

