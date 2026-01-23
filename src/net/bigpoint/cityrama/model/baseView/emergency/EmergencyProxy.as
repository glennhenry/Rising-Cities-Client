package net.bigpoint.cityrama.model.baseView.emergency
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyProxy";
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      private var _currentEmergency:EmergencyDTO;
      
      public function EmergencyProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._applicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
      }
      
      public function set currentEmergency(param1:EmergencyDTO) : void
      {
         this._currentEmergency = param1;
         this.updateFieldObjects();
         if(param1 == null)
         {
            this.setApplicationToNormalMode();
         }
         sendNotification(ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED);
      }
      
      private function setApplicationToNormalMode() : void
      {
         this._applicationModeProxy.mode = ApplicationModeProxy.MODE_NORMAL;
      }
      
      private function updateFieldObjects() : void
      {
         var _loc1_:IEmergencyInfrastructure = null;
         for each(_loc1_ in this._playfieldObjectsProxy.infrastructureInterfaceObjectsList)
         {
            _loc1_.emergencyFieldObjectVo.emergencyIsRunning = Boolean(this._currentEmergency) && this._currentEmergency.status == EmergencyConstants.EMERGENCY_STATUS_STARTED;
         }
      }
      
      public function get emergencyActivelyRunning() : Boolean
      {
         if(this._currentEmergency)
         {
            if(this._currentEmergency.status == EmergencyConstants.EMERGENCY_STATUS_STARTED)
            {
               return true;
            }
         }
         return false;
      }
   }
}

