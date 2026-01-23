package net.bigpoint.cityrama.view.bonusDay
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayActivatedLayer;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BonusDayActivatedLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BonusDayActivatedLayerMediator";
      
      public function BonusDayActivatedLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is TimerBarComponentVo)
         {
            this.component.data = param1 as TimerBarComponentVo;
         }
      }
      
      override public function onRegister() : void
      {
         this.addListeners();
      }
      
      override public function onRemove() : void
      {
         this.removeListeners();
      }
      
      private function addListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function get component() : BonusDayActivatedLayer
      {
         return super.viewComponent as BonusDayActivatedLayer;
      }
   }
}

