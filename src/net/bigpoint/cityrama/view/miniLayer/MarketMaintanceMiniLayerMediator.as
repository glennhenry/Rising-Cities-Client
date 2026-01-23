package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MarketMaintanceMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MarketMaintanceMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MarketMaintanceMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "MarketMaintanceMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function MarketMaintanceMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param1)))
            {
               addr0036:
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
            return;
         }
         §§goto(addr0036);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this.component);
            if(!_loc3_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_)
               {
                  addr0053:
                  this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
                  addr0050:
                  if(!_loc3_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                     if(_loc2_)
                     {
                        addr007a:
                        this.resetMode();
                     }
                     return;
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0053);
         }
         §§goto(addr0050);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§pop().acceptButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
               if(_loc1_ || Boolean(this))
               {
                  addr004e:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
               §§goto(addr005a);
            }
            §§goto(addr004e);
         }
         addr005a:
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._soundProxy.playButtonClick();
            if(!_loc2_)
            {
               addr002e:
               this.finalCall();
            }
            return;
         }
         §§goto(addr002e);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
               if(!_loc2_)
               {
                  addr0036:
                  this.resetMode();
               }
               §§goto(addr003c);
            }
            §§goto(addr0036);
         }
         addr003c:
      }
      
      private function resetMode() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(!_loc2_)
         {
            _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
         }
      }
      
      public function get component() : MarketMaintanceMiniLayer
      {
         return super.viewComponent as MarketMaintanceMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
      }
   }
}

