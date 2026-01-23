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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "EmergencySideRewardMediator";
      }
      
      public function EmergencySideRewardMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(NAME,param1);
         }
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:EmergencyBookMediator = null;
         var _loc3_:EmergencyLayerProxy = null;
         var _loc4_:EmergencyAssignVo = null;
         var _loc5_:* = param1.getName();
         if(_loc7_ || Boolean(_loc2_))
         {
            §§push(ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED);
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(_loc5_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || Boolean(param1))
                     {
                        addr00cf:
                        §§push(0);
                        if(_loc7_ || Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00fb:
                        §§push(1);
                        if(_loc7_ || Boolean(_loc3_))
                        {
                        }
                     }
                     §§goto(addr011b);
                  }
                  else
                  {
                     §§goto(addr00f7);
                  }
               }
               addr00f7:
               §§goto(addr00f5);
            }
            addr00f5:
            if(ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED === _loc5_)
            {
               §§goto(addr00fb);
            }
            else
            {
               §§push(2);
            }
            addr011b:
            switch(§§pop())
            {
               case 0:
               case 1:
                  _loc2_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
                  _loc3_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                  _loc4_ = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     this.component.data = _loc4_;
                  }
            }
            return;
         }
         §§goto(addr00cf);
      }
      
      public function get component() : SideRewardComponent
      {
         return super.viewComponent as SideRewardComponent;
      }
   }
}

