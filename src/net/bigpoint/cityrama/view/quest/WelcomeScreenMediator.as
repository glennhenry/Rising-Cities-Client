package net.bigpoint.cityrama.view.quest
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.assistants.RentCollectorSideMenuMediator;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.WelcomeScreen;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class WelcomeScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "WelcomeScreenMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "WelcomeScreenMediator";
      }
      
      private var _questProxy:QuestProxy;
      
      private var _data:Vector.<QuestRewardInfoVo>;
      
      public function WelcomeScreenMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().but.addEventListener(MouseEvent.CLICK,this.showDropsAndClose);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr009f);
            }
            addr0054:
            §§pop().addEventListener(Event.CLOSE,this.handleClose);
            if(!(_loc2_ && Boolean(this)))
            {
               addr006d:
               §§push(this.component);
               if(!(_loc2_ && _loc2_))
               {
                  addr0087:
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(_loc1_)
                  {
                     §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                     if(_loc1_)
                     {
                        addr00a8:
                        this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                        addr00a2:
                        addr009f:
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00a2);
            }
            addr00b0:
            return;
         }
         §§goto(addr006d);
      }
      
      private function showDropsAndClose(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:Point = null;
         var _loc4_:Vector.<DropInfoVo> = null;
         var _loc5_:DropInfoVo = null;
         var _loc6_:QuestRewardInfoVo = null;
         var _loc7_:DropIconVO = null;
         var _loc8_:DropInfoVo = null;
         if(!(_loc12_ && Boolean(this)))
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         }
         var _loc2_:* = 0;
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            if(this._data)
            {
               addr006d:
               _loc3_ = new Point(this.component.width / 2,this.component.height / 2);
               _loc3_ = this.component.localToGlobal(_loc3_);
               _loc4_ = new Vector.<DropInfoVo>();
               var _loc9_:int = 0;
               var _loc10_:* = this._data;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc10_,_loc9_));
                  if(_loc12_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc6_ = §§nextvalue(_loc9_,_loc10_);
                     _loc5_ = QuestGUIProxy.getDropInfoForQuestReward(_loc6_.questRewardVo);
                     if(_loc5_)
                     {
                        if(_loc11_ || Boolean(this))
                        {
                           _loc4_.push(_loc5_);
                        }
                     }
                     continue;
                  }
                  if(_loc11_ || Boolean(this))
                  {
                     if(!_loc12_)
                     {
                        if(_loc11_ || Boolean(param1))
                        {
                           if(_loc4_)
                           {
                              if(_loc11_ || Boolean(param1))
                              {
                                 if(_loc4_.length > 0)
                                 {
                                    if(!_loc12_)
                                    {
                                       addr0146:
                                       _loc9_ = 0;
                                       if(_loc11_)
                                       {
                                          addr0150:
                                          _loc10_ = _loc4_;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc10_,_loc9_));
                                             break loop0;
                                          }
                                          addr023d:
                                          addr0236:
                                       }
                                    }
                                 }
                                 §§goto(addr0241);
                              }
                              §§goto(addr0146);
                           }
                           §§goto(addr0241);
                        }
                        §§goto(addr0146);
                     }
                     §§goto(addr0150);
                  }
                  §§goto(addr023d);
               }
               while(§§pop())
               {
                  _loc8_ = §§nextvalue(_loc9_,_loc10_);
                  if(_loc8_.type == ServerOutputConstants.GOOD)
                  {
                     _loc7_ = new DropIconVO(_loc8_.gfxId.toString(),_loc3_);
                     if(_loc11_)
                     {
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_]);
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           if(_loc11_)
                           {
                              §§push(§§pop() + 0.1);
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc2_ = §§pop();
                        }
                     }
                  }
                  else
                  {
                     _loc7_ = new DropIconVO(_loc8_.type,_loc3_);
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_]);
                        if(!(_loc12_ && Boolean(param1)))
                        {
                           §§push(_loc2_);
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              §§push(§§pop() + 0.1);
                              if(!(_loc12_ && Boolean(_loc3_)))
                              {
                                 addr0234:
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                              §§goto(addr0236);
                           }
                           §§goto(addr0234);
                        }
                     }
                  }
                  §§goto(addr0236);
               }
               §§goto(addr023d);
            }
            addr0241:
            TweenMax.delayedCall(_loc2_,this.handleClose);
            return;
         }
         §§goto(addr006d);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is Vector.<QuestRewardInfoVo>)
            {
               if(_loc2_ || Boolean(param1))
               {
                  addr003e:
                  this._data = param1 as Vector.<QuestRewardInfoVo>;
                  if(_loc2_)
                  {
                     addr0051:
                     this.component.data = this._data;
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0051);
            }
            addr005a:
            return;
         }
         §§goto(addr003e);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(this._questProxy.currentScreenQuestConfigId);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this._questProxy.currentScreenTaskConfigId);
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
               "questConfigId":_loc1_,
               "taskConfigId":_loc2_,
               "questType":QuestSystemTypeConstants.TUTORIAL
            });
            if(!_loc4_)
            {
               sendNotification(ApplicationNotificationConstants.QUEST_COLLECTREWARD,_loc1_);
               if(_loc3_)
               {
                  this.setSideMenusVisible(true);
                  if(_loc3_)
                  {
                     addr0090:
                     §§push(this.component);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                        if(_loc3_)
                        {
                           §§push(this.component);
                           if(!_loc4_)
                           {
                              §§pop().but.removeEventListener(MouseEvent.CLICK,this.showDropsAndClose);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(this.component);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00e8:
                                    §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                    if(_loc3_)
                                    {
                                       §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                       if(_loc3_)
                                       {
                                          addr0116:
                                          this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                          addr0110:
                                          addr010d:
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr012b:
                                             super.onRemove();
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr0110);
                              }
                              §§goto(addr010d);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr012b);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr010d);
      }
      
      public function get component() : WelcomeScreen
      {
         return super.viewComponent as WelcomeScreen;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.onRegister();
            if(!(_loc3_ && Boolean(this)))
            {
               this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
               if(!(_loc3_ && _loc2_))
               {
                  facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                  if(_loc2_ || _loc2_)
                  {
                     addr0095:
                     this.addListener();
                  }
               }
            }
            try
            {
               ExternalInterface.call("trackLevelUp",1);
               if(!(_loc3_ && _loc3_))
               {
                  addr00d4:
                  this.setSideMenusVisible(false);
               }
            }
            catch(e:Error)
            {
               §§goto(addr00d4);
            }
            return;
         }
         §§goto(addr0095);
      }
      
      private function setSideMenusVisible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:QuestSideMenuMediator = facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator;
         if(_loc5_)
         {
            _loc2_.component.visible = param1;
         }
         var _loc3_:RentCollectorSideMenuMediator = facade.retrieveMediator(RentCollectorSideMenuMediator.NAME) as RentCollectorSideMenuMediator;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(_loc3_.component);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(param1);
               if(!(_loc4_ && param1))
               {
                  §§pop().visible = §§pop();
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     addr00a1:
                     _loc3_.component.includeInLayout = param1;
                     addr00a0:
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00a1);
            }
            §§goto(addr00a0);
         }
         addr00a3:
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(!(_loc5_ && _loc2_))
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

