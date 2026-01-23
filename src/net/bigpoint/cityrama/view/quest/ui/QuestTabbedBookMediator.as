package net.bigpoint.cityrama.view.quest.ui
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class QuestTabbedBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "QuestTabbedBookMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "QuestTabbedBookMediator";
      }
      
      private var _questTabProxy:QuestTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      public function QuestTabbedBookMediator(param1:String, param2:QuestTabbedPopup)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               this.prepareProxies();
               if(_loc4_)
               {
                  addr0032:
                  this.setupListeners();
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._questTabProxy = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
            if(_loc2_)
            {
               this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(_loc2_)
               {
                  this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
               }
            }
         }
      }
      
      private function setTabs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.component.questTabData = this._questTabProxy.tabs;
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.onRemove();
            if(_loc2_ || _loc1_)
            {
               this.removeListener();
               if(!_loc1_)
               {
                  addr0045:
                  §§push(this._questTabProxy);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().currentIndex = -1;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr007f);
                  }
                  addr0076:
                  this._questTabProxy.currentQuest = null;
                  §§goto(addr0072);
               }
               addr0072:
               if(!_loc1_)
               {
                  addr007f:
                  this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
                  if(_loc2_ || _loc1_)
                  {
                     facade.removeMediator(QuestDetailViewMediator.NAME);
                  }
               }
               §§goto(addr009f);
            }
            addr009f:
            return;
         }
         §§goto(addr0045);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc2_))
               {
                  addr004b:
                  this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
               }
               §§goto(addr0058);
            }
            §§goto(addr004b);
         }
         addr0058:
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && _loc1_))
               {
                  addr005e:
                  this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                  addr005b:
               }
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr005b);
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1)
            {
               if(_loc3_)
               {
                  addr0021:
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(!_loc2_)
                     {
                        this._questTabProxy.currentIndex = param1.newIndex;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0062);
                        }
                     }
                     §§goto(addr0075);
                  }
               }
            }
            addr0062:
            this.cleanContainer();
            if(_loc3_ || Boolean(this))
            {
               addr0075:
               facade.sendNotification(ApplicationNotificationConstants.QUEST_TAB_CHANGED,this.component);
            }
            return;
         }
         §§goto(addr0021);
      }
      
      private function cleanContainer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               if(§§pop().contentGroup)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0047:
                     this.component.contentGroup.removeAllElements();
                     addr0044:
                  }
               }
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr0044);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.quest)
            {
               if(_loc2_)
               {
                  §§push(this._questTabProxy);
                  if(!_loc3_)
                  {
                     §§pop().currentQuest = param1.quest as QuestDetailViewVo;
                     if(!_loc3_)
                     {
                        this.setTabs();
                        if(!_loc3_)
                        {
                           if(param1.index)
                           {
                              if(!_loc3_)
                              {
                                 §§push(this._questTabProxy);
                                 if(!_loc3_)
                                 {
                                    addr005f:
                                    §§pop().currentIndex = param1.index as int;
                                    if(_loc3_ && Boolean(param1))
                                    {
                                    }
                                    §§goto(addr00b0);
                                 }
                                 else
                                 {
                                    addr009a:
                                    §§pop().currentIndex = ResidentialTabProxy.OVERVIEW_TAB_INDEX;
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§goto(addr00b0);
                                    }
                                 }
                                 §§goto(addr00ed);
                              }
                              addr00b0:
                              this.handleTabIndexChanged();
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00d3:
                                 if(this._questTabProxy.currentIndex != ResidentialTabProxy.OVERVIEW_TAB_INDEX)
                                 {
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       addr00ed:
                                       this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
                                    }
                                 }
                              }
                              §§goto(addr0100);
                           }
                           else
                           {
                              §§push(this._questTabProxy);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§goto(addr009a);
                              }
                           }
                           §§goto(addr00d3);
                        }
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr00ed);
            }
            addr0100:
            return;
         }
         §§goto(addr00b0);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
               if(!_loc2_)
               {
                  addr0058:
                  this.component.tabBar.selectedIndex = this._questTabProxy.currentIndex;
               }
               §§goto(addr0065);
            }
            §§goto(addr0058);
         }
         addr0065:
      }
      
      public function get component() : QuestTabbedPopup
      {
         return super.viewComponent as QuestTabbedPopup;
      }
   }
}

