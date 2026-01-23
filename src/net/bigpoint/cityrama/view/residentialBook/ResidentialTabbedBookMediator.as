package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class ResidentialTabbedBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ResidentialTabbedBookMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "ResidentialTabbedBookMediator";
      }
      
      private var _resTP:ResidentialTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      public function ResidentialTabbedBookMediator(param1:String, param2:ResidentialPopup)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               this.prepareProxies();
               if(!(_loc4_ && Boolean(this)))
               {
                  this.setupListeners();
               }
            }
         }
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
            if(!_loc1_)
            {
               addr003f:
               this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function setTabs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.component.residentialTabData = this.tabProxy.tabs;
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(!_loc1_)
            {
               this.removeListener();
               if(!_loc1_)
               {
                  §§push(this.tabProxy);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop().currentIndex = -1;
                     if(!_loc1_)
                     {
                        addr0054:
                        this.tabProxy.currentResidential = null;
                        if(_loc2_)
                        {
                           §§goto(addr005d);
                        }
                        §§goto(addr009c);
                     }
                     addr005d:
                     this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr007c:
                        facade.removeMediator(ResidentialOverviewContentMediator.NAME);
                        if(_loc2_)
                        {
                           addr008c:
                           facade.removeMediator(ResidentialImprovementContentMediator.NAME);
                           if(!_loc1_)
                           {
                              addr009c:
                              facade.sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYED_CLOSED);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr009c);
                     }
                     addr00a7:
                     return;
                  }
                  §§goto(addr0054);
               }
               §§goto(addr008c);
            }
            §§goto(addr009c);
         }
         §§goto(addr007c);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc1_ || Boolean(this))
               {
                  addr004b:
                  this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                  addr0048:
               }
               return;
            }
            §§goto(addr004b);
         }
         §§goto(addr0048);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr003b:
                  this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
               }
               §§goto(addr0048);
            }
            §§goto(addr003b);
         }
         addr0048:
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
               if(_loc3_ || Boolean(param1))
               {
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(_loc3_)
                     {
                        addr0055:
                        this.tabProxy.currentIndex = param1.newIndex;
                        if(_loc3_)
                        {
                           §§goto(addr0065);
                        }
                        §§goto(addr0070);
                     }
                  }
               }
            }
            addr0065:
            this.cleanContainer();
            if(_loc3_)
            {
               addr0070:
               facade.sendNotification(ApplicationNotificationConstants.RESIDENTIAL_TAB_CHANGED,this.component);
            }
            return;
         }
         §§goto(addr0055);
      }
      
      private function cleanContainer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               if(§§pop().contentGroup)
               {
                  if(_loc2_)
                  {
                     addr002d:
                     this.component.contentGroup.removeAllElements();
                     addr002a:
                  }
               }
               return;
            }
            §§goto(addr002d);
         }
         §§goto(addr002a);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST,ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(ApplicationNotificationConstants.USERLEVEL_CHANGED);
            if(_loc3_ || Boolean(param1))
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr0118:
                        §§push(2);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr0130);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 addr0101:
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0118);
                              }
                              §§goto(addr0130);
                           }
                           else
                           {
                              §§goto(addr0114);
                           }
                        }
                        addr0114:
                     }
                     §§goto(addr0113);
                  }
               }
               §§goto(addr0114);
            }
            addr0113:
            if(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST === _loc2_)
            {
               §§goto(addr0118);
            }
            else
            {
               §§push(3);
            }
            addr0130:
            switch(§§pop())
            {
               case 0:
                  this.setTabs();
                  if(_loc3_)
                  {
                  }
                  break;
               case 1:
                  this.handleClose(null);
                  if(_loc4_ && _loc3_)
                  {
                  }
                  break;
               case 2:
                  sendNotification(ApplicationNotificationConstants.HARVEST_BUILDING,this.tabProxy.currentResidential.buildingDTO.id);
                  if(_loc3_)
                  {
                     this.handleClose(null);
                     if(_loc4_)
                     {
                     }
                  }
            }
            return;
         }
         §§goto(addr0101);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(param1.residential));
            if(_loc2_ || Boolean(param1))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr0053);
                     }
                     §§goto(addr012b);
                  }
               }
            }
            addr0053:
            if(param1.residential is ResidentialFieldObjectVo)
            {
               if(_loc2_)
               {
                  §§push(this.tabProxy);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop().currentResidential = param1.residential as ResidentialFieldObjectVo;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.setTabs();
                        if(_loc2_ || _loc3_)
                        {
                           if(param1.index)
                           {
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr00bc:
                                 §§push(this.tabProxy);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§pop().currentIndex = param1.index as int;
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr0111);
                              }
                              §§goto(addr010d);
                           }
                           else
                           {
                              §§push(this.tabProxy);
                              if(!_loc3_)
                              {
                                 §§pop().currentIndex = ResidentialTabProxy.OVERVIEW_TAB_INDEX;
                                 if(!_loc3_)
                                 {
                                    addr00f8:
                                    this.handleTabIndexChanged();
                                    if(_loc2_)
                                    {
                                       addr0111:
                                       addr010d:
                                       if(this.tabProxy.currentIndex != ResidentialTabProxy.OVERVIEW_TAB_INDEX)
                                       {
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             addr012b:
                                             this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr013e);
                              }
                           }
                           §§goto(addr0111);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr0111);
               }
               §§goto(addr00f8);
            }
            addr013e:
            return;
         }
         §§goto(addr00f8);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
               if(!_loc3_)
               {
                  addr004b:
                  this.component.tabBar.selectedIndex = this.tabProxy.currentIndex;
               }
               §§goto(addr0058);
            }
            §§goto(addr004b);
         }
         addr0058:
      }
      
      public function get component() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      private function get tabProxy() : ResidentialTabProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._resTP);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr0041:
                     this._resTP = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
                  }
               }
               return this._resTP;
            }
         }
         §§goto(addr0041);
      }
   }
}

