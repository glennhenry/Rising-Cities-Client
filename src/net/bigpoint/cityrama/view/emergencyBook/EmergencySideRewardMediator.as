package net.bigpoint.cityrama.view.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideRewardComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencySideRewardMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencySideRewardMediator";
      
      public function EmergencySideRewardMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function getMediatorName() : String
      {
         return EmergencySideRewardMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED,ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:EmergencyBookMediator = null;
         var _loc3_:EmergencyLayerProxy = null;
         var _loc4_:EmergencyAssignVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED:
            case ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED:
               _loc2_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
               _loc3_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
               _loc4_ = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
               this.component.data = _loc4_;
         }
      }
      
      public function get component() : SideRewardComponent
      {
         return super.viewComponent as SideRewardComponent;
      }
   }
}

