package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateDepartmentManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InfrastructureBasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class InfrastructureBuildingFieldObject extends BillboardObject implements IEmergencyInfrastructure, IBuildUpManagerImplementation
   {
      
      public function InfrastructureBuildingFieldObject(param1:BillboardAssetsReferenceHolder, param2:InfrastructureBuildingFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               this.prepareBuildUpManager();
            }
         }
      }
      
      override public function prepareIconStateManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(_iconStateManager == null)
            {
               if(_loc1_)
               {
                  _iconStateManager = new IconStateDepartmentManager();
                  if(_loc1_)
                  {
                     addr0046:
                     _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
                  }
                  §§goto(addr0055);
               }
            }
            §§goto(addr0046);
         }
         addr0055:
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            _iconStateManager.invalidateIconStateManager(param1);
         }
      }
      
      override public function prepareBasementViewManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(_basementViewManager == null)
            {
               if(!_loc2_)
               {
                  §§goto(addr0034);
               }
            }
            §§goto(addr0046);
         }
         addr0034:
         _basementViewManager = new InfrastructureBasementViewManager();
         if(!_loc2_)
         {
            addr0046:
            _basementViewManager.prepareBasementViewManager(billboardObjectVo,_billbordObjectContainer,_assetCollection);
         }
      }
      
      public function prepareBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(_buildUpManager == null)
            {
               if(_loc2_)
               {
                  _buildUpManager = new BuildUpManagerDefault();
                  if(_loc2_ || _loc2_)
                  {
                     addr004f:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr004f);
            }
            addr0063:
            return;
         }
         §§goto(addr004f);
      }
      
      public function invalidateBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            _buildUpManager.invalidate();
            if(!(_loc2_ && Boolean(this)))
            {
               if(_basementViewManager != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     invalidateBasementViewManager(true);
                  }
               }
            }
         }
      }
      
      public function tick(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
         }
      }
      
      public function get emergencyFieldObjectVo() : IEmergencyInfrastructureVO
      {
         return billboardObjectVo as InfrastructureBuildingFieldObjectVo;
      }
   }
}

