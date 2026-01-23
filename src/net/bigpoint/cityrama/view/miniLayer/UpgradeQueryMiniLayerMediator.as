package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.core.IFlexDisplayObject;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class UpgradeQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "UpgradeQueryMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "UpgradeQueryMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObjVo:BillboardObjectVo;
      
      private var _parentViewComponent:IFlexDisplayObject;
      
      public function UpgradeQueryMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
         }
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         if(_loc3_ || Boolean(_loc1_))
         {
            this.component.setData(_loc1_.getUpgradeVo(this._billboardObjVo));
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().confirmUpgrade.addEventListener(MouseEvent.CLICK,this.handleConfirm);
               if(!_loc2_)
               {
                  addr004b:
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§pop().denyUpgrade.addEventListener(MouseEvent.CLICK,this.handleAbort);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007c:
                        this.component.addEventListener(Event.CLOSE,this.handleClose);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007c);
               }
               addr0089:
               return;
            }
            §§goto(addr007c);
         }
         §§goto(addr004b);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.finalCall();
         }
      }
      
      private function handleAbort(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(_loc2_ || Boolean(param1))
            {
               addr002e:
               this.finalCall();
            }
            return;
         }
         §§goto(addr002e);
      }
      
      private function handleConfirm(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(_loc2_)
            {
               if(this._billboardObjVo.isHarvestReady)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0046:
                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
                        "vo":this._billboardObjVo,
                        "silent":true
                     });
                     if(_loc2_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._billboardObjVo);
                        addr0063:
                        if(_loc2_ || Boolean(param1))
                        {
                           this.finalCall(true);
                           if(!_loc3_)
                           {
                              addr0096:
                              sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,this._billboardObjVo);
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr0096);
               }
            }
            §§goto(addr0063);
         }
         §§goto(addr0046);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§pop().confirmUpgrade.removeEventListener(MouseEvent.CLICK,this.handleConfirm);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§pop().denyUpgrade.removeEventListener(MouseEvent.CLICK,this.handleAbort);
                     addr0053:
                     if(!_loc2_)
                     {
                        addr0074:
                        this.component.removeEventListener(Event.CLOSE,this.handleClose);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008e:
                           super.onRemove();
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0074);
               }
               addr0093:
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr008e);
      }
      
      private function finalCall(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc3_ && Boolean(this)))
            {
               §§pop().confirmUpgrade.removeEventListener(MouseEvent.CLICK,this.handleConfirm);
               if(!_loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0072);
            }
            addr0051:
            this.component.denyUpgrade.removeEventListener(MouseEvent.CLICK,this.handleAbort);
            if(!_loc3_)
            {
               addr0072:
               if(param1)
               {
                  if(_loc2_ || _loc2_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
               }
            }
            §§goto(addr00a5);
         }
         addr00a5:
      }
      
      public function get component() : UpgradeQueryMiniLayer
      {
         return super.viewComponent as UpgradeQueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(param1.billboardVo is BillboardObjectVo)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._billboardObjVo = BillboardObjectVo(param1.billboardVo);
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0063:
                     if(param1.viewComponent)
                     {
                        if(_loc2_ || Boolean(param1))
                        {
                           addr0085:
                           this._parentViewComponent = param1.viewComponent;
                           if(!_loc3_)
                           {
                              addr0094:
                              this.setLayerData();
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a7:
                                 this.addListener();
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0063);
            }
            addr00ad:
            return;
         }
         §§goto(addr0085);
      }
   }
}

