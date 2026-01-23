package net.bigpoint.cityrama.view.assistants
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorActivatedLayer;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RentCollectorActivatedLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RentCollectorActivatedLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "RentCollectorActivatedLayerMediator";
      }
      
      private var _assiViewProxy:AssistViewProxy;
      
      public function RentCollectorActivatedLayerMediator(param1:String, param2:Object)
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRegister();
            if(_loc1_)
            {
               addr0029:
               this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || _loc1_)
               {
                  addr004d:
                  this.component.addEventListener(RentCollectorActivatedLayer.EVENT_MORE_OFFER,this.handleMoreOffer);
                  addr004a:
               }
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr004a);
      }
      
      private function handleMoreOffer(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            param1.stopPropagation();
            if(!(_loc2_ && _loc2_))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(_loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_LAYER);
               }
            }
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(!_loc1_)
            {
               this.removeListener();
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || Boolean(this))
               {
                  addr004d:
                  this.component.removeEventListener(RentCollectorActivatedLayer.EVENT_MORE_OFFER,this.handleMoreOffer);
                  addr004a:
               }
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr004a);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 is RentCollectorActivatedVo)
            {
               if(_loc3_)
               {
                  addr0026:
                  this.component.data = param1 as RentCollectorActivatedVo;
               }
            }
            return;
         }
         §§goto(addr0026);
      }
      
      public function get component() : RentCollectorActivatedLayer
      {
         return super.viewComponent as RentCollectorActivatedLayer;
      }
   }
}

