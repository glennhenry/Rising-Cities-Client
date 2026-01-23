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
      
      private var _data:EvoucherResultVo;
      
      public function EvoucherFailureMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
      }
      
      private function handleClose(param1:Event) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(MouseEvent.CLICK,this.handleClose);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName();
         var _loc3_:Object = param1.getBody();
         var _loc4_:* = _loc2_;
         switch(0)
         {
         }
         this.setData(_loc3_);
      }
      
      public function setData(param1:Object) : void
      {
         this.component.setData(param1);
      }
      
      public function get component() : EvoucherFailureMiniLayer
      {
         return super.viewComponent as EvoucherFailureMiniLayer;
      }
   }
}

