package net.bigpoint.cityrama.view.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.view.cityTreasury.event.BonusCodeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasurySpecialTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasurySpecialTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "CityTreasurySpecialTabMediator";
      }
      
      private var _component:CityTreasuryTabView;
      
      private var _data:CityTreasuryTabVo;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasurySpecialTabMediator(param1:Object)
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
         if(_loc2_ || Boolean(param1))
         {
            if(!this.component)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0040:
                  this._component = new CityTreasuryTabView();
                  if(_loc2_ || Boolean(this))
                  {
                     this.setLayerData(param1);
                     §§goto(addr0058);
                  }
               }
               §§goto(addr0094);
            }
            addr0058:
            if(_loc2_ || _loc3_)
            {
               this.container.contentGroup.addElement(this.component);
               if(_loc2_ || _loc3_)
               {
                  addr0094:
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function setLayerData(param1:int, param2:String = "") : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,param1,0,param2);
            if(!_loc4_)
            {
               addr0045:
               this.component.data = this._data;
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§push(CityTreasuryEvent.TREASURY_BUTTON_CLICKED);
               if(!(_loc1_ && _loc1_))
               {
                  §§pop().addEventListener(§§pop(),this.handleButtonClicked);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr006c:
                     this.component.addEventListener(BonusCodeEvent.BONUS_CODE_SEND,this.handleSendBonusCode);
                     addr0066:
                     addr0062:
                  }
                  return;
               }
               §§goto(addr006c);
            }
            §§goto(addr0066);
         }
         §§goto(addr0062);
      }
      
      private function handleSendBonusCode(param1:BonusCodeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.PAYMENT_SEND_BONUSCODE,{
                  "bonus":param1.bonusCode,
                  "popup":false
               });
            }
         }
      }
      
      private function handleButtonClicked(param1:CityTreasuryEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(!_loc5_)
            {
               §§push(param1.contentType);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§push(CityTreasuryContentComponent.TYPE_CASH_FOR_ACTION);
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc5_ && Boolean(this)))
                        {
                           sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_BYJSCOMMAND,CityTreasuryProxy.PAYMENT_CATEGORY_CASH_FOR_ACTION);
                           if(!_loc4_)
                           {
                              addr00b6:
                              _loc3_ = false;
                              if(_loc4_ || _loc3_)
                              {
                                 addr00c6:
                                 §§push(param1.selectedPack);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr00ee:
                                          §§push(param1.selectedPack.key);
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             addr0109:
                                             §§push(§§pop());
                                          }
                                          _loc2_ = §§pop();
                                          if(!_loc5_)
                                          {
                                             sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                                                "category":CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL,
                                                "itemKey":_loc2_,
                                                "deeplink":_loc3_
                                             });
                                          }
                                       }
                                    }
                                    §§goto(addr012e);
                                 }
                                 §§goto(addr00ee);
                              }
                           }
                           §§goto(addr012e);
                        }
                        else
                        {
                           addr00ad:
                           _loc2_ = "";
                           if(_loc4_)
                           {
                              §§goto(addr00b6);
                           }
                        }
                        §§goto(addr00c6);
                     }
                     else
                     {
                        §§push(param1.contentType);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0109);
                  }
                  addr00a3:
                  §§goto(addr009d);
               }
               addr009d:
               if(§§pop() == CityTreasuryContentComponent.TYPE_RENTCOLLECTOR)
               {
                  if(_loc4_)
                  {
                     §§goto(addr00ad);
                  }
                  §§goto(addr00b6);
               }
               addr012e:
               return;
            }
            §§goto(addr00c6);
         }
         §§goto(addr00ad);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BONUS_CODE_FAIL];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && _loc3_))
         {
            if(ApplicationNotificationConstants.BONUS_CODE_FAIL === _loc2_)
            {
               addr00b6:
               §§push(0);
               if(_loc3_ && Boolean(this))
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
                  if(this.component)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(this._data.categories[this.component.currentSelectedCategoryIndex].skinStyle != CityTreasuryContentComponent.TYPE_BONUS_CODE)
                        {
                           break;
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                     }
                     this.setLayerData(this.component.currentSelectedCategoryIndex,param1.getBody() as String);
                     if(_loc4_)
                     {
                     }
                  }
            }
            return;
         }
         §§goto(addr00b6);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.removeListener();
            if(_loc1_)
            {
               addr0028:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.component.removeEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleButtonClicked);
         }
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._cTP);
            if(!(_loc2_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                  }
               }
               addr0053:
               return this._cTP;
            }
         }
         §§goto(addr0053);
      }
   }
}

