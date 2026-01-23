package net.bigpoint.cityrama.view.ingameStore
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.architectBook.*;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackStoreMainMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreMainMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class IngameStoreBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "IngameStoreBookMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "IngameStoreBookMediator";
      }
      
      private var _storeTabProxy:IngameStoreTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _architectCategory:String = "";
      
      private var _architectItemConfigId:Number = -1;
      
      public function IngameStoreBookMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
            if(_loc3_)
            {
               this.prepareProxies();
               if(!(_loc4_ && Boolean(param2)))
               {
                  addr004d:
                  this.setupListeners();
               }
               return;
            }
         }
         §§goto(addr004d);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(_loc1_)
            {
               sendNotification(VirtualTaskNotificationInterest.INGAME_STORE_OPENED);
            }
         }
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._storeTabProxy = facade.retrieveProxy(IngameStoreTabProxy.NAME) as IngameStoreTabProxy;
            if(!_loc1_)
            {
               this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(_loc2_)
               {
                  this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0076:
                     this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr0076);
         }
         addr0087:
      }
      
      private function setTabs() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.component.ingameStoreTabData = this._storeTabProxy.tabs;
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRemove();
            if(!(_loc2_ && Boolean(this)))
            {
               this.removeListener();
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr0062);
            }
            addr004c:
            this._storeTabProxy.currentIndex = -1;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0062:
               this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
               if(_loc1_ || _loc2_)
               {
                  sendNotification(VirtualTaskNotificationInterest.INGAME_STORE_CLOSED);
                  if(_loc1_)
                  {
                     addr0091:
                     facade.removeMediator(ArchitectBookMediator.NAME);
                     if(_loc1_)
                     {
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0091);
            }
            §§goto(addr00a1);
         }
         addr00a1:
         facade.removeMediator(BoosterpackStoreMainMediator.NAME);
         if(!_loc2_)
         {
            addr00b1:
            facade.removeMediator(ImprovementStoreMainMediator.NAME);
         }
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || Boolean(this))
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
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr005e:
                  this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
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
         if(_loc3_ || Boolean(param1))
         {
            if(param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(_loc3_)
                     {
                        §§push(this._storeTabProxy);
                        if(_loc3_)
                        {
                           §§pop().currentIndex = param1.newIndex;
                           if(_loc3_ || Boolean(param1))
                           {
                              §§goto(addr0063);
                           }
                           §§goto(addr00ae);
                        }
                        addr0063:
                        this._storeTabProxy.lastViewedIndex = this._storeTabProxy.currentIndex;
                        addr005f:
                        if(_loc3_)
                        {
                           §§push(this.component);
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!_loc2_)
                              {
                                 §§pop().showBackButton = §§pop();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr009e);
                                 }
                                 §§goto(addr013b);
                              }
                              addr009e:
                              this.component.showBackButton = false;
                              §§goto(addr009d);
                           }
                           addr009d:
                        }
                        §§goto(addr009a);
                     }
                     addr009a:
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00ae:
                        this.cleanContainer();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           facade.sendNotification(ApplicationNotificationConstants.INGAME_STORE_TAB_CHANGED,{
                              "container":this.component,
                              "cat":this._architectCategory,
                              "itemConfigId":this._architectItemConfigId
                           });
                           if(_loc3_ || Boolean(param1))
                           {
                              addr00ef:
                              if(this._architectCategory != "")
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    this._architectCategory = "";
                                    addr0106:
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr0124:
                                       if(this._architectItemConfigId != -1)
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr013b:
                                             this._architectItemConfigId = -1;
                                          }
                                       }
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr013b);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr0124);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr0141);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr00ef);
            }
            §§goto(addr005f);
         }
         addr0141:
      }
      
      private function cleanContainer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop().contentGroup)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr0046:
                     this.component.contentGroup.removeAllElements();
                  }
               }
               §§goto(addr004d);
            }
            §§goto(addr0046);
         }
         addr004d:
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(this)))
         {
            if(ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST === _loc2_)
            {
               addr0068:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.handleClose(null);
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.setTabs();
            if(_loc2_)
            {
               §§push(param1.index == IngameStoreTabProxy.ARCHITECT_TAB_INDEX);
               if(!_loc3_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(param1.index == IngameStoreTabProxy.BOOSTERPACK_TAB_INDEX);
                              if(_loc2_)
                              {
                                 addr0059:
                                 var _temp_2:* = §§pop();
                                 addr005a:
                                 §§push(_temp_2);
                                 if(!_temp_2)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr006b:
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          addr007c:
                                          if(param1.index == IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(this._storeTabProxy);
                                                if(_loc2_)
                                                {
                                                   §§pop().currentIndex = param1.index as int;
                                                   if(_loc2_)
                                                   {
                                                      addr00d5:
                                                      §§push(this._storeTabProxy);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop().currentIndex);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(IngameStoreTabProxy.ARCHITECT_TAB_INDEX);
                                                            if(_loc2_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     addr010a:
                                                                     if(param1.cat)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           this._architectCategory = param1.cat as String;
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0131:
                                                                              if(param1.itemConfigId)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr013f:
                                                                                    this._architectItemConfigId = param1.itemConfigId as Number;
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0150:
                                                                                       this.handleTabIndexChanged();
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr016d:
                                                                                          addr017a:
                                                                                          addr0174:
                                                                                          addr0171:
                                                                                          if(this._storeTabProxy.currentIndex != IngameStoreTabProxy.ARCHITECT_TAB_INDEX)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr0183:
                                                                                                this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0196);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0183);
                                                                                 }
                                                                                 §§goto(addr0196);
                                                                              }
                                                                              §§goto(addr0150);
                                                                           }
                                                                           §§goto(addr016d);
                                                                        }
                                                                        §§goto(addr0150);
                                                                     }
                                                                     §§goto(addr0131);
                                                                  }
                                                                  §§goto(addr013f);
                                                               }
                                                               §§goto(addr0150);
                                                            }
                                                            §§goto(addr017a);
                                                         }
                                                         §§goto(addr0174);
                                                      }
                                                      §§goto(addr0171);
                                                   }
                                                   §§goto(addr010a);
                                                }
                                                §§goto(addr0171);
                                             }
                                             §§goto(addr010a);
                                          }
                                          else
                                          {
                                             §§push(this._storeTabProxy);
                                             if(_loc2_)
                                             {
                                                §§pop().currentIndex = this._storeTabProxy.lastViewedIndex;
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   §§goto(addr00d5);
                                                }
                                                addr0196:
                                                return;
                                             }
                                          }
                                          §§goto(addr0171);
                                       }
                                       §§goto(addr0150);
                                    }
                                 }
                              }
                              §§goto(addr007c);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr006b);
                     }
                     §§goto(addr0059);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr007c);
            }
            §§goto(addr0131);
         }
         §§goto(addr010a);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0052:
                  this.component.tabBar.selectedIndex = this._storeTabProxy.currentIndex;
               }
               §§goto(addr005f);
            }
            §§goto(addr0052);
         }
         addr005f:
      }
      
      public function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
   }
}

