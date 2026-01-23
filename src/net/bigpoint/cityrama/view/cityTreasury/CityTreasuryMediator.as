package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabContent;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class CityTreasuryMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CityTreasuryMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || CityTreasuryMediator)
      {
         NAME = "CityTreasuryMediator";
      }
      
      private var _tP:CityTreasuryTabProxy;
      
      private var _categoryIndex:int = 0;
      
      private var _packIndex:int = 0;
      
      public function CityTreasuryMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(NAME,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRegister();
            if(!(_loc2_ && Boolean(this)))
            {
               this.setupListener();
               if(!(_loc2_ && _loc1_))
               {
                  addr004c:
                  sendNotification(VirtualTaskNotificationInterest.CITY_TREASURY_OPENED);
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      private function setTabs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.component.treasuryTabData = this.tabProxy.tabs;
         }
      }
      
      private function setupListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr004d:
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0074:
                        this.component.addEventListener(CityTreasuryEvent.USER_CANT_AFFORD,this.handleUserCantAfford);
                        addr0070:
                     }
                     return;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0070);
            }
            §§goto(addr0074);
         }
         §§goto(addr004d);
      }
      
      private function handleUserCantAfford(param1:CityTreasuryEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
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
               if(_loc3_ || _loc3_)
               {
                  addr002a:
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        this.tabProxy.currentTabIndex = param1.newIndex;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr005b:
                           this._categoryIndex = 0;
                           if(!_loc2_)
                           {
                              this._packIndex = 0;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0087:
                                 §§push(this.component);
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    §§push(true);
                                    if(!(_loc2_ && Boolean(param1)))
                                    {
                                       §§pop().showBackButton = §§pop();
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr00ed);
                                    }
                                    addr00bb:
                                    this.component.showBackButton = false;
                                    §§goto(addr00ba);
                                 }
                                 addr00ba:
                                 addr00b6:
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    addr00da:
                                    this.cleanContainer();
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00ed:
                                       facade.sendNotification(ApplicationNotificationConstants.CITY_TREASURY_TAB_CHANGED,{
                                          "container":this.component,
                                          "category":this._categoryIndex,
                                          "pack":this._packIndex
                                       });
                                    }
                                 }
                                 §§goto(addr010f);
                              }
                              addr010f:
                              return;
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr005b);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00ed);
            }
            §§goto(addr0087);
         }
         §§goto(addr002a);
      }
      
      private function cleanContainer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               if(§§pop().contentGroup)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr0040:
                     this.component.contentGroup.removeAllElements();
                  }
               }
               §§goto(addr0047);
            }
            §§goto(addr0040);
         }
         addr0047:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(_loc2_)
            {
               this.removeListener();
               if(!(_loc1_ && _loc2_))
               {
                  this.tabProxy.currentTabIndex = -1;
                  if(_loc2_ || _loc2_)
                  {
                     this.removeAllChildMediator();
                     if(_loc2_)
                     {
                        addr0068:
                        sendNotification(VirtualTaskNotificationInterest.CITY_TREASURY_CLOSED);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr0068);
      }
      
      private function removeAllChildMediator() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            facade.removeMediator(CityTreasuryCurrencyTabMediator.NAME);
            if(_loc1_ || Boolean(this))
            {
               facade.removeMediator(CityTreasuryGoodsTabMediator.NAME);
               if(_loc1_)
               {
                  facade.removeMediator(CityTreasurySpecialTabMediator.NAME);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0071:
                     facade.removeMediator(CityTreasuryPackTabMediator.NAME);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0071);
            }
         }
         addr007c:
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && _loc2_))
               {
                  addr004d:
                  §§push(this.component);
                  if(_loc2_)
                  {
                     addr0056:
                     §§pop().removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                     if(!_loc1_)
                     {
                        addr006c:
                        this.component.removeEventListener(CityTreasuryEvent.USER_CANT_AFFORD,this.handleUserCantAfford);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006c);
               }
               addr0079:
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr004d);
      }
      
      private function get component() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setTabs();
            if(_loc3_)
            {
               this.tabProxy.currentTabIndex = param1.index as int;
               if(!_loc2_)
               {
                  this._categoryIndex = param1.cat as int;
                  if(_loc3_)
                  {
                     this._packIndex = param1.pack as int;
                     if(_loc3_ || _loc3_)
                     {
                        addr006c:
                        this.handleTabIndexChanged();
                        if(_loc3_)
                        {
                           addr0076:
                           §§push(this.component);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop().tabBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
                              if(!_loc2_)
                              {
                                 addr00ac:
                                 this.component.tabBar.selectedIndex = this.tabProxy.currentTabIndex;
                                 addr00a8:
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0076);
                  }
                  addr00b9:
                  return;
               }
               §§goto(addr006c);
            }
            §§goto(addr00a8);
         }
         §§goto(addr006c);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this.component);
            if(_loc3_)
            {
               §§pop().tabBar.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
               if(_loc3_ || Boolean(param1))
               {
                  addr0055:
                  this.component.tabBar.selectedIndex = this.tabProxy.currentTabIndex;
               }
               §§goto(addr0062);
            }
            §§goto(addr0055);
         }
         addr0062:
      }
      
      private function get tabProxy() : CityTreasuryTabProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._tP);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._tP = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
                  }
               }
               addr004b:
               return this._tP;
            }
         }
         §§goto(addr004b);
      }
      
      public function updateData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:CityTreasuryTabContent = null;
         if(_loc4_)
         {
            if(param1.index == this.tabProxy.currentTabIndex)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr003b:
                  §§push(this.component);
                  if(_loc4_)
                  {
                     if(§§pop().contentGroup.numElements > 0)
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this.component);
                           if(_loc4_ || Boolean(param1))
                           {
                              addr007c:
                              if(§§pop().contentGroup.getElementAt(0) is CityTreasuryTabContent)
                              {
                                 if(_loc4_ || Boolean(this))
                                 {
                                    addr00ac:
                                    _loc2_ = this.component.contentGroup.getElementAt(0) as CityTreasuryTabContent;
                                    if(_loc4_ || Boolean(this))
                                    {
                                       _loc2_.resetIndexes();
                                    }
                                    addr00d1:
                                    this.setData(param1);
                                 }
                                 §§goto(addr00d7);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr007c);
               }
               addr00d7:
               return;
            }
            §§goto(addr00d1);
         }
         §§goto(addr003b);
      }
   }
}

