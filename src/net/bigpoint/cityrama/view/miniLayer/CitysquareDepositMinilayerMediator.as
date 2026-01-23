package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.CitySquareDepositItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareDepositMinilayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitysquareDepositMinilayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitysquareDepositMinilayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "CitysquareDepositMinilayerMediator";
      }
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      public function CitysquareDepositMinilayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
            if(!(_loc1_ && _loc2_))
            {
               addr003d:
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr0074);
               }
               §§goto(addr0107);
            }
            addr0074:
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                  if(!_loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr00b6);
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr0139);
               }
               §§goto(addr0142);
            }
            addr00b6:
            §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().addEventListener(§§pop(),this.component_ITEM_OVERHandler);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(_loc2_ || Boolean(this))
                  {
                     §§pop().addEventListener(Event.CLOSE,this.handleClose);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0107:
                        §§push(this.component);
                        if(!_loc1_)
                        {
                           addr0119:
                           §§push(CitySquareDepositItemRenderer.PLUS_CLICKED_FOR_MARKET);
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr012c);
                           }
                           §§goto(addr0142);
                        }
                        §§goto(addr013c);
                     }
                     §§goto(addr0139);
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0139);
            }
            addr012c:
            §§pop().addEventListener(§§pop(),this.handlePlusClicked);
            if(!_loc1_)
            {
               addr0142:
               this.component.addEventListener(CitysquareDepositMinilayer.DEPOSIT_CLICKED,this.onDepositClicked);
               addr013c:
               addr0139:
            }
            return;
         }
         §§goto(addr003d);
      }
      
      private function handlePlusClicked(param1:Event) : void
      {
         var event:Event;
         var listdata:Object;
         var goodID:int;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(_loc4_ || Boolean(this))
         {
            §§pop().§§slot[1] = param1;
            if(_loc4_)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = (this.component.itemList.dataGroup.getElementAt(this.component.itemList.dataGroup.getItemIndicesInView()[0]) as CitySquareDepositItemRenderer).listData;
                  if(_loc4_ || _loc3_)
                  {
                     addr0083:
                     goodID = int(listdata.goodCid);
                  }
                  try
                  {
                     addr008d:
                     ExternalInterface.call("showMarketOffers",goodID);
                     if(_loc4_ || _loc2_)
                     {
                        addr00cc:
                        this.handleClose();
                     }
                  }
                  catch(e:Error)
                  {
                     §§goto(addr00cc);
                  }
                  return;
               }
               §§goto(addr0083);
            }
            §§goto(addr008d);
         }
         §§goto(addr0083);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      private function onDepositClicked(param1:Event) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:QuestTaskDTO = null;
         var _loc6_:* = NaN;
         if(!_loc10_)
         {
            param1.stopPropagation();
            if(_loc9_ || Boolean(param1))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!(_loc10_ && _loc2_))
               {
                  addr0051:
                  this.component.removeEventListener(CitysquareDepositMinilayer.DEPOSIT_CLICKED,this.onDepositClicked);
               }
               var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
               var _loc3_:EventQuestVo = _loc2_.runningEventQuest;
               var _loc4_:Object = (this.component.itemList.dataGroup.getElementAt(this.component.itemList.dataGroup.getItemIndicesInView()[0]) as CitySquareDepositItemRenderer).listData;
               var _loc7_:int = 0;
               var _loc8_:* = _loc3_.currentChallenge.tasks;
               while(true)
               {
                  for each(_loc5_ in _loc8_)
                  {
                     if(_loc5_.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID != _loc4_.goodCid)
                     {
                        continue;
                     }
                     if(_loc10_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                     §§push(Number(_loc4_.amount));
                     if(_loc9_ || Boolean(param1))
                     {
                        _loc6_ = §§pop();
                        §§push(_loc6_);
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           §§push(this._goodStockProxy.getGoodByConfigId(_loc4_.goodCid).playerStock);
                           if(_loc9_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§push(this._goodStockProxy.getGoodByConfigId(_loc4_.goodCid).playerStock);
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       addr015f:
                                       _loc6_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          addr0169:
                                          addr0167:
                                          addr016b:
                                          if(_loc6_ > 0)
                                          {
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                sendNotification(ApplicationNotificationConstants.QUEST_DEPOSIT_TASK,{
                                                   "taskId":_loc5_.configQuestTaskID,
                                                   "questConfigId":_loc3_.quests[0].config.id,
                                                   "questType":QuestSystemTypeConstants.EVENT,
                                                   "category":QuestSystemTaskTargetTypeConstants.GOOD,
                                                   "amount":_loc6_,
                                                   "itemCid":_loc4_.goodCid
                                                });
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                this.component.removeEventListener(Event.CLOSE,this.handleClose);
                                                addr01c7:
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                             }
                                             facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr01c7);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr01c7);
                              }
                              §§goto(addr0167);
                           }
                           §§goto(addr016b);
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr0169);
                  }
                  return;
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.component.data = param1 as CitySquareDetailViewVo;
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr003e);
               }
               §§goto(addr00c9);
            }
            §§goto(addr00cc);
         }
         addr003e:
         §§push(this.component);
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(CitySquareDepositItemRenderer.PLUS_CLICKED_FOR_MARKET);
            if(!_loc2_)
            {
               §§pop().removeEventListener(§§pop(),this.handlePlusClicked);
               if(_loc1_)
               {
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00df);
            }
            §§goto(addr0083);
         }
         addr0078:
         §§push(CitysquareDepositMinilayer.DEPOSIT_CLICKED);
         if(_loc1_)
         {
            addr0083:
            §§pop().removeEventListener(§§pop(),this.onDepositClicked);
            if(_loc1_)
            {
               §§push(this.component);
               if(_loc1_ || _loc2_)
               {
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr00bc);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00cc);
            }
            §§goto(addr00df);
         }
         addr00bc:
         §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
         if(_loc1_)
         {
            addr00d2:
            this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
            addr00cc:
            addr00c9:
            if(_loc1_)
            {
               addr00df:
               super.onRemove();
            }
         }
      }
      
      public function get component() : CitysquareDepositMinilayer
      {
         return super.viewComponent as CitysquareDepositMinilayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Point = null;
         §§push(param1.cid);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(param1.target is CitySquareDepositItemRenderer)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push((param1.target as CitySquareDepositItemRenderer).goodCardBoard);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        addr0076:
                        _loc3_ = (param1.target as CitySquareDepositItemRenderer).goodCardBoard.localToGlobal(new Point());
                        addr006b:
                        if(_loc4_ || Boolean(param1))
                        {
                           _loc3_.x += (param1.target as CitySquareDepositItemRenderer).goodCardBoard.width / 2;
                           if(_loc4_)
                           {
                              addr00b9:
                              sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                                 "cid":_loc2_,
                                 "lineId":0,
                                 "pt":_loc3_,
                                 "type":param1.callerType
                              },NAME);
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr006b);
            }
            addr00db:
            return;
         }
         §§goto(addr006b);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

