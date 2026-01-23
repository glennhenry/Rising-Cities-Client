package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.EventStreamProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class LogoutMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "LogoutMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "LogoutMiniLayerMediator";
      }
      
      public function LogoutMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
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
            if(_loc2_)
            {
               §§goto(addr0028);
            }
            §§goto(addr0033);
         }
         addr0028:
         this.setLayerData();
         if(!_loc1_)
         {
            addr0033:
            this.addListener();
         }
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(!_loc3_)
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.title");
            if(!_loc3_)
            {
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.flavour");
               if(!_loc3_)
               {
                  _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.buttonOk");
                  if(!_loc3_)
                  {
                     _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.buttonAbort");
                     if(!_loc3_)
                     {
                        addr0095:
                        this.component.data = _loc1_;
                     }
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0095);
         }
         addr009b:
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc1_ || Boolean(this))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop().addEventListener(§§pop(),this.onConfirmLogout);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008b:
                           this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr0085:
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0092);
            }
            §§goto(addr0085);
         }
         addr0092:
      }
      
      private function onConfirmLogout(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            EventStreamProxy(facade.retrieveProxy(EventStreamProxy.NAME)).onClientLogout();
            if(!(_loc3_ && _loc2_))
            {
               param1.stopPropagation();
               if(!_loc3_)
               {
                  §§goto(addr004f);
               }
            }
            §§goto(addr0067);
         }
         addr004f:
         sendNotification(ApplicationNotificationConstants.APPLICATION_LOGOUT);
         if(_loc2_ || _loc2_)
         {
            addr0067:
            this.handleClose();
         }
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(_loc2_)
               {
                  §§goto(addr0035);
               }
            }
            §§goto(addr0047);
         }
         addr0035:
         param1.stopPropagation();
         if(_loc2_ || Boolean(this))
         {
            addr0047:
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     addr005a:
                     §§push(QueryMiniLayer.CONFIRM_CLICKED);
                     if(_loc1_ || _loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onConfirmLogout);
                        if(_loc1_)
                        {
                           addr0083:
                           this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                           addr007d:
                           addr007a:
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
            §§goto(addr005a);
         }
         §§goto(addr007a);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

