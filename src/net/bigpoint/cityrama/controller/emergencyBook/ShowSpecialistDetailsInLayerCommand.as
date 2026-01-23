package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySideProfessionMediator;
   import net.bigpoint.cityrama.view.emergencyBook.SpecialistDetailGridMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideProfessionalComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SpecialistDetailsListComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowSpecialistDetailsInLayerCommand extends SimpleCommand
   {
      
      public function ShowSpecialistDetailsInLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:SpecialistDetailGridMediator = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
         var _loc5_:ProfessionalSlotVo = param1.getBody() as ProfessionalSlotVo;
         if(_loc11_ || Boolean(_loc2_))
         {
            if(_loc4_)
            {
               if(!_loc10_)
               {
                  facade.removeMediator(SpecialistDetailGridMediator.NAME);
               }
            }
         }
         var _loc6_:EmergencyAssignListVo = _loc3_.getEmergencyAssignListVo(_loc2_.billboardObjectVo,_loc5_.slotNumber);
         var _loc7_:SpecialistDetailsListComponent = new SpecialistDetailsListComponent();
         _loc7_.percentWidth = 100;
         if(!(_loc10_ && Boolean(param1)))
         {
            _loc7_.percentHeight = 100;
            if(_loc11_ || Boolean(param1))
            {
               §§push(_loc2_.component);
               if(!_loc10_)
               {
                  §§pop().selectButtonMode();
                  if(_loc11_)
                  {
                     §§push(_loc2_.component);
                     if(_loc11_ || Boolean(this))
                     {
                        §§pop().selectDisabled();
                        if(!_loc10_)
                        {
                           addr0105:
                           _loc2_.component.showBackButton = true;
                           addr0102:
                           if(!_loc10_)
                           {
                              addr010f:
                              facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc7_);
                           }
                           addr011b:
                           _loc4_ = new SpecialistDetailGridMediator(_loc7_);
                           _loc4_.slotNumber = _loc5_.slotNumber;
                           if(_loc11_)
                           {
                              facade.registerMediator(_loc4_);
                              if(!_loc10_)
                              {
                                 addr0146:
                                 _loc7_.data = _loc6_;
                              }
                              var _loc8_:SideProfessionalComponent = new SideProfessionalComponent();
                              _loc8_.percentWidth = 100;
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 _loc8_.percentHeight = 100;
                                 if(!_loc10_)
                                 {
                                    _loc8_.originalData = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
                                    if(_loc11_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr0192);
                                    }
                                    §§goto(addr01da);
                                 }
                              }
                              addr0192:
                              _loc8_.professionalData = _loc5_;
                              if(_loc11_)
                              {
                                 _loc8_.currentData = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
                                 if(_loc11_)
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc8_);
                                    if(_loc11_ || Boolean(_loc2_))
                                    {
                                       addr01da:
                                       facade.removeMediator(EmergencySideProfessionMediator.NAME);
                                    }
                                 }
                              }
                              var _loc9_:EmergencySideProfessionMediator = new EmergencySideProfessionMediator(_loc8_);
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 facade.registerMediator(_loc9_);
                              }
                              return;
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr0105);
                  }
                  §§goto(addr010f);
               }
               §§goto(addr0105);
            }
            §§goto(addr011b);
         }
         §§goto(addr0102);
      }
   }
}

