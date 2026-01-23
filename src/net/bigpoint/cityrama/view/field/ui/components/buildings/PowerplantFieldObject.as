package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.PowerplantFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class PowerplantFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function PowerplantFieldObject(param1:BillboardAssetsReferenceHolder, param2:PowerplantFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param2)))
            {
               this.prepareBuildUpManager();
            }
         }
      }
      
      public function prepareBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(_buildUpManager == null)
            {
               if(!_loc1_)
               {
                  _buildUpManager = new BuildUpManagerDefault();
                  if(!_loc1_)
                  {
                     addr003f:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
                  §§goto(addr0053);
               }
               §§goto(addr003f);
            }
         }
         addr0053:
      }
      
      public function invalidateBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            _buildUpManager.invalidate();
            if(!(_loc1_ && Boolean(this)))
            {
               if(_basementViewManager != null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0051:
                     invalidateBasementViewManager(true);
                  }
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      public function tick(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
         }
      }
   }
}

