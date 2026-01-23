package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MasteryChallengeCompletedMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MasteryChallengeCompletedMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MasteryChallengeCompletedMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "MasteryChallengeCompletedMiniLayerMediator";
      }
      
      private var _data:MasteryChallengeCompletedMiniLayerVo;
      
      public function MasteryChallengeCompletedMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
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
            if(!(_loc1_ && Boolean(this)))
            {
               addr003a:
               this.addListener();
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.component.addEventListener(Event.CLOSE,this.handleClose);
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.component.removeEventListener(Event.CLOSE,this.handleClose);
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.removeListener();
            if(_loc2_)
            {
               super.onRemove();
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
            if(_loc3_ || _loc3_)
            {
               addr003e:
               sendNotification(ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED);
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function get component() : MasteryChallengeCompletedMiniLayer
      {
         return super.viewComponent as MasteryChallengeCompletedMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 is MasteryChallengeCompletedMiniLayerVo)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr003a:
                  this._data = param1 as MasteryChallengeCompletedMiniLayerVo;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     this.setComponentData();
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function setComponentData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.component.data = this._data;
         }
      }
   }
}

