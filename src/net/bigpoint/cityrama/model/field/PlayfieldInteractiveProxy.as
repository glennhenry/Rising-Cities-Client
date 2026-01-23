package net.bigpoint.cityrama.model.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldInteractiveProxy extends Proxy
   {
      
      public static const NAME:String = "PlayfieldInteractiveProxy";
      
      private var _rollOverObject:IInteraction;
      
      private var _clickObject:IInteraction;
      
      private var _oldClickObject:IInteraction;
      
      private var _rollOutObject:IInteraction;
      
      public function PlayfieldInteractiveProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
      
      public function get rollOverObject() : IInteraction
      {
         return this._rollOverObject;
      }
      
      public function setRollOverObjectAndEvent(param1:IInteraction, param2:Boolean) : void
      {
         this._rollOverObject = param1;
         if(this._rollOverObject != null)
         {
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,param2);
         }
      }
      
      public function get rollOutObject() : IInteraction
      {
         return this._rollOutObject;
      }
      
      public function setRollOutObjectAndEvent(param1:IInteraction, param2:Boolean) : void
      {
         this._rollOutObject = param1;
         if(this._rollOutObject != null)
         {
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,param2);
         }
      }
      
      public function get clickObject() : IInteraction
      {
         return this._clickObject;
      }
      
      public function set clickObject(param1:IInteraction) : void
      {
         var _loc4_:BillboardObject = null;
         this._clickObject = param1;
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         var _loc3_:String = _loc2_.mode;
         if(this._clickObject != null)
         {
            if(this._clickObject is BillboardObject && _loc3_ == ApplicationModeProxy.MODE_NORMAL)
            {
               _loc4_ = this._clickObject as BillboardObject;
               if(_loc4_.billboardObjectVo.emergencyState != null)
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY);
                  return;
               }
            }
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
         }
      }
      
      public function get oldClickObject() : IInteraction
      {
         return this._oldClickObject;
      }
      
      public function reset() : void
      {
         this._clickObject = null;
      }
      
      public function set oldClickObject(param1:IInteraction) : void
      {
         this._oldClickObject = param1;
      }
   }
}

