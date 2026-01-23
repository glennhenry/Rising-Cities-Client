package net.bigpoint.cityrama.view.cityTreasury
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasuryGoodsTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryGoodsTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && CityTreasuryGoodsTabMediator))
      {
         NAME = "CityTreasuryGoodsTabMediator";
      }
      
      private var _component:CityTreasuryTabView;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryGoodsTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      public function init(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(!this.component)
            {
               if(_loc4_)
               {
                  this._component = new CityTreasuryTabView();
                  if(_loc4_ || Boolean(this))
                  {
                     addr0058:
                     this.setLayerData(param1,param2);
                     if(!_loc3_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr007b);
                  }
                  addr0065:
                  this.container.contentGroup.addElement(this.component);
                  if(_loc4_)
                  {
                     addr007b:
                     this.addListener();
                  }
                  §§goto(addr0081);
               }
               addr0081:
               return;
            }
            §§goto(addr0058);
         }
         §§goto(addr007b);
      }
      
      private function setLayerData(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.GOODS_TAB_INDEX,param1,param2);
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.component.addEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
         }
      }
      
      private function handlePurchaseItemPack(param1:ItemPurchaseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               if(param1.itemPack)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                     if(!(_loc3_ && _loc3_))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.BUY_PAYMENT_PACK,param1.itemPack);
                        if(_loc2_)
                        {
                           addr007a:
                           this.showDrops(param1);
                        }
                        §§goto(addr0081);
                     }
                  }
                  §§goto(addr007a);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr007a);
      }
      
      private function showDrops(param1:ItemPurchaseEvent) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         if(!_loc8_)
         {
            §§push(param1.itemPack);
            if(_loc9_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     addr003d:
                     §§push(int(Math.max(1,param1.itemPack.goods[0].outputAmount / 5)));
                     if(!_loc8_)
                     {
                        _loc2_ = §§pop();
                        if(_loc9_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr00aa);
                     }
                     addr0070:
                     _loc2_ = Math.min(15,_loc2_);
                     §§goto(addr0066);
                  }
                  addr0066:
                  if(_loc9_)
                  {
                     §§push(param1.itemPack);
                     if(_loc9_)
                     {
                        if(§§pop().goods[0].goodConfig)
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              addr00ae:
                              _loc3_ = param1.itemPack.goods[0].goodConfig.gfxId.toString();
                              addr00aa:
                           }
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00c3);
               }
               addr00c3:
               var _loc4_:DisplayObject = param1.dropContainer as DisplayObject;
               var _loc5_:Point = new Point(_loc4_.width / 2,_loc4_.height / 2);
               _loc5_ = _loc4_.localToGlobal(_loc5_);
               var _loc6_:DropIconVO = new DropIconVO(_loc3_,_loc5_,false);
               var _loc7_:int = 1;
               while(_loc7_ <= _loc2_)
               {
                  §§push(TweenMax);
                  §§push(0.1);
                  if(_loc9_ || Boolean(param1))
                  {
                     §§push(§§pop() * _loc7_);
                  }
                  §§pop().delayedCall(§§pop(),facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc6_]);
                  if(_loc8_ && Boolean(this))
                  {
                     break;
                  }
                  _loc7_++;
                  if(_loc8_ && Boolean(_loc2_))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr00ae);
         }
         §§goto(addr003d);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && _loc3_))
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               addr008a:
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
                  if(this.component)
                  {
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        this.setLayerData(this.component.currentSelectedCategoryIndex,this.component.currentSelectedPackIndex);
                        if(_loc4_)
                        {
                        }
                     }
                  }
            }
            return;
         }
         §§goto(addr008a);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.removeListener();
            if(_loc1_)
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
         if(!(_loc2_ && Boolean(this)))
         {
            this.component.removeEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._cTP);
            if(!(_loc1_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                  }
               }
               addr0054:
               return this._cTP;
            }
         }
         §§goto(addr0054);
      }
   }
}

