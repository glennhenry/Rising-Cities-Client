package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.evoucher.vo.EvoucherResultVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EvoucherFailureMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EvoucherFailureMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EvoucherFailureMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "EvoucherFailureMiniLayerMediator";
      }
      
      private var _data:EvoucherResultVo;
      
      public function EvoucherFailureMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               §§push(this.component);
               if(_loc3_ || _loc3_)
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(!_loc4_)
                  {
                     addr0064:
                     this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc3_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr003f:
                  this.component.removeEventListener(MouseEvent.CLICK,this.handleClose);
                  if(!_loc2_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
                  }
               }
               §§goto(addr005f);
            }
            §§goto(addr003f);
         }
         addr005f:
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
         }
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
         this.setData(_loc3_);
         if(_loc5_ && _loc2_)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.component.setData(param1);
         }
      }
      
      public function get component() : EvoucherFailureMiniLayer
      {
         return super.viewComponent as EvoucherFailureMiniLayer;
      }
   }
}

