package net.bigpoint.cityrama.view.schoolBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.ProfessionalTraitUnlockMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalTraitUnlockMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalLevelUpMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "ProfessionalLevelUpMiniLayerMediator";
      }
      
      private var _data:ProfessionalTraitUnlockMiniLayerVo;
      
      public function ProfessionalTraitUnlockMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
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
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().addEventListener(ProfessionalTraitUnlockMiniLayer.EVENT_ACCEPT,this.handleAccept);
               if(_loc1_)
               {
                  addr003f:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
                  addr003b:
               }
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr003b);
      }
      
      private function handleAccept(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(!_loc3_)
            {
               this.finalCall();
            }
         }
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.component);
            if(_loc3_ || Boolean(param1))
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(_loc3_ || Boolean(this))
               {
                  addr005b:
                  this.component.removeEventListener(ProfessionalTraitUnlockMiniLayer.EVENT_ACCEPT,this.finalCall);
                  addr0057:
                  if(_loc3_ || _loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
               }
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0057);
      }
      
      private function get component() : ProfessionalTraitUnlockMiniLayer
      {
         return super.viewComponent as ProfessionalTraitUnlockMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._data = param1 as ProfessionalTraitUnlockMiniLayerVo;
            if(!_loc2_)
            {
               this.component.data = this._data;
            }
         }
      }
   }
}

