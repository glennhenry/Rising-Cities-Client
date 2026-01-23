package net.bigpoint.cityrama.view.quest
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.quest.ui.QuestTabbedBookMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideItemRenderer;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideMenu;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestToolTipComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.supportClasses.ItemRenderer;
   
   public class QuestSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "QuestSideMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "QuestSideMenuMediator";
      }
      
      private var _point:Point;
      
      private var _tooltip:QuestToolTipComponent;
      
      private var _soundProxy:SoundProxy;
      
      private var _questGUIProxy:QuestGUIProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      public function QuestSideMenuMediator(param1:QuestSideMenu)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRegister();
            if(_loc1_ || _loc2_)
            {
               this._questGUIProxy = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
               if(_loc1_)
               {
                  this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  if(!_loc2_)
                  {
                     addr0069:
                     this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
                     if(!_loc2_)
                     {
                        this.component.data = this._questGUIProxy.getQuestSideDetailVo();
                        if(!_loc2_)
                        {
                           addr0093:
                           this.setupListeners();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr0069);
            }
            §§goto(addr0093);
         }
         §§goto(addr0069);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§push(QuestSideItemRenderer.QUEST_SIDE_ITEM_CLICKED);
               if(!_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleItemClicked);
                  if(_loc2_)
                  {
                     §§push(this.component);
                     if(!_loc1_)
                     {
                        addr0048:
                        §§push(QuestSideItemRenderer.HIDE_QUEST_INFOLAYER);
                        if(_loc2_ || Boolean(this))
                        {
                           addr0065:
                           §§pop().addEventListener(§§pop(),this.handleHideToolTip);
                           if(_loc2_ || _loc2_)
                           {
                              addr0082:
                              this.component.addEventListener(QuestSideItemRenderer.SHOW_QUEST_INFOLAYER,this.handleShowToolTip);
                              addr007c:
                              addr0079:
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr007c);
                  }
                  addr0089:
                  return;
               }
               §§goto(addr0065);
            }
            §§goto(addr0048);
         }
         §§goto(addr0079);
      }
      
      private function handleHideToolTip(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc3_))
            {
               addr003c:
               this.component.elementContainer.removeAllElements();
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function handleShowToolTip(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            param1.stopPropagation();
            if(!_loc4_)
            {
               addr0029:
               this.component.elementContainer.removeAllElements();
            }
            var _loc2_:ItemRenderer = param1.target as ItemRenderer;
            var _loc3_:Point = new Point(_loc2_.width,_loc2_.height / 2);
            _loc3_ = _loc2_.localToGlobal(_loc3_);
            _loc3_ = this.component.elementContainer.globalToLocal(_loc3_);
            if(_loc5_ || Boolean(_loc2_))
            {
               this._point = _loc3_;
               if(_loc5_)
               {
                  this._tooltip = new QuestToolTipComponent();
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(this._tooltip);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§pop().minWidth = 320;
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           addr00cb:
                           §§push(this._tooltip);
                           if(!_loc4_)
                           {
                              §§pop().data = _loc2_.data as QuestDetailViewVo;
                              if(_loc5_)
                              {
                                 §§push(this._tooltip);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    addr00f6:
                                    §§pop().visible = false;
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       addr010b:
                                       this._tooltip.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleTipCreationComplete);
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr0125);
                                       }
                                       §§goto(addr0173);
                                    }
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr010b);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr010b);
                  }
                  §§goto(addr0173);
               }
               §§goto(addr00cb);
            }
            addr0125:
            this.component.elementContainer.addElement(this._tooltip);
            if(_loc5_ || Boolean(this))
            {
               if(!this._serverStorageProxy.isQuestViewed(QuestDetailViewVo(_loc2_.data).questID))
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     addr0173:
                     sendNotification(ApplicationNotificationConstants.QUEST_VIEWED,QuestDetailViewVo(_loc2_.data).questID);
                  }
               }
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function handleTipCreationComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this._tooltip);
            if(_loc2_)
            {
               §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleTipCreationComplete);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this._tooltip);
                  if(_loc2_)
                  {
                     addr0057:
                     §§pop().x = this._point.x + 5;
                     if(!_loc3_)
                     {
                        §§push(this._tooltip);
                        if(_loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr009d);
                  }
                  addr007b:
                  §§pop().y = -2 + this._point.y - this._tooltip.height / 2;
                  if(_loc2_ || _loc3_)
                  {
                     addr00a1:
                     this._tooltip.visible = true;
                     addr009d:
                  }
                  return;
               }
               §§goto(addr009d);
            }
            §§goto(addr0057);
         }
         §§goto(addr009d);
      }
      
      private function handleItemClicked(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param1.stopPropagation();
            if(_loc3_ || _loc3_)
            {
               this._soundProxy.playButtonClick();
            }
         }
         var _loc2_:QuestDetailViewVo = param1.target.data as QuestDetailViewVo;
         if(!_loc4_)
         {
            this.openQuestPopup(_loc2_.questID);
         }
      }
      
      private function openQuestPopup(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc5_ && Boolean(param1)))
         {
            _loc2_.modal = true;
            if(!_loc5_)
            {
               _loc2_.viewClass = QuestTabbedPopup;
               if(_loc6_)
               {
                  addr0048:
                  _loc2_.mediatorClass = QuestTabbedBookMediator;
                  if(!(_loc5_ && _loc3_))
                  {
                     addr005d:
                     _loc2_.mediatorName = QuestTabbedBookMediator.NAME;
                  }
                  addr0066:
                  var _loc3_:Object = {};
                  var _loc4_:QuestDetailViewVo = this._questGUIProxy.getQuestDetailViewVo(param1);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     _loc3_.quest = _loc4_;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        _loc3_.index = QuestTabProxy.QUEST_DETAIL_TAB_INDEX;
                        if(!_loc5_)
                        {
                           §§push(_loc4_.isQuestComplete);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || Boolean(this))
                                 {
                                    this._soundProxy.playQuestReward();
                                    if(_loc6_)
                                    {
                                       §§goto(addr00ee);
                                    }
                                    §§goto(addr0111);
                                 }
                              }
                              addr00ee:
                              _loc2_.data = _loc3_;
                              if(_loc6_)
                              {
                                 addr00f8:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    addr0111:
                                    facade.sendNotification(ApplicationNotificationConstants.QUEST_LAYER_OPENED);
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§goto(addr0134);
                                    }
                                 }
                                 §§goto(addr014f);
                              }
                              addr0134:
                              §§goto(addr013d);
                           }
                           addr013d:
                           if(!this._serverStorageProxy.isQuestViewed(param1))
                           {
                              if(_loc6_ || Boolean(this))
                              {
                                 addr014f:
                                 sendNotification(ApplicationNotificationConstants.QUEST_VIEWED,param1);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr0111);
               }
               §§goto(addr005d);
            }
            §§goto(addr0048);
         }
         §§goto(addr0066);
      }
      
      override public function getMediatorName() : String
      {
         return QuestSideMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.QUEST_STATE_CHANGED,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(param1))
         {
            §§push(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED);
                     if(!_loc4_)
                     {
                        addr00fd:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           addr0103:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(1);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr013f);
                              }
                              §§goto(addr0157);
                           }
                           else
                           {
                              §§goto(addr013b);
                           }
                        }
                        addr013b:
                        §§goto(addr013a);
                     }
                     addr013a:
                     if(ApplicationNotificationConstants.SHOW_GUI === _loc2_)
                     {
                        §§goto(addr013f);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr0157:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           §§push(this.component);
                           if(_loc3_)
                           {
                              §§pop().data = this._questGUIProxy.getQuestSideDetailVo();
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 sendNotification(ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              break;
                           }
                           §§pop().visible = param1.getBody();
                           addr008c:
                           if(_loc3_)
                           {
                              addr00a6:
                              this.component.invalidateProperties();
                              if(_loc3_)
                              {
                              }
                           }
                           break;
                        case 2:
                           if(facade.hasMediator(WelcomeScreenMediator.NAME))
                           {
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 return;
                              }
                              break;
                           }
                           §§push(this.component);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr00a6);
                     }
                     return;
                  }
                  if(_loc3_)
                  {
                     addr00e7:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr013f:
                     §§push(2);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr0157);
                  §§goto(addr013f);
               }
               §§goto(addr0103);
            }
            §§goto(addr00fd);
         }
         §§goto(addr00e7);
      }
      
      public function get component() : QuestSideMenu
      {
         return super.viewComponent as QuestSideMenu;
      }
      
      public function kill() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.component.visible = false;
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§push(QuestSideItemRenderer.QUEST_SIDE_ITEM_CLICKED);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§pop().removeEventListener(§§pop(),this.handleItemClicked);
                  if(!_loc1_)
                  {
                     §§push(this.component);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(QuestSideItemRenderer.HIDE_QUEST_INFOLAYER);
                        if(_loc2_)
                        {
                           addr006d:
                           §§pop().removeEventListener(§§pop(),this.handleHideToolTip);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr0096);
                        }
                        addr008a:
                        this.component.removeEventListener(QuestSideItemRenderer.SHOW_QUEST_INFOLAYER,this.handleShowToolTip);
                        §§goto(addr0084);
                     }
                     addr0084:
                     addr0081:
                     if(!_loc1_)
                     {
                        addr0096:
                        super.onRemove();
                     }
                     §§goto(addr009b);
                  }
                  addr009b:
                  return;
               }
               §§goto(addr006d);
            }
            §§goto(addr0084);
         }
         §§goto(addr0081);
      }
   }
}

