package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class CityTreasuryPackTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryPackTabMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "CityTreasuryPackTabMediator";
         if(_loc1_ || CityTreasuryPackTabMediator)
         {
            UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
         }
      }
      
      private var _component:CityTreasuryTabView;
      
      private var _lineContainer:Group;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryPackTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      public function init(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!this.component)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr003b:
                  this._component = new CityTreasuryTabView();
                  if(_loc2_ || _loc3_)
                  {
                     addr0062:
                     this.setLayerData(param1);
                     if(_loc2_ || _loc2_)
                     {
                        this.container.contentGroup.addElement(this.component);
                        if(_loc2_)
                        {
                           addr008b:
                           this.addListener();
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr008b);
               }
               addr0091:
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr003b);
      }
      
      private function setLayerData(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.PACKS_TAB_INDEX,param1);
            if(!_loc3_)
            {
               addr0032:
               this.createUIInfoLayer();
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function createUIInfoLayer() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            facade.removeMediator(UI_MEDIATOR_NAME);
         }
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         if(!_loc3_)
         {
            if(this._lineContainer)
            {
               if(!_loc3_)
               {
                  this._lineContainer.removeAllElements();
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0085);
               }
            }
            addr0057:
            this._lineContainer = new Group();
            if(!(_loc3_ && _loc2_))
            {
               this._lineContainer.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0085:
                  this._lineContainer.percentWidth = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr009a:
                     this.component.addElement(this._lineContainer);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr009a);
            }
            addr00a6:
            var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
            if(!_loc3_)
            {
               _loc2_.setProperties(260,250,440,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,0);
               if(_loc4_)
               {
                  §§goto(addr00d2);
               }
               §§goto(addr010b);
            }
            addr00d2:
            _loc1_.push(_loc2_);
            if(!_loc3_)
            {
               this._lineContainer.addElement(_loc2_);
               if(!_loc3_)
               {
                  facade.removeMediator(UI_MEDIATOR_NAME);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr010b:
                     facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
                  }
                  §§goto(addr011a);
               }
               §§goto(addr010b);
            }
            addr011a:
            return;
         }
         §§goto(addr009a);
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
               §§push(CityTreasuryEvent.TREASURY_BUTTON_CLICKED);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().addEventListener(§§pop(),this.handleButtonClicked);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0093);
               }
               addr0086:
               §§pop().addEventListener(§§pop(),this.showUIInfoLayer);
               if(!_loc2_)
               {
                  addr009d:
                  this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideUIInfoLayer);
                  addr0097:
                  addr0093:
               }
               return;
            }
            §§goto(addr0097);
         }
         §§goto(addr0093);
      }
      
      private function handleButtonClicked(param1:CityTreasuryEvent) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:PlayerProxy = null;
         var _loc5_:TimerProxy = null;
         var _loc6_:PlayerPaymentUpsellDTO = null;
         var _loc7_:ConfigPaymentPackUpsellingDTO = null;
         if(!(_loc10_ && Boolean(param1)))
         {
            param1.stopPropagation();
         }
         var _loc2_:* = "";
         var _loc3_:Boolean = false;
         if(_loc11_)
         {
            §§push(param1.selectedPack);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     addr006b:
                     §§push(param1.selectedPack.key);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                  }
                  addr0076:
                  _loc4_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  _loc5_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  _loc6_ = _loc4_.player.playerPaymentPackInfo.upsellPaymentPack;
                  var _temp_5:* = _loc6_;
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     §§pop();
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        §§push(_loc6_.id);
                        if(_loc11_)
                        {
                           §§push(param1.selectedPack.id);
                           if(_loc11_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc10_ && _loc3_))
                              {
                                 addr00e9:
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    §§push(_temp_8);
                                    if(_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc11_ || Boolean(this))
                                          {
                                             §§pop();
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(_loc5_.currentTimeStamp);
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   §§push(_loc6_.startTime);
                                                   if(_loc11_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc11_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_ || Boolean(this))
                                                         {
                                                            §§goto(addr016c);
                                                         }
                                                         §§goto(addr017f);
                                                      }
                                                      addr016c:
                                                      var _temp_15:* = §§pop();
                                                      addr016d:
                                                      §§push(_temp_15);
                                                      if(_temp_15)
                                                      {
                                                         if(_loc11_ || Boolean(_loc2_))
                                                         {
                                                            addr017f:
                                                            §§pop();
                                                            if(_loc11_ || Boolean(this))
                                                            {
                                                               §§goto(addr01a5);
                                                            }
                                                            §§goto(addr01a9);
                                                         }
                                                      }
                                                      addr01a5:
                                                      §§goto(addr01a4);
                                                   }
                                                   addr01a4:
                                                   §§goto(addr0193);
                                                }
                                                addr0193:
                                             }
                                             §§goto(addr018e);
                                          }
                                       }
                                       §§goto(addr016c);
                                    }
                                    §§goto(addr016d);
                                 }
                                 §§goto(addr017f);
                              }
                              §§goto(addr016c);
                           }
                           §§goto(addr019e);
                        }
                        §§goto(addr0193);
                     }
                     addr018e:
                     §§push(_loc5_.currentTimeStamp);
                     §§push(_loc6_.startTime);
                     if(_loc11_)
                     {
                        addr019e:
                        §§push(§§pop() + _loc6_.duration);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr01a9:
                        for each(_loc7_ in param1.selectedPack.upsellPackages)
                        {
                           §§push(_loc7_.category);
                           if(_loc11_)
                           {
                              if(§§pop() == _loc6_.type)
                              {
                                 if(_loc11_)
                                 {
                                    §§push(_loc7_.key);
                                    if(!_loc10_)
                                    {
                                       addr01f4:
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc11_)
                                    {
                                       _loc3_ = true;
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr01f4);
                        }
                     }
                     §§goto(addr020d);
                  }
                  §§goto(addr00e9);
               }
               addr020d:
               sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                  "category":CityTreasuryProxy.PAYMENT_CATEGORY_STARTER,
                  "itemKey":_loc2_,
                  "deeplink":_loc3_
               });
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0076);
      }
      
      private function showUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_)
            {
               addr006b:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },this.getMediatorName());
            }
            return;
         }
         §§goto(addr006b);
      }
      
      private function hideUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(CityTreasuryEvent.TREASURY_BUTTON_CLICKED);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().removeEventListener(§§pop(),this.handleButtonClicked);
                  if(_loc1_)
                  {
                     addr0050:
                     §§push(this.component);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0093);
               }
               addr007e:
               §§pop().removeEventListener(§§pop(),this.showUIInfoLayer);
               if(!(_loc2_ && _loc2_))
               {
                  addr009d:
                  this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideUIInfoLayer);
                  addr0097:
                  addr0093:
               }
               return;
            }
            §§goto(addr0097);
         }
         §§goto(addr0050);
      }
      
      private function get container() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      private function get component() : CityTreasuryTabView
      {
         return this._component as CityTreasuryTabView;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._cTP);
            if(_loc2_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                  }
               }
               addr0066:
               return this._cTP;
            }
         }
         §§goto(addr0066);
      }
   }
}

