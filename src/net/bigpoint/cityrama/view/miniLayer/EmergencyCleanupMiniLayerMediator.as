package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyCleanupMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyCleanupMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyCleanupMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "EmergencyCleanupMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _cleanupVo:EmergencyCleanupMiniLayerVo;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function EmergencyCleanupMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            if(!_loc3_)
            {
               addr0035:
               this.component.addEventListener(Event.CLOSE,this.handleClose);
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
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
            if(_loc2_ || _loc1_)
            {
               this.setupListeners();
               if(!(_loc1_ && _loc1_))
               {
                  this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  if(!(_loc1_ && _loc2_))
                  {
                     this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                     §§goto(addr006d);
                  }
                  §§goto(addr00ab);
               }
            }
         }
         addr006d:
         if(!_loc1_)
         {
            this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            if(_loc2_ || Boolean(this))
            {
               addr00ab:
               sendNotification(VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_OPENED);
            }
         }
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§push(EmergencyCleanupMiniLayer.OK);
               if(!_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.handleOkClick);
                  if(!_loc2_)
                  {
                     addr0050:
                     this.component.addEventListener(EmergencyCleanupMiniLayer.RC,this.handleRcClick);
                     addr004a:
                     addr0047:
                  }
                  return;
               }
               §§goto(addr0050);
            }
            §§goto(addr004a);
         }
         §§goto(addr0047);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._playfieldObjectsProxy.getBillboardById(this._cleanupVo.damagedBuildingId).billboardObjectVo.userInteractionLocked = true;
            if(!(_loc2_ && _loc2_))
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
                  "bid":this._cleanupVo.damagedBuildingId,
                  "rc":false
               });
               if(!_loc2_)
               {
                  §§goto(addr0073);
               }
               §§goto(addr0085);
            }
            addr0073:
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(!_loc2_)
            {
               addr0085:
               this.handleClose(new Event("CLOSE"));
            }
            return;
         }
         §§goto(addr0085);
      }
      
      private function handleRcClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(this._playerResourceProxy.realCurrency < this._cleanupVo.instantRCCosts)
            {
               if(_loc2_)
               {
                  §§goto(addr0035);
               }
               §§goto(addr00c7);
            }
            else
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(!_loc3_)
               {
                  §§goto(addr0073);
               }
            }
            §§goto(addr009f);
         }
         addr0035:
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         if(_loc3_ && _loc3_)
         {
            addr0073:
            this._playfieldObjectsProxy.getBillboardById(this._cleanupVo.damagedBuildingId).billboardObjectVo.userInteractionLocked = true;
            if(!(_loc3_ && _loc2_))
            {
               addr009f:
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
                  "bid":this._cleanupVo.damagedBuildingId,
                  "rc":true
               });
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr00c7:
                  this.handleClose(new Event("CLOSE"));
               }
               §§goto(addr00d4);
            }
            §§goto(addr00c7);
         }
         addr00d4:
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1 is EmergencyCleanupMiniLayerVo)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._cleanupVo = param1 as EmergencyCleanupMiniLayerVo;
                  if(_loc3_ || _loc3_)
                  {
                     addr0064:
                     this.component.setData(param1 as EmergencyCleanupMiniLayerVo);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0064);
            }
         }
         addr0070:
      }
      
      public function get component() : EmergencyCleanupMiniLayer
      {
         return super.viewComponent as EmergencyCleanupMiniLayer;
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
               sendNotification(VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_CLOSED);
               if(!_loc1_)
               {
                  addr003a:
                  this.component.removeEventListener(Event.CLOSE,this.handleClose);
               }
            }
            return;
         }
         §§goto(addr003a);
      }
   }
}

