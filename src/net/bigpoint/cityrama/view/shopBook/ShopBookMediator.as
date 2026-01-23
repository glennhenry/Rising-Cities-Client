package net.bigpoint.cityrama.view.shopBook
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.shopBook.ui.components.NumericMaxStepperComponent;
   import net.bigpoint.cityrama.view.shopBook.ui.components.ShopPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ShopBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ShopBookMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "ShopBookMediator";
      }
      
      private var _buildingData:ShopDetailViewVo;
      
      private var _soundProxy:SoundProxy;
      
      public function ShopBookMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
            if(_loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0053);
         }
         addr003b:
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(!_loc4_)
         {
            addr0053:
            this.addEventListener();
         }
      }
      
      private function addEventListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§push(ShopPopup.TO_STORE);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.handleToStore);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(this.component);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(ShopPopup.TO_STORAGE);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().addEventListener(§§pop(),this.handleToStorage);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(this.component);
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr009d:
                                 §§push(NumericMaxStepperComponent.MAX_MINUS_CLICKED);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§pop().addEventListener(§§pop(),this.handleMaxMinusClicked);
                                    if(_loc1_)
                                    {
                                       addr00c7:
                                       §§push(this.component);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(NumericMaxStepperComponent.MAX_PLUS_CLICKED);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.handleMaxPlusClicked);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00fe:
                                                §§push(this.component);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(UpgradeProgressComponent.BUY_DD);
                                                   if(!_loc2_)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.handleBuyDD);
                                                      if(!_loc2_)
                                                      {
                                                         addr0125:
                                                         §§push(this.component);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr0135:
                                                            §§push(UpgradeProgressComponent.BUY_UPGRADE);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               addr0148:
                                                               §§pop().addEventListener(§§pop(),this.handleBuyUpgrade);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(this.component);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     §§goto(addr017c);
                                                                  }
                                                                  §§goto(addr018c);
                                                               }
                                                               §§goto(addr0189);
                                                            }
                                                            addr017c:
                                                            §§pop().addEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
                                                            if(_loc1_)
                                                            {
                                                               addr018c:
                                                               this.component.addEventListener(Event.CLOSE,this.handleClose);
                                                               addr0189:
                                                            }
                                                            §§goto(addr0198);
                                                         }
                                                         §§goto(addr018c);
                                                      }
                                                      §§goto(addr0198);
                                                   }
                                                   §§goto(addr0148);
                                                }
                                                §§goto(addr018c);
                                             }
                                             §§goto(addr0198);
                                          }
                                          §§goto(addr017c);
                                       }
                                       §§goto(addr0135);
                                    }
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr017c);
                              }
                              §§goto(addr018c);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00fe);
               }
               §§goto(addr0148);
            }
            §§goto(addr009d);
         }
         addr0198:
      }
      
      private function removeEventListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§push(UpgradeProgressComponent.BUY_UPGRADE);
               if(_loc2_ || _loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleBuyUpgrade);
                  if(!_loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(UpgradeProgressComponent.BUY_DD);
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop().removeEventListener(§§pop(),this.handleBuyDD);
                           if(_loc2_)
                           {
                              §§push(this.component);
                              if(_loc2_ || _loc2_)
                              {
                                 addr007c:
                                 §§push(UpgradeProgressComponent.UPGRADE_BUILDING);
                                 if(_loc2_)
                                 {
                                    addr0087:
                                    §§pop().removeEventListener(§§pop(),this.handleUpgradeBuilding);
                                    if(!_loc1_)
                                    {
                                       §§push(this.component);
                                       if(_loc2_)
                                       {
                                          addr00a6:
                                          §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                                          if(!_loc1_)
                                          {
                                             §§push(this.component);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§push(ShopPopup.TO_STORE);
                                                if(!_loc1_)
                                                {
                                                   addr00d2:
                                                   §§pop().removeEventListener(§§pop(),this.handleToStore);
                                                   if(_loc2_)
                                                   {
                                                      addr00df:
                                                      §§push(this.component);
                                                      if(!_loc1_)
                                                      {
                                                         addr00e7:
                                                         §§push(ShopPopup.TO_STORAGE);
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§pop().removeEventListener(§§pop(),this.handleToStorage);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(this.component);
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  addr0117:
                                                                  §§push(NumericMaxStepperComponent.MAX_MINUS_CLICKED);
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     §§goto(addr0134);
                                                                  }
                                                                  §§goto(addr0152);
                                                               }
                                                               §§goto(addr014c);
                                                            }
                                                            §§goto(addr0149);
                                                         }
                                                         §§goto(addr0134);
                                                      }
                                                      §§goto(addr0117);
                                                   }
                                                   §§goto(addr0149);
                                                }
                                                addr0134:
                                                §§pop().removeEventListener(§§pop(),this.handleMaxMinusClicked);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr0152:
                                                   this.component.removeEventListener(NumericMaxStepperComponent.MAX_PLUS_CLICKED,this.handleMaxPlusClicked);
                                                   addr014c:
                                                   addr0149:
                                                }
                                                §§goto(addr0159);
                                             }
                                             §§goto(addr00e7);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr0117);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0149);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr007c);
                  }
                  addr0159:
                  return;
               }
               §§goto(addr0087);
            }
            §§goto(addr00e7);
         }
         §§goto(addr0149);
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && _loc3_))
         {
            param1.stopPropagation();
            if(_loc5_ || _loc3_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:BillboardObject = _loc2_.getBillboardById(this._buildingData.buildingID) as BillboardObject;
         if(!_loc4_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
         }
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(!(_loc2_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc2_ && Boolean(this)))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(_loc3_)
               {
                  addr0053:
                  sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._buildingData.buildingID);
                  if(_loc3_ || Boolean(this))
                  {
                     addr0071:
                     this.handleClose();
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0071);
            }
            addr0076:
            return;
         }
         §§goto(addr0053);
      }
      
      private function handleMaxMinusClicked(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               this._soundProxy.playButtonClick();
               if(!_loc3_)
               {
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,{
                     "amount":this.getMaxMinusAmount(),
                     "good":this.component.good,
                     "building":this._buildingData
                  });
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0080:
                     this.checkCloseLayerAutomatically();
                  }
                  return;
               }
            }
         }
         §§goto(addr0080);
      }
      
      private function getMaxMinusAmount() : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ShopStockGoodVo = null;
         for each(_loc1_ in this._buildingData.storeStock)
         {
            if(!_loc5_)
            {
               if(_loc1_.goodVo.config.id == this.component.good.config.id)
               {
                  if(_loc4_)
                  {
                     return _loc1_.stockCurrent;
                  }
               }
            }
         }
         return 0;
      }
      
      private function handleMaxPlusClicked(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(this)))
            {
               this._soundProxy.playButtonClick();
               addr0035:
               if(_loc2_)
               {
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,{
                     "amount":this.getMaxPlusAmount(),
                     "good":this.component.good,
                     "building":this._buildingData
                  });
                  if(!_loc3_)
                  {
                     addr0079:
                     this.checkCloseLayerAutomatically();
                  }
                  return;
               }
            }
            §§goto(addr0079);
         }
         §§goto(addr0035);
      }
      
      private function getMaxPlusAmount() : int
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:ShopStockGoodVo = null;
         var _loc3_:* = 0;
         var _loc4_:GoodObjectVo = null;
         var _loc1_:* = 0;
         var _loc5_:int = 0;
         for each(_loc2_ in this._buildingData.storeStock)
         {
            if(!(_loc8_ && Boolean(this)))
            {
               §§push(_loc2_.goodVo.config.id);
               if(!_loc8_)
               {
                  if(§§pop() == this.component.good.config.id)
                  {
                     if(!(_loc8_ && Boolean(_loc1_)))
                     {
                        addr007b:
                        §§push(_loc2_.stockMax);
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           addr0092:
                           §§push(int(§§pop() - _loc2_.stockCurrent));
                        }
                        _loc1_ = §§pop();
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr0092);
            }
            §§goto(addr007b);
         }
         if(!_loc8_)
         {
            if(_loc7_ || Boolean(_loc1_))
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  addr00cd:
                  §§push(0);
               }
               addr00d1:
               for each(_loc4_ in this._buildingData.storageInterests)
               {
                  if(_loc4_.config.id == this.component.good.config.id)
                  {
                     if(!(_loc8_ && Boolean(this)))
                     {
                        §§push(_loc4_.playerStock);
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                     }
                     break;
                  }
               }
               if(_loc7_)
               {
                  §§push(_loc3_);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     if(§§pop() >= _loc1_)
                     {
                        if(!_loc8_)
                        {
                           addr015e:
                           §§push(_loc1_);
                           if(_loc7_ || Boolean(this))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr016e:
                           §§push(_loc3_);
                        }
                        §§goto(addr016f);
                     }
                     §§goto(addr016e);
                  }
                  addr016f:
                  return §§pop();
               }
               §§goto(addr015e);
            }
            §§goto(addr00cd);
         }
         §§goto(addr00d1);
      }
      
      private function handleToStore(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(!_loc2_)
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,{
                  "amount":this.component.amount,
                  "good":this.component.good,
                  "building":this._buildingData
               });
            }
         }
      }
      
      private function handleToStorage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(!_loc2_)
            {
               addr0031:
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,{
                  "amount":this.component.amount,
                  "good":this.component.good,
                  "building":this._buildingData
               });
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function checkCloseLayerAutomatically() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._buildingData.storageInterests.length < 2)
            {
               if(!(_loc2_ && _loc1_))
               {
                  TweenMax.delayedCall(0.8,this.handleClose);
               }
            }
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRegister();
            if(!(_loc1_ && _loc1_))
            {
               §§push(facade);
               §§push(§§findproperty(UserInterfaceInfoLayerMediator));
               var _temp_4:* = new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine];
               §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0071);
               }
               §§goto(addr00c0);
            }
         }
         addr0071:
         §§push(this.component);
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
               if(!_loc1_)
               {
                  §§goto(addr00b4);
               }
               §§goto(addr00c0);
            }
            addr00b4:
            this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
            §§goto(addr00ae);
         }
         addr00ae:
         if(_loc2_)
         {
            addr00c0:
            sendNotification(VirtualTaskNotificationInterest.SHOPLAYER_OPENED);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0076);
               }
               addr0060:
               this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
               §§goto(addr005a);
            }
            addr005a:
            §§goto(addr0057);
         }
         addr0057:
         if(_loc1_)
         {
            addr0076:
            TweenMax.killDelayedCallsTo(this.handleClose);
            if(!_loc2_)
            {
               §§goto(addr0085);
            }
            §§goto(addr0090);
         }
         addr0085:
         this.removeEventListener();
         if(!_loc2_)
         {
            addr0090:
            super.onRemove();
            if(_loc1_ || Boolean(this))
            {
               sendNotification(VirtualTaskNotificationInterest.SHOPLAYER_CLOSED);
            }
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:MainLayerProxy = null;
         var _loc3_:BillboardObject = null;
         var _loc4_:* = param1.getName();
         if(_loc6_)
         {
            if(ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED === _loc4_)
            {
               addr00b8:
               §§push(0);
               if(_loc6_ || Boolean(param1))
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
                  _loc2_ = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
                  _loc3_ = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME)).getBillboardById(Number(this._buildingData.buildingID));
                  if(_loc6_ || Boolean(param1))
                  {
                     this.setData(_loc2_.getShopDetailViewVo(ShopFieldObject(_loc3_).shopFieldObjectVo));
                  }
            }
            return;
         }
         §§goto(addr00b8);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._buildingData = param1 as ShopDetailViewVo;
            if(!(_loc2_ && _loc2_))
            {
               this.component.data = this._buildingData;
            }
         }
      }
      
      public function get component() : ShopPopup
      {
         return super.viewComponent as ShopPopup;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc5_ && _loc2_))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_ || _loc2_)
            {
               addr0075:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
            return;
         }
         §§goto(addr0075);
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

