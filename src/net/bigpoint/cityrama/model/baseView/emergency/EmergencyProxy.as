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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "EmergencyProxy";
      }
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      private var _currentEmergency:EmergencyDTO;
      
      public function EmergencyProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            if(!_loc1_)
            {
               addr003d:
               this._applicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function set currentEmergency(param1:EmergencyDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._currentEmergency = param1;
            if(!_loc2_)
            {
               this.updateFieldObjects();
               if(!_loc2_)
               {
                  if(param1 == null)
                  {
                     if(!_loc2_)
                     {
                        addr005a:
                        this.setApplicationToNormalMode();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr006d:
                           sendNotification(ApplicationNotificationConstants.EMERGENCY_RUNNING_CHANGED);
                        }
                        §§goto(addr0078);
                     }
                  }
                  §§goto(addr006d);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr005a);
      }
      
      private function setApplicationToNormalMode() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._applicationModeProxy.mode = ApplicationModeProxy.MODE_NORMAL;
         }
      }
      
      private function updateFieldObjects() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IEmergencyInfrastructure = null;
         var _loc3_:* = this._playfieldObjectsProxy.infrastructureInterfaceObjectsList;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ || _loc3_))
            {
               continue;
            }
            §§push(_loc1_.emergencyFieldObjectVo);
            if(_loc4_)
            {
               §§push(this._currentEmergency);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc5_)
                        {
                           addr0087:
                           §§pop();
                           addr008c:
                           addr0088:
                           §§push(this._currentEmergency.status == EmergencyConstants.EMERGENCY_STATUS_STARTED);
                        }
                     }
                     §§pop().emergencyIsRunning = §§pop();
                     continue;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr008c);
            }
            §§goto(addr0088);
         }
      }
      
      public function get emergencyActivelyRunning() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._currentEmergency);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0058:
                     if(this._currentEmergency.status == EmergencyConstants.EMERGENCY_STATUS_STARTED)
                     {
                        if(!_loc1_)
                        {
                           addr006a:
                           §§push(true);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0079:
                           return false;
                        }
                        return §§pop();
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr0079);
            }
            §§goto(addr0058);
         }
         §§goto(addr0079);
      }
   }
}

