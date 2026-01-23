package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalAssignedSuccess extends SimpleCommand
   {
      
      public function ServerMessageProfessionalAssignedSuccess()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:AcademyFieldObject = null;
         var _loc8_:Vector.<ProfessionalDTO> = null;
         var _loc9_:ProfessionalDTO = null;
         var _loc10_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:Number = Number(_loc2_.json.prof);
         var _loc5_:Number = Number(_loc2_.json.bid);
         for each(_loc7_ in _loc3_.getAcademyList())
         {
            if(_loc7_.billboardObjectVo.buildingDTO.professionals.length)
            {
               _loc8_ = _loc7_.billboardObjectVo.buildingDTO.professionals;
               if(!_loc15_)
               {
                  var _loc13_:int = 0;
                  if(!(_loc15_ && Boolean(param1)))
                  {
                     for each(_loc9_ in _loc8_)
                     {
                        if(_loc9_.id == _loc4_)
                        {
                           _loc6_ = _loc9_;
                           if(_loc16_ || Boolean(_loc2_))
                           {
                              _loc8_.splice(_loc8_.indexOf(_loc9_),1);
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 _loc6_.buildingId = _loc5_;
                                 if(!_loc15_)
                                 {
                                    _loc3_.getBillboardById(_loc5_).billboardObjectVo.buildingDTO.professionals.push(_loc6_);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(!(_loc15_ && Boolean(_loc2_)))
         {
            if(_loc3_.getBillboardById(_loc5_).billboardObjectVo is IEmergencyInfrastructureVO)
            {
               addr0179:
               _loc10_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
               _loc10_.updateObject(_loc3_.getBillboardById(_loc5_).billboardObjectVo as IEmergencyInfrastructureVO);
            }
            return;
         }
         §§goto(addr0179);
      }
   }
}

