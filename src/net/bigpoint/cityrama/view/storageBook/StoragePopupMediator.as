package net.bigpoint.cityrama.view.storageBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.model.storage.StorageProxy;
   import net.bigpoint.cityrama.model.storage.StorageSideMenuProxy;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StorageItemRenderer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StoragePopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   
   public class StoragePopupMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "StoragePopupMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "StoragePopupMediator";
         if(_loc2_)
         {
            UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
         }
      }
      
      private var _storageProxy:StorageProxy;
      
      private var _sideMenuProxy:StorageSideMenuProxy;
      
      private var _mainMenuPopedUpProxy:MainMenuPopedUpProxy;
      
      private var _lineContainer:Group;
      
      private var _featureProxy:FeatureProxy;
      
      public function StoragePopupMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               this._mainMenuPopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(!(_loc4_ && Boolean(this)))
               {
                  this.setupListeners();
                  if(_loc3_)
                  {
                     addr0063:
                     this._storageProxy = facade.retrieveProxy(StorageProxy.NAME) as StorageProxy;
                     if(!_loc4_)
                     {
                        addr0087:
                        this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                        if(_loc3_)
                        {
                           this._sideMenuProxy = facade.retrieveProxy(StorageSideMenuProxy.NAME) as StorageSideMenuProxy;
                           if(_loc3_)
                           {
                              addr00b5:
                              this.handleAddedToStage();
                           }
                        }
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00b5);
               }
               addr00ba:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0087);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.onRegister();
            if(!(_loc1_ && _loc1_))
            {
               sendNotification(ClickTaskNotificationConstants.STORAGE);
            }
         }
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = NAME;
            if(_loc2_ || Boolean(this))
            {
               addr003e:
               §§push(this.component);
               if(!(_loc1_ && _loc2_))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(!_loc1_)
                  {
                     addr006d:
                     this.component.itemList.addEventListener(StorageItemRenderer.REBUY_GOOD,this.onRebuyClicked);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006d);
            }
            addr007e:
            return;
         }
         §§goto(addr003e);
      }
      
      private function onRebuyClicked(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:List = param1.currentTarget as List;
         var _loc3_:GoodObjectVo = _loc2_.selectedItems[0].goodObjectVo;
         if(!(_loc5_ && Boolean(param1)))
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"goodConfigId":_loc3_.config.id});
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!_loc3_)
               {
                  addr0046:
                  this.component.itemList.removeEventListener(StorageItemRenderer.REBUY_GOOD,this.onRebuyClicked);
                  if(!(_loc3_ && _loc2_))
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
                     if(!(_loc3_ && _loc3_))
                     {
                        addr008d:
                        this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = null;
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr008d);
               }
               addr0095:
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr008d);
      }
      
      private function handleAddedToStage(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._sideMenuProxy)
            {
               if(_loc2_ || _loc3_)
               {
                  §§push(this.component);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr0046:
                           §§push(this.component);
                           if(_loc2_)
                           {
                              §§push(§§pop().sideMenuComponent);
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.component);
                                       if(_loc2_)
                                       {
                                          addr0067:
                                          §§push(§§pop().sideMenuComponent);
                                          if(!_loc3_)
                                          {
                                             §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleSubMenuIndexChange);
                                             if(!_loc3_)
                                             {
                                                §§push(this.component);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop().sideMenuComponent);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§goto(addr00ad);
                                                   }
                                                   §§goto(addr00dc);
                                                }
                                                §§goto(addr0100);
                                             }
                                             §§goto(addr00fd);
                                          }
                                          addr00ad:
                                          §§pop().dataProvider = this._sideMenuProxy.entries;
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             addr00c4:
                                             §§push(this.component);
                                             if(_loc2_ || Boolean(param1))
                                             {
                                                addr00d4:
                                                §§push(§§pop().sideMenuComponent);
                                                if(!_loc3_)
                                                {
                                                   addr00dc:
                                                   if(§§pop().selectedIndex == -1)
                                                   {
                                                      if(_loc2_ || Boolean(param1))
                                                      {
                                                         addr0103:
                                                         this.component.sideMenuComponent.selectedIndex = 0;
                                                         addr0100:
                                                         addr00fd:
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            addr0115:
                                                            this.handleSubMenuIndexChange();
                                                         }
                                                         §§goto(addr011a);
                                                      }
                                                      §§goto(addr0115);
                                                   }
                                                   §§goto(addr011a);
                                                }
                                                §§goto(addr0103);
                                             }
                                             §§goto(addr0100);
                                          }
                                          §§goto(addr011a);
                                       }
                                       §§goto(addr0100);
                                    }
                                 }
                                 §§goto(addr011a);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr0067);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr011a);
                  }
                  §§goto(addr00d4);
               }
            }
            addr011a:
            return;
         }
         §§goto(addr0046);
      }
      
      private function handleSubMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null;
         if(!_loc4_)
         {
            this.killGuiInfolayer();
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         §§push(this.component);
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            var _loc3_:* = §§pop().sideMenuComponent.selectedItem.type;
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(ServerTagConstants.GOOD_CONSTRUCTION);
               if(_loc5_)
               {
                  if(§§pop() === _loc3_)
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        addr01a2:
                        §§push(0);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                        }
                     }
                     else
                     {
                        addr0225:
                        §§push(3);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr0245);
                  }
                  else
                  {
                     §§push(ServerTagConstants.GOOD_NORMAL);
                     if(!_loc4_)
                     {
                        addr01c1:
                        if(§§pop() !== _loc3_)
                        {
                           §§push(ServerTagConstants.GOOD_SPECIAL);
                           if(_loc5_ || Boolean(this))
                           {
                              addr01fb:
                              if(§§pop() === _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(2);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0225);
                                 }
                                 §§goto(addr0245);
                              }
                              else
                              {
                                 §§goto(addr0220);
                              }
                           }
                           addr0220:
                           if(ServerImprovementConstants.IMPROVEMENT === _loc3_)
                           {
                              §§goto(addr0225);
                           }
                           else
                           {
                              §§push(4);
                           }
                           addr0245:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_CONSTRUCTION_MATERIALS"));
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                       }
                                       addr0261:
                                       this.createGuiInfolayer();
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          addr0275:
                                          §§push(this.component);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§pop().flavorText.text = _loc2_;
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr029a:
                                                §§push(this.component);
                                                if(_loc5_)
                                                {
                                                   §§pop().itemList.dataProvider = this._storageProxy.getStorageData(this.component.sideMenuComponent.selectedItem.type);
                                                   if(_loc5_)
                                                   {
                                                      addr02d3:
                                                      §§push(this.component);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr02e4:
                                                         §§pop().itemList.ensureIndexIsVisible(0);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr02f3:
                                                         §§push(this.component);
                                                      }
                                                      addr02f6:
                                                      §§pop().itemList.invalidateProperties();
                                                      break;
                                                   }
                                                   §§goto(addr02f3);
                                                }
                                                §§goto(addr02e4);
                                             }
                                             §§goto(addr02d3);
                                          }
                                          §§goto(addr02f6);
                                       }
                                       §§goto(addr029a);
                                    }
                                    else
                                    {
                                       addr0116:
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                          §§goto(addr0261);
                                       }
                                    }
                                    §§goto(addr02d3);
                                 }
                                 else
                                 {
                                    addr013d:
                                    _loc2_ = §§pop();
                                    addr013c:
                                    if(_loc5_)
                                    {
                                       §§goto(addr0261);
                                    }
                                 }
                                 §§goto(addr0275);
                              case 1:
                                 §§push(LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_GOODS"));
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_ && Boolean(param1))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr00d0:
                                       _loc2_ = §§pop();
                                       if(!(_loc5_ || Boolean(this)))
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr0261);
                                 }
                                 else
                                 {
                                    addr0107:
                                    §§push(§§pop());
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§goto(addr0116);
                                    }
                                    else
                                    {
                                       §§goto(addr013c);
                                    }
                                 }
                                 §§goto(addr0275);
                              case 2:
                                 §§push(LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_SPECIAL"));
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr00d0);
                                    }
                                    else
                                    {
                                       §§goto(addr013c);
                                    }
                                 }
                                 §§goto(addr00d0);
                              case 3:
                                 if(this._featureProxy.improvementFeatureUnlocked)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_HIP"));
                                       if(!_loc4_)
                                       {
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0116);
                                    }
                                    §§goto(addr0261);
                                 }
                                 else
                                 {
                                    §§push(LocaUtils.getString("rcl.booklayer.storage","rcl.booklayer.storage.flavortext_STORAGE_HIP.locked",[this._featureProxy.improvementFeatureUnlockLevel]));
                                    if(_loc5_)
                                    {
                                       §§goto(addr013c);
                                    }
                                 }
                                 §§goto(addr013d);
                              default:
                                 §§goto(addr0261);
                           }
                           return;
                        }
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(1);
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr0225);
                        }
                        §§goto(addr0245);
                        §§goto(addr0225);
                     }
                     §§goto(addr01fb);
                  }
               }
               §§goto(addr01c1);
            }
            §§goto(addr01a2);
         }
         §§goto(addr02e4);
      }
      
      private function createGuiInfolayer() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         if(!(_loc5_ && _loc2_))
         {
            this._lineContainer = new Group();
            if(!(_loc5_ && Boolean(this)))
            {
               this._lineContainer.percentHeight = 100;
               if(_loc4_)
               {
                  addr005b:
                  this._lineContainer.percentWidth = 100;
                  if(!(_loc5_ && _loc2_))
                  {
                     this.component.addElement(this._lineContainer);
                  }
               }
               var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
               if(!_loc5_)
               {
                  _loc2_.setProperties(590,180,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM,0);
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.push(_loc2_);
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        addr00d0:
                        this._lineContainer.addElement(_loc2_);
                     }
                     addr00d9:
                     var _loc3_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        _loc3_.setProperties(590,230,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,1);
                        if(_loc4_)
                        {
                           _loc1_.push(_loc3_);
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              this._lineContainer.addElement(_loc3_);
                              if(!_loc5_)
                              {
                                 addr012f:
                                 facade.removeMediator(UI_MEDIATOR_NAME);
                                 if(!_loc5_)
                                 {
                                    facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr015b:
                                       §§push(this.component);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§pop().addEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
                                             if(!_loc5_)
                                             {
                                                addr01a2:
                                                this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
                                                addr019c:
                                                addr0199:
                                             }
                                             return;
                                          }
                                          §§goto(addr01a2);
                                       }
                                       §§goto(addr019c);
                                    }
                                    §§goto(addr0199);
                                 }
                              }
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr015b);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00d9);
            }
         }
         §§goto(addr005b);
      }
      
      private function killGuiInfolayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._lineContainer != null)
            {
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§pop().removeElement(this._lineContainer);
                     if(_loc1_)
                     {
                        this._lineContainer = null;
                        addr0042:
                        if(_loc1_)
                        {
                           §§push(this.component);
                           if(_loc1_)
                           {
                              addr005e:
                              §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                              if(_loc1_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
                                 if(!_loc2_)
                                 {
                                    addr007f:
                                    this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
                                    addr0079:
                                    addr0076:
                                 }
                                 §§goto(addr0087);
                              }
                              §§goto(addr007f);
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr0076);
                     }
                     addr0087:
                     return;
                  }
                  §§goto(addr005e);
               }
            }
         }
         §§goto(addr0042);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc4_ || Boolean(param1))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_)
            {
               if(param1.callerType == UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT)
               {
                  if(!_loc5_)
                  {
                     sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                        "pt":_loc3_
                     },NAME);
                     addr0079:
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
                     "cid":_loc2_,
                     "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                     "pt":_loc3_
                  },NAME);
               }
               return;
            }
         }
         §§goto(addr0079);
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && _loc3_))
         {
            §§push(ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00c3:
                        §§push(1);
                        if(_loc4_ || Boolean(this))
                        {
                        }
                     }
                     §§goto(addr00e3);
                  }
                  else
                  {
                     §§goto(addr00bf);
                  }
               }
               addr00bf:
               §§goto(addr00be);
            }
            addr00be:
            if(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED === _loc2_)
            {
               §§goto(addr00c3);
            }
            else
            {
               §§push(2);
            }
            addr00e3:
            switch(§§pop())
            {
               case 0:
                  this.handleAddedToStage();
                  if(_loc4_ || Boolean(this))
                  {
                  }
                  break;
               case 1:
                  this.handleSubMenuIndexChange();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                  }
            }
            return;
         }
         §§goto(addr00c3);
      }
      
      public function get component() : StoragePopup
      {
         return super.viewComponent as StoragePopup;
      }
   }
}

