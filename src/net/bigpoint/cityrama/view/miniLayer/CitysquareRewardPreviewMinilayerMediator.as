package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareRewardPreviewVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareRewardPreviewMinilayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitysquareRewardPreviewMinilayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitysquareRewardPreviewMinilayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "CitysquareRewardPreviewMinilayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function CitysquareRewardPreviewMinilayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               addr0036:
               §§push(this.component);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(_loc3_ || Boolean(param2))
                  {
                     addr0070:
                     this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0036);
      }
      
      private function handleClose(param1:* = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._soundProxy.playButtonClick();
            if(!_loc3_)
            {
               §§push(this.component);
               if(!_loc3_)
               {
                  §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0058:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0073:
                        §§push(this.component);
                        if(_loc2_ || param1)
                        {
                           addr008e:
                           §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                           if(!_loc3_)
                           {
                              §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                              if(_loc2_ || _loc2_)
                              {
                                 addr00b7:
                                 this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                 addr00b1:
                                 addr00ae:
                              }
                              return;
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr008e);
            }
            §§goto(addr0058);
         }
         §§goto(addr00ae);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(!(_loc1_ && _loc1_))
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
               if(_loc2_ || Boolean(this))
               {
                  addr0076:
                  §§push(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                        if(!_loc1_)
                        {
                           addr00b1:
                           this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                           addr00ab:
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00b9);
            }
            §§goto(addr0076);
         }
         addr00b9:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1.getName());
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = param1.getBody();
         var _loc4_:* = _loc2_;
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.component.setData(param1 as CitySquareRewardPreviewVo);
         }
      }
      
      public function get component() : CitysquareRewardPreviewMinilayer
      {
         return super.viewComponent as CitysquareRewardPreviewMinilayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(!(_loc5_ && _loc2_))
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

