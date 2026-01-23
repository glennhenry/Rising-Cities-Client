package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemActiveStateChangedCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldItemActiveStateChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:IPlaneObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:Number = NaN;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PlaneProxy = super.facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         var _loc4_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc5_:MessageVo = MessageVo(param1.getBody());
         if(!_loc5_.json)
         {
            return;
         }
         var _loc6_:Vector.<Number> = new Vector.<Number>();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         for each(_loc8_ in _loc5_.json.act.a)
         {
            _loc6_.push(_loc8_ as Number);
         }
         for each(_loc9_ in _loc5_.json.act.d)
         {
            _loc7_.push(_loc9_ as Number);
         }
         for each(_loc12_ in _loc6_)
         {
            _loc11_ = _loc2_.getBillboardById(_loc12_);
            if(!_loc11_)
            {
               _loc10_ = _loc2_.getPlaneObjectById(_loc12_);
               if(!_loc10_)
               {
                  return;
               }
               _loc10_.objectVo.isConnectedToStreet = true;
               _loc10_.objectVo.groundDTO.active = true;
               _loc3_.updateObject(_loc10_);
            }
            else
            {
               _loc11_.billboardObjectVo.isConnectedToStreet = true;
               _loc11_.invalidateIconStateManager();
               if(_loc11_ is ResidentialFieldObject || _loc11_ is ShopFieldObject)
               {
                  this.activateNeeds(_loc11_);
               }
               if(_loc11_ is IEmergencyInfrastructure)
               {
                  _loc4_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
               }
            }
         }
         for each(_loc12_ in _loc7_)
         {
            _loc11_ = _loc2_.getBillboardById(_loc12_);
            if(!_loc11_)
            {
               _loc10_ = _loc2_.getPlaneObjectById(_loc12_);
               if(_loc10_)
               {
                  _loc10_.objectVo.isConnectedToStreet = false;
               }
            }
            else
            {
               _loc11_.billboardObjectVo.isConnectedToStreet = false;
               _loc11_.billboardObjectVo.resetHarvestTimer();
               _loc11_.invalidateIconStateManager();
               if(_loc11_ is ResidentialFieldObject || _loc11_ is ShopFieldObject)
               {
                  this.deactivateNeeds(_loc11_);
               }
               if(_loc11_ is IEmergencyInfrastructure)
               {
                  _loc4_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                  _loc4_.removeObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
               }
            }
         }
      }
      
      public function deactivateNeeds(param1:BillboardObject) : void
      {
         var _loc3_:ShopFieldObject = null;
         var _loc2_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(!(param1 is ResidentialFieldObject))
         {
            if(param1 is ShopFieldObject)
            {
               _loc3_ = param1 as ShopFieldObject;
               _loc3_.shopFieldObjectVo.formerPosition = param1.billboardObjectVo.matrix3dCoordinates;
               _loc2_.updateShopsOldResidentials((param1 as ShopFieldObject).shopFieldObjectVo);
               _loc2_.removeShop(_loc3_);
               (param1 as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
            }
         }
      }
      
      public function activateNeeds(param1:BillboardObject) : void
      {
         var _loc3_:ShopFieldObject = null;
         var _loc2_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(param1 is ResidentialFieldObject)
         {
            _loc2_.addResidential((param1 as ResidentialFieldObject).residentialFieldObjectVo);
         }
         else if(param1 is ShopFieldObject)
         {
            _loc3_ = param1 as ShopFieldObject;
            _loc3_.shopFieldObjectVo.formerPosition = param1.billboardObjectVo.matrix3dCoordinates;
            _loc2_.addShop(param1 as ShopFieldObject);
            _loc2_.updateShop((param1 as ShopFieldObject).shopFieldObjectVo);
            (param1 as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
         }
      }
   }
}

