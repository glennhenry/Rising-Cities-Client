package net.bigpoint.cityrama.view.cinema
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaLayer;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaVideoAvailableComponent;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CinemaLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CinemaLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "CinemaLayerMediator";
      }
      
      private var _cP:CinemaProxy;
      
      public function CinemaLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(NAME,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               addr0027:
               this.setupListener();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr004d:
                  this.component.addEventListener(CinemaVideoAvailableComponent.EVENT_PLAY_CLICKED,this.handlePlayVideo);
                  addr0049:
               }
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr0049);
      }
      
      private function handlePlayVideo(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            param1.stopPropagation();
         }
         var _loc2_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         if(_loc4_)
         {
            _loc2_.openExternalCinema();
            if(!_loc3_)
            {
               this.handleClose();
            }
         }
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.CINEMA_DATA_CHANGED,ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = param1.getName();
         if(_loc4_ || Boolean(this))
         {
            §§push(ApplicationNotificationConstants.CINEMA_DATA_CHANGED);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr00ca:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00e1:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr00f9);
                  }
                  else
                  {
                     §§goto(addr00dd);
                  }
               }
               addr00dd:
               §§goto(addr00dc);
            }
            addr00dc:
            if(ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED === _loc3_)
            {
               §§goto(addr00e1);
            }
            else
            {
               §§push(2);
            }
            addr00f9:
            switch(§§pop())
            {
               case 0:
                  this.setData(this.cinemaProxy.cinemaLayerVo);
                  if(_loc4_)
                  {
                  }
                  break;
               case 1:
                  §§push(Boolean(param1.getBody()));
                  if(!_loc5_)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc4_ || Boolean(param1)))
                     {
                        break;
                     }
                     §§push(_loc2_);
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        this.handleClose();
                        if(_loc5_)
                        {
                        }
                     }
                  }
            }
            return;
         }
         §§goto(addr00ca);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               this.removeListener();
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
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc1_))
               {
                  addr004d:
                  this.component.removeEventListener(CinemaVideoAvailableComponent.EVENT_PLAY_CLICKED,this.handlePlayVideo);
               }
               §§goto(addr005a);
            }
            §§goto(addr004d);
         }
         addr005a:
      }
      
      private function get component() : CinemaLayer
      {
         return super.viewComponent as CinemaLayer;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(param1 is CinemaLayerVo)
            {
               if(_loc3_)
               {
                  addr0039:
                  this.component.data = param1 as CinemaLayerVo;
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function get cinemaProxy() : CinemaProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._cP);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this._cP = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
                  }
               }
               addr004c:
               return this._cP;
            }
         }
         §§goto(addr004c);
      }
   }
}

