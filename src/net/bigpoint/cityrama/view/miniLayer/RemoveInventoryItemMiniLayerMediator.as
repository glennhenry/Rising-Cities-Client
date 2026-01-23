package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RemoveInventoryItemMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RemoveInventoryItemMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "RemoveInventoryItemMiniLayerMediator";
      }
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      public function RemoveInventoryItemMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
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
            if(!(_loc1_ && _loc2_))
            {
               this.setLayerData();
               if(_loc2_ || _loc1_)
               {
                  addr004d:
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr0040:
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc1_ || _loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.onConfirm);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0083:
                           this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr007d:
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007d);
               }
               addr008a:
               return;
            }
            §§goto(addr007d);
         }
         §§goto(addr0040);
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.title.capital");
            if(_loc2_ || Boolean(_loc1_))
            {
               addr005a:
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.flavour.specifics");
               if(!_loc3_)
               {
                  _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.buttonOk");
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0098:
                     _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.buttonAbort");
                     if(_loc2_)
                     {
                        addr00ad:
                        this.component.data = _loc1_;
                     }
                  }
                  return;
               }
               §§goto(addr00ad);
            }
            §§goto(addr0098);
         }
         §§goto(addr005a);
      }
      
      private function onConfirm(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(_loc2_ || _loc3_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!_loc3_)
               {
                  §§push(this._data);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr006e:
                           if(this._data.item.itemId != -1)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0093);
                              }
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00c5);
            }
            addr0093:
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_REMOVE_ITEM_FROM_INVENTORY,{
               "itemId":this._data.item.itemId,
               "bagId":this._data.configBagId
            });
            if(_loc2_ || Boolean(this))
            {
               addr00c5:
               this.handleClose();
            }
            return;
         }
         §§goto(addr00c5);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  param1.stopPropagation();
                  §§goto(addr0029);
               }
            }
            §§goto(addr0081);
         }
         addr0029:
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1.type == QueryMiniLayer.DENY_CLICKED)
            {
               if(!(_loc2_ && _loc3_))
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
                  if(!_loc2_)
                  {
                     addr0081:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
                  §§goto(addr008f);
               }
            }
            §§goto(addr0081);
         }
         addr008f:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.removeListener();
            if(_loc2_)
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
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(_loc2_ || Boolean(this))
                  {
                     addr005b:
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onConfirm);
                        if(_loc2_)
                        {
                           addr007c:
                           this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr0076:
                           addr0073:
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0076);
               }
               addr0083:
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0073);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 is PlayfieldItemInventoryListItemVo)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0039:
                  this._data = param1 as PlayfieldItemInventoryListItemVo;
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

