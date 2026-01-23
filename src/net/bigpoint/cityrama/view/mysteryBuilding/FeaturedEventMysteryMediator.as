package net.bigpoint.cityrama.view.mysteryBuilding
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.mysteryBuilding.components.ImprovedMysteryBuildingTab;
   import net.bigpoint.cityrama.view.mysteryBuilding.components.MysteryOutcomeRenderer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventMysteryMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventMysteryMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FeaturedEventMysteryMediator";
      }
      
      private var _component:ImprovedMysteryBuildingTab;
      
      private var _data:FeaturedMysteryBuildingVo;
      
      private var _fEP:FeaturedEventProxy;
      
      public function FeaturedEventMysteryMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(!this.component)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  this._component = new ImprovedMysteryBuildingTab();
                  if(!(_loc1_ && _loc2_))
                  {
                     addr004c:
                     if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                           if(!(_loc1_ && _loc2_))
                           {
                              addr0090:
                              §§push(facade);
                              §§push(§§findproperty(UserInterfaceInfoLayerMediator));
                              §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                              if(_loc2_)
                              {
                                 this.setLayerData();
                                 if(!_loc1_)
                                 {
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr0090);
                  }
                  addr00d5:
                  this.container.contentGroup.addElement(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     addr00f2:
                     this.addListener();
                  }
               }
               §§goto(addr00f8);
            }
            §§goto(addr004c);
         }
         addr00f8:
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._data = this.featuredEventProxy.featuredMysteryBuildingVo;
            if(_loc1_)
            {
               if(this._data)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0058:
                     this.component.data = this._data;
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  this.closeMainLayer();
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      private function closeMainLayer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FeaturedEventLayerMediator.NAME);
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§push(ImprovedMysteryBuildingTab.BUILD_NOW);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().addEventListener(§§pop(),this.handleBuild);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.component);
                     if(_loc1_)
                     {
                        addr0057:
                        §§push(ImprovedMysteryBuildingTab.BUY_PERMISSION);
                        if(_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.handleBuyPermission);
                           if(_loc1_ || Boolean(this))
                           {
                              addr0081:
                              §§push(this.component);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(ImprovedMysteryBuildingTab.GET_RC);
                                 if(!_loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.handleGetRealCurrency);
                                    if(_loc1_)
                                    {
                                       §§push(this.component);
                                       if(!_loc2_)
                                       {
                                          addr00b3:
                                          §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr00d0:
                                             §§pop().addEventListener(§§pop(),this.handleShowUIInfoLayer);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00ee:
                                                this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.handleHideUIInfoLayer);
                                                addr00e8:
                                                addr00e4:
                                             }
                                             §§goto(addr00f5);
                                          }
                                          §§goto(addr00ee);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00e4);
                                 }
                                 §§goto(addr00ee);
                              }
                              §§goto(addr00e8);
                           }
                           §§goto(addr00f5);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00ee);
            }
            §§goto(addr0057);
         }
         addr00f5:
      }
      
      private function handleBuild(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._data)
            {
               if(_loc2_ || Boolean(this))
               {
                  sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{"config":this._data.mysteryConfigPlayfieldItem});
               }
            }
         }
      }
      
      private function handleBuyPermission(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._data)
            {
               if(_loc3_ || Boolean(param1))
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0052:
                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELDITEM_BUY_PERMISSION,this._data.mysteryConfigPlayfieldItem.permissionConfigId);
                  }
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function handleGetRealCurrency(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      private function handleHideUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleShowUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Point = null;
         if(_loc4_ || Boolean(this))
         {
            if(param1.target is MysteryOutcomeRenderer)
            {
               _loc2_ = param1.target.localToGlobal(new Point());
               addr0031:
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.x += param1.target.width / 2;
                  if(!_loc3_)
                  {
                     addr0082:
                     sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                        "cid":param1.cid,
                        "lineId":0,
                        "pt":_loc2_,
                        "type":param1.callerType
                     },NAME);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0082);
            }
            addr00a7:
            return;
         }
         §§goto(addr0031);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!_loc3_)
         {
            §§push(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr00bd:
                        §§push(1);
                        if(_loc3_ && Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED);
                     if(_loc4_)
                     {
                        addr009e:
                        §§push(_loc2_);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§goto(addr00bd);
                              }
                              else
                              {
                                 addr00e7:
                                 §§push(2);
                                 if(_loc3_ && Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr0106);
                           }
                           else
                           {
                              §§goto(addr00e3);
                           }
                        }
                        addr00e3:
                        §§goto(addr00e2);
                     }
                     addr00e2:
                     if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
                     {
                        §§goto(addr00e7);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0106);
                  }
                  addr0106:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                        this.setLayerData();
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                  }
                  return;
               }
               §§goto(addr00e3);
            }
            §§goto(addr009e);
         }
         §§goto(addr00bd);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.removeListener();
            if(!_loc2_)
            {
               super.onRemove();
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§push(ImprovedMysteryBuildingTab.BUILD_NOW);
               if(!(_loc1_ && _loc1_))
               {
                  §§pop().removeEventListener(§§pop(),this.handleBuild);
                  if(_loc2_ || _loc2_)
                  {
                     addr004f:
                     §§push(this.component);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(ImprovedMysteryBuildingTab.BUY_PERMISSION);
                        if(_loc2_ || _loc1_)
                        {
                           addr007d:
                           §§pop().removeEventListener(§§pop(),this.handleBuyPermission);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(this.component);
                              if(_loc2_)
                              {
                                 addr009b:
                                 §§push(ImprovedMysteryBuildingTab.GET_RC);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§pop().removeEventListener(§§pop(),this.handleGetRealCurrency);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr00c3:
                                       §§push(this.component);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr00de:
                                          §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00f1:
                                             §§pop().removeEventListener(§§pop(),this.handleShowUIInfoLayer);
                                             if(!_loc1_)
                                             {
                                                addr0107:
                                                this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.handleHideUIInfoLayer);
                                                addr0101:
                                             }
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0101);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0107);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr009b);
                  }
                  addr010e:
                  return;
               }
               §§goto(addr007d);
            }
            §§goto(addr009b);
         }
         §§goto(addr004f);
      }
      
      private function get container() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      private function get component() : ImprovedMysteryBuildingTab
      {
         return this._component as ImprovedMysteryBuildingTab;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._fEP);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  }
               }
               addr0054:
               return this._fEP;
            }
         }
         §§goto(addr0054);
      }
   }
}

