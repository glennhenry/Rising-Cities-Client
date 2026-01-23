package net.bigpoint.cityrama.view.quest.ui
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.events.LinkedTextEvent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestDetailTaskComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestDetailViewComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class QuestDetailViewMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "QuestDetailViewMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "QuestDetailViewMediator";
         if(_loc1_ || _loc1_)
         {
            §§goto(addr0033);
         }
         §§goto(addr0048);
      }
      addr0033:
      
      public static const UI_LINE_ID:uint = 0;
      
      if(!(_loc2_ && QuestDetailViewMediator))
      {
         addr0048:
         UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
      }
      
      private var _component:QuestDetailViewComponent;
      
      private var _tabP:QuestTabProxy;
      
      private var _qGP:QuestGUIProxy;
      
      private var _sP:SoundProxy;
      
      public function QuestDetailViewMediator(param1:String, param2:QuestTabbedPopup)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super(param1,param2);
         }
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(!this._component)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._component = new QuestDetailViewComponent();
                  if(!_loc1_)
                  {
                     addr004d:
                     facade.removeMediator(UI_MEDIATOR_NAME);
                     if(!_loc1_)
                     {
                        §§push(facade);
                        §§push(§§findproperty(UserInterfaceInfoLayerMediator));
                        §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                        if(!(_loc1_ && _loc2_))
                        {
                           this.setDetailData();
                           if(!_loc1_)
                           {
                              addr00a6:
                              this.container.contentGroup.addElement(this.component);
                              if(_loc2_)
                              {
                                 addr00ba:
                                 this.addListener();
                              }
                           }
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00ba);
               }
            }
            §§goto(addr004d);
         }
         addr00c0:
      }
      
      private function setDetailData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.component.data = this.tabProxy.currentQuest;
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.showRewardUIInfoLayer);
                  if(_loc1_)
                  {
                     §§push(this.component);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                        if(_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.hideRewardUiInfoLayer);
                           if(_loc1_)
                           {
                              §§push(this.component);
                              if(!_loc2_)
                              {
                                 addr007d:
                                 §§push(QuestDetailViewComponent.EVENT_COLLECT_REWARD);
                                 if(_loc1_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.handleCollectRewards);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00a7:
                                       §§push(this.component);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr00b7:
                                          §§push(QuestDetailTaskComponent.EVENT_GET_RC);
                                          if(!_loc2_)
                                          {
                                             addr00c2:
                                             §§pop().addEventListener(§§pop(),this.handleGetRealCurrency);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§push(this.component);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(QuestDetailTaskComponent.EVENT_SKIP_TASK);
                                                   if(!_loc2_)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.handleSkipTask);
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         addr0106:
                                                         §§push(this.component);
                                                         if(_loc1_)
                                                         {
                                                            addr0118:
                                                            §§push(QuestDetailTaskComponent.EVENT_DEPOSIT);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr012b:
                                                               §§pop().addEventListener(§§pop(),this.handleDeposit);
                                                               if(_loc1_)
                                                               {
                                                                  addr0140:
                                                                  this.component.addEventListener(LinkedTextEvent.LINK_CLICKED,this.handleLinkClicked);
                                                                  addr013a:
                                                               }
                                                               §§goto(addr0147);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                         §§goto(addr013a);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr012b);
                                                }
                                                §§goto(addr0118);
                                             }
                                             §§goto(addr0106);
                                          }
                                          §§goto(addr0140);
                                       }
                                       §§goto(addr0118);
                                    }
                                    §§goto(addr0106);
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr013a);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr007d);
                  }
                  addr0147:
                  return;
               }
               §§goto(addr012b);
            }
            §§goto(addr00b7);
         }
         §§goto(addr0106);
      }
      
      private function handleLinkClicked(param1:LinkedTextEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(param1.linkType == LinkedTextEvent.LINK_TYPE_PLAYFIELDITEM);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(param1.linkParams);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0088:
                                       var _temp_6:* = §§pop();
                                       addr0089:
                                       §§push(_temp_6);
                                       if(_temp_6)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr009a:
                                             §§pop();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr00bf);
                                             }
                                             §§goto(addr00c8);
                                          }
                                       }
                                    }
                                    addr00bf:
                                    §§goto(addr00ba);
                                 }
                                 addr00ba:
                                 if(param1.linkParams.length > 0)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00c8:
                                       sendNotification(ApplicationNotificationConstants.OPEN_ITEM_IN_ARCHITECT_BOOK,param1.linkParams[0]);
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr009a);
            }
         }
         addr00dd:
      }
      
      private function handleDeposit(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:QuestTaskVo = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(!(_loc6_ && Boolean(param1)))
            {
               addr003f:
               if(param1.target is QuestDetailTaskComponent)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     _loc2_ = QuestDetailTaskComponent(param1.target).data;
                     addr006a:
                     if(_loc2_)
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(_loc2_.neededItemDepositAmount);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§push(_loc2_.depositedItemAmount);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_)
                                       {
                                          addr00cb:
                                          §§push(_loc2_.currentDepositStock);
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             addr00dd:
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      addr00fb:
                                                      addr00fd:
                                                      if(§§pop() < _loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               addr010e:
                                                               §§push(§§pop());
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr011d);
                                                               }
                                                               §§goto(addr012f);
                                                            }
                                                            addr011d:
                                                            _loc4_ = §§pop();
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               addr012f:
                                                               addr012d:
                                                               if(_loc4_ > 0)
                                                               {
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     sendNotification(ApplicationNotificationConstants.QUEST_DEPOSIT_TASK,{
                                                                        "taskId":_loc2_.configQuestTaskId,
                                                                        "questConfigId":_loc2_.questId,
                                                                        "questType":QuestSystemTypeConstants.TUTORIAL,
                                                                        "category":_loc2_.depositType,
                                                                        "amount":_loc4_,
                                                                        "itemCid":_loc2_.depositItemConfigId
                                                                     });
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0188);
                                                      }
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr011d);
                                                }
                                                §§goto(addr0188);
                                             }
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr0188);
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr00dd);
                        }
                        §§goto(addr00cb);
                     }
                  }
                  §§goto(addr0188);
               }
               §§goto(addr006a);
            }
            addr0188:
            return;
         }
         §§goto(addr003f);
      }
      
      private function handleSkipTask(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:QuestTaskVo = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(this)))
            {
               if(param1.target is QuestDetailTaskComponent)
               {
                  if(!_loc3_)
                  {
                     addr0057:
                     _loc2_ = QuestDetailTaskComponent(param1.target).data;
                     §§goto(addr0068);
                  }
                  §§goto(addr009b);
               }
               addr0068:
               if(_loc2_)
               {
                  if(_loc4_)
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr009b:
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_INSTANT_FINISH,{
                           "elementId":_loc2_.configQuestTaskId,
                           "questId":_loc2_.questId,
                           "questType":_loc2_.questSubType
                        });
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr009b);
               }
               addr00bd:
               return;
            }
            §§goto(addr0057);
         }
         §§goto(addr009b);
      }
      
      private function handleGetRealCurrency(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_ || _loc2_)
            {
               addr002a:
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               this.triggerDrops();
            }
         }
      }
      
      private function triggerDrops() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:DropIconVO = null;
         var _loc4_:DropInfoVo = null;
         var _loc1_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc1_ = this.component.localToGlobal(_loc1_);
         var _loc2_:* = 0;
         if(!_loc7_)
         {
            §§push(this.tabProxy);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(§§pop().currentQuest);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(Boolean(§§pop().drops));
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              addr00ab:
                              addr00a3:
                              addr00a0:
                              if(this.tabProxy.currentQuest.drops.length > 0)
                              {
                                 §§goto(addr00af);
                              }
                              §§goto(addr0224);
                           }
                           §§goto(addr00af);
                        }
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00a3);
            }
            §§goto(addr00a0);
         }
         addr00af:
         for each(_loc4_ in this.tabProxy.currentQuest.drops)
         {
            §§push(_loc4_.type);
            if(!_loc7_)
            {
               §§push(ServerOutputConstants.GOOD);
               if(_loc8_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc7_)
                     {
                        _loc3_ = new DropIconVO(_loc4_.gfxId.toString(),_loc1_);
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           §§push(§§pop() + 0.1);
                           if(!_loc7_)
                           {
                              addr0145:
                              §§push(§§pop());
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        §§goto(addr0145);
                     }
                  }
                  else
                  {
                     addr0154:
                     addr014f:
                     if(_loc4_.type != ServerTagConstants.GOOD_KEY)
                     {
                        _loc3_ = new DropIconVO(_loc4_.type,_loc1_);
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                           if(_loc7_ && Boolean(_loc3_))
                           {
                              continue;
                           }
                        }
                        §§push(_loc2_);
                        if(_loc8_ || Boolean(this))
                        {
                           §§push(§§pop() + 0.1);
                           if(!(_loc7_ && Boolean(_loc1_)))
                           {
                              addr0211:
                              §§push(§§pop());
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        §§goto(addr0211);
                     }
                  }
                  _loc3_ = new DropIconVO(_loc4_.type,_loc1_);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§push(_loc2_);
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(§§pop() + 0.1);
                     if(!_loc7_)
                     {
                        addr019f:
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr019f);
               }
               §§goto(addr0154);
            }
            §§goto(addr014f);
         }
         if(!_loc7_)
         {
            addr0224:
            TweenMax.delayedCall(_loc2_,this.closeLayerOnCollect);
         }
      }
      
      private function closeLayerOnCollect() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            sendNotification(ApplicationNotificationConstants.QUEST_COLLECTREWARD,this.tabProxy.currentQuest.questID);
            if(_loc2_ || _loc1_)
            {
               this.component.dispatchEvent(new Event(Event.CLOSE,true,true));
            }
         }
      }
      
      private function hideRewardUiInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               addr0022:
               sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
            }
            return;
         }
         §§goto(addr0022);
      }
      
      private function showRewardUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            param1.stopPropagation();
         }
         §§push(param1.cid);
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc5_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_)
            {
               addr0081:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
            return;
         }
         §§goto(addr0081);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
                     if(_loc3_)
                     {
                        addr0096:
                        §§push(_loc2_);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr00a4:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 addr00c2:
                                 §§push(1);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00f9);
                           }
                           else
                           {
                              §§goto(addr00dd);
                           }
                        }
                        addr00dd:
                        §§goto(addr00dc);
                     }
                     addr00dc:
                     if(ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED === _loc2_)
                     {
                        §§goto(addr00e1);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr00f9:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                        case 2:
                           this.updateData();
                           if(_loc3_ || Boolean(this))
                           {
                           }
                     }
                     return;
                  }
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr00e1:
                     §§push(2);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr00f9);
                  §§goto(addr00e1);
               }
               §§goto(addr00a4);
            }
            §§goto(addr0096);
         }
         §§goto(addr00c2);
      }
      
      private function updateData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestDetailViewVo = this.layerProxy.getQuestDetailViewVo(this.tabProxy.currentQuest.questID);
         if(!_loc2_)
         {
            this.tabProxy.currentQuest = _loc1_;
            if(_loc3_)
            {
               if(_loc1_.isQuestComplete)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0068:
                     this.soundProxy.playQuestReward();
                     if(_loc3_ || _loc3_)
                     {
                        addr007f:
                        this.setDetailData();
                     }
                  }
                  return;
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr0068);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRemove();
            if(_loc1_ || _loc2_)
            {
               this.removeListener();
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(_loc2_ || _loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.showRewardUIInfoLayer);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(this.component);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                        if(_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.hideRewardUiInfoLayer);
                           if(!_loc1_)
                           {
                              §§push(this.component);
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(QuestDetailViewComponent.EVENT_COLLECT_REWARD);
                                 if(_loc2_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.handleCollectRewards);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(this.component);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§push(QuestDetailTaskComponent.EVENT_GET_RC);
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             addr00cb:
                                             §§pop().removeEventListener(§§pop(),this.handleGetRealCurrency);
                                             if(!_loc1_)
                                             {
                                                addr00d8:
                                                §§push(this.component);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   addr00e8:
                                                   §§push(QuestDetailTaskComponent.EVENT_SKIP_TASK);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§goto(addr00fb);
                                                   }
                                                   §§goto(addr0151);
                                                }
                                                §§goto(addr0129);
                                             }
                                             §§goto(addr010f);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00e8);
                           }
                           §§goto(addr010f);
                        }
                        addr00fb:
                        §§pop().removeEventListener(§§pop(),this.handleSkipTask);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr010f:
                           §§push(this.component);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr0129:
                              §§push(QuestDetailTaskComponent.EVENT_DEPOSIT);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleDeposit);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr0151:
                                    this.component.removeEventListener(LinkedTextEvent.LINK_CLICKED,this.handleLinkClicked);
                                    addr014b:
                                 }
                                 §§goto(addr0158);
                              }
                              §§goto(addr0151);
                           }
                           §§goto(addr014b);
                        }
                        addr0158:
                        return;
                     }
                     §§goto(addr0129);
                  }
                  §§goto(addr010f);
               }
               §§goto(addr00cb);
            }
            §§goto(addr00e8);
         }
         §§goto(addr00d8);
      }
      
      private function get container() : QuestTabbedPopup
      {
         return super.viewComponent as QuestTabbedPopup;
      }
      
      public function get component() : QuestDetailViewComponent
      {
         return this._component;
      }
      
      private function get tabProxy() : QuestTabProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._tabP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0033:
                     this._tabP = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
                  }
               }
               return this._tabP;
            }
         }
         §§goto(addr0033);
      }
      
      private function get layerProxy() : QuestGUIProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._qGP);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._qGP = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
                  }
               }
               addr0055:
               return this._qGP;
            }
         }
         §§goto(addr0055);
      }
      
      private function get soundProxy() : SoundProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._sP);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr003a:
                     this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  }
               }
               return this._sP;
            }
         }
         §§goto(addr003a);
      }
   }
}

