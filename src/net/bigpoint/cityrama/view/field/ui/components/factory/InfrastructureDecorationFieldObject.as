package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import net.bigpoint.cityrama.model.field.factorys.InfrastructureDecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InfrastructureBasementViewManager;
   
   public class InfrastructureDecorationFieldObject extends DecorationFieldObject implements IEmergencyInfrastructure
   {
      
      public function InfrastructureDecorationFieldObject(param1:BillboardAssetsReferenceHolder, param2:InfrastructureDecorationFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function prepareBasementViewManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(_basementViewManager == null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  _basementViewManager = new InfrastructureBasementViewManager();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0056:
                     _basementViewManager.prepareBasementViewManager(billboardObjectVo,_billbordObjectContainer,_assetCollection);
                  }
                  return;
               }
            }
         }
         §§goto(addr0056);
      }
      
      public function get emergencyFieldObjectVo() : IEmergencyInfrastructureVO
      {
         return billboardObjectVo as InfrastructureDecorationFieldObjectVo;
      }
   }
}

