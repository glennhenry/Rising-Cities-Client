package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.PatrolOptionsItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.ui.PatrolMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PatrolMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "PatrolMiniLayerMediator";
      
      private var _data:Vector.<PatrolOptionVo>;
      
      public function PatrolMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(PatrolOptionsItemRenderer.PATROL_SELECTED,this.onHire);
         this.component.addEventListener(PatrolOptionsItemRenderer.OPEN_TREASURY,this.onOpenTreasury);
      }
      
      private function onHire(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.target is PatrolOptionsItemRenderer)
         {
            if(PatrolOptionsItemRenderer(param1.target).assistConfigId != -1)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               facade.sendNotification(ApplicationNotificationConstants.BUY_ASSIST,PatrolOptionsItemRenderer(param1.target).assistConfigId);
            }
         }
         this.handleClose(null);
      }
      
      private function onOpenTreasury(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(PatrolOptionsItemRenderer.PATROL_SELECTED,this.onHire);
         this.component.removeEventListener(PatrolOptionsItemRenderer.OPEN_TREASURY,this.onOpenTreasury);
         super.onRemove();
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is Vector.<PatrolOptionVo>)
         {
            this._data = param1 as Vector.<PatrolOptionVo>;
            this.component.data = this._data;
         }
      }
      
      public function get component() : PatrolMiniLayer
      {
         return super.viewComponent as PatrolMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:AssistViewProxy = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               _loc2_ = AssistViewProxy(facade.retrieveProxy(AssistViewProxy.NAME));
               this.setData(_loc2_.getPatrolOptions());
         }
      }
   }
}

