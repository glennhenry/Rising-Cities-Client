package net.bigpoint.cityrama.view.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideProfessionalComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencySideProfessionMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencySideProfessionMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "EmergencySideProfessionMediator";
      }
      
      private var _originalData:EmergencyAssignVo;
      
      public function EmergencySideProfessionMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function getMediatorName() : String
      {
         return EmergencySideProfessionMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED,ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED,ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:EmergencyLayerProxy = null;
         var _loc3_:EmergencyBookMediator = null;
         var _loc4_:SpecialistDetailGridMediator = null;
         var _loc5_:EmergencyAssignVo = null;
         var _loc6_:ProfessionalSlotVo = null;
         var _loc7_:ProfessionalSlotVo = null;
         var _loc8_:ProfessionalListInfoVo = null;
         var _loc9_:* = param1.getName();
         if(!(_loc12_ && Boolean(param1)))
         {
            §§push(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED);
            if(_loc11_)
            {
               §§push(_loc9_);
               if(!_loc12_)
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY);
                     if(!(_loc12_ && Boolean(_loc2_)))
                     {
                        addr02b6:
                        §§push(_loc9_);
                        if(_loc11_ || Boolean(this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc11_ || Boolean(_loc2_))
                              {
                                 addr02e7:
                                 §§push(1);
                                 if(_loc12_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr02fe);
                              }
                              §§goto(addr0316);
                           }
                           else
                           {
                              §§goto(addr02fa);
                           }
                        }
                        addr02fa:
                        §§goto(addr02f8);
                     }
                     addr02f8:
                     if(ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED === _loc9_)
                     {
                        §§goto(addr02fe);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr0316:
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                           _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
                           _loc4_ = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
                           if(_loc11_)
                           {
                              _loc2_.assignProfToSlot(_loc3_.billboardObjectVo,_loc4_.slotNumber);
                           }
                           _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
                           for each(_loc7_ in _loc5_.professionalSlots)
                           {
                              if(_loc7_.slotNumber == _loc4_.slotNumber)
                              {
                                 _loc6_ = _loc7_;
                                 break;
                              }
                           }
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              §§push(this.component);
                              if(_loc11_)
                              {
                                 §§pop().currentData = _loc5_;
                                 if(!(_loc11_ || Boolean(param1)))
                                 {
                                    break;
                                 }
                                 addr0102:
                                 §§push(this.component);
                              }
                              §§pop().professionalData = _loc6_;
                              break;
                           }
                           §§goto(addr0102);
                        case 1:
                           _loc8_ = param1.getBody() as ProfessionalListInfoVo;
                           if(_loc8_.profId == this.component.professionalId)
                           {
                              break;
                           }
                           _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                           _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
                           _loc4_ = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
                           if(!(_loc12_ && Boolean(param1)))
                           {
                              _loc2_.assignTemporaryProfToSlot(_loc3_.billboardObjectVo,_loc4_.slotNumber,_loc8_.profId);
                           }
                           _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
                           for each(_loc7_ in _loc5_.professionalSlots)
                           {
                              if(_loc7_.slotNumber == _loc4_.slotNumber)
                              {
                                 _loc6_ = _loc7_;
                                 break;
                              }
                           }
                           if(!_loc12_)
                           {
                              §§push(this.component);
                              if(_loc11_)
                              {
                                 §§pop().currentData = _loc5_;
                                 if(_loc12_ && Boolean(_loc2_))
                                 {
                                    break;
                                 }
                                 §§push(this.component);
                              }
                              §§pop().professionalData = _loc6_;
                           }
                           break;
                        case 2:
                           _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                           _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
                           _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
                           if(_loc11_)
                           {
                              this.component.originalData = _loc5_;
                           }
                     }
                     return;
                  }
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                     }
                  }
                  else
                  {
                     addr02fe:
                     §§push(2);
                     if(_loc12_)
                     {
                     }
                  }
                  §§goto(addr0316);
                  §§goto(addr02fe);
               }
               §§goto(addr02fa);
            }
            §§goto(addr02b6);
         }
         §§goto(addr02e7);
      }
      
      public function get component() : SideProfessionalComponent
      {
         return super.viewComponent as SideProfessionalComponent;
      }
      
      public function get originalData() : EmergencyAssignVo
      {
         return this._originalData;
      }
      
      public function set originalData(param1:EmergencyAssignVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._originalData = param1;
         }
      }
   }
}

