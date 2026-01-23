package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CinemaRewardMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CinemaRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CinemaRewardMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "CinemaRewardMiniLayerMediator";
      }
      
      public function CinemaRewardMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(NAME,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.onRegister();
            if(!(_loc1_ && Boolean(this)))
            {
               this.addListener();
            }
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr0046:
                  this.component.addEventListener(CinemaRewardMiniLayer.EVENT_WATCH_MORE,this.handleWatchMore);
               }
               §§goto(addr0054);
            }
            §§goto(addr0046);
         }
         addr0054:
      }
      
      private function handleWatchMore(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc3_ || Boolean(param1))
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CINEMA_LAYER);
               if(!(_loc2_ && _loc2_))
               {
                  addr0058:
                  this.handleClose();
               }
               return;
            }
         }
         §§goto(addr0058);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
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
         if(_loc2_)
         {
            this.component.removeEventListener(Event.CLOSE,this.handleClose);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is CinemaRewardMiniLayerVo)
            {
               if(!_loc3_)
               {
                  addr0023:
                  this.component.data = CinemaRewardMiniLayerVo(param1);
               }
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function get component() : CinemaRewardMiniLayer
      {
         return super.viewComponent as CinemaRewardMiniLayer;
      }
   }
}

