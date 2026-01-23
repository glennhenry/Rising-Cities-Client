package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemDeleteSuccess extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldItemDeleteSuccess()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:IPlaneObject = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:SecurityMatrixProxy = null;
         var _loc9_:IEmergencyInfrastructure = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc11_ || Boolean(param1))
         {
            if(!_loc2_.json)
            {
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  return;
               }
            }
         }
         var _loc5_:Number = Number(_loc2_.json.id);
         var _temp_4:* = _loc3_.getBillboardById(_loc5_);
         _loc7_ = _loc3_.getBillboardById(_loc5_);
         if(!_loc7_)
         {
            _loc6_ = _loc3_.getPlaneObjectById(_loc5_);
            if(!_loc6_)
            {
               if(_loc11_)
               {
                  return;
               }
            }
            _loc3_.removeGameObjectVofromMatrix(_loc6_.objectVo);
            if(!_loc10_)
            {
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
            }
         }
         else
         {
            _loc8_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            if(_loc11_)
            {
               if(_loc7_ is IEmergencyInfrastructure)
               {
                  if(_loc11_)
                  {
                     addr0116:
                     _loc9_ = _loc7_ as IEmergencyInfrastructure;
                     if(_loc11_ || Boolean(param1))
                     {
                        _loc8_.removeObject(_loc9_.emergencyFieldObjectVo);
                     }
                     addr0147:
                     _loc4_.playBuildingDemolition();
                     if(_loc11_)
                     {
                        _loc3_.removeGameObjectVofromMatrix(_loc7_.billboardObjectVo);
                        if(_loc11_ || Boolean(_loc3_))
                        {
                           addr016b:
                           sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc7_);
                        }
                        §§goto(addr0177);
                     }
                  }
                  §§goto(addr016b);
               }
               §§goto(addr0147);
            }
            §§goto(addr0116);
         }
         addr0177:
      }
   }
}

