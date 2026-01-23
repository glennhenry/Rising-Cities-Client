package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyTimeUpMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyTimeUpMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyTimeUpMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && EmergencyTimeUpMiniLayerMediator))
      {
         NAME = "EmergencyTimeUpMiniLayerMediator";
      }
      
      public function EmergencyTimeUpMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
            if(_loc4_)
            {
               §§push(this.component);
               if(_loc4_ || Boolean(this))
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(!_loc3_)
                  {
                     addr0066:
                     this.component.addEventListener("buttonClose",this.finalCall);
                     addr0063:
                  }
                  return;
               }
               §§goto(addr0066);
            }
         }
         §§goto(addr0063);
      }
      
      private function finalCall(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc3_ || _loc3_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(_loc3_ || _loc2_)
               {
                  this.handleClose(null);
               }
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 is EmergencyTimeUpMiniLayerVo)
            {
               if(_loc2_ || Boolean(param1))
               {
                  this.component.setData(param1 as EmergencyTimeUpMiniLayerVo);
               }
            }
         }
      }
      
      public function get component() : EmergencyTimeUpMiniLayer
      {
         return super.viewComponent as EmergencyTimeUpMiniLayer;
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.onRemove();
            if(!(_loc1_ && _loc1_))
            {
               addr003a:
               this.component.removeEventListener(Event.CLOSE,this.handleClose);
            }
            return;
         }
         §§goto(addr003a);
      }
   }
}

