package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class ShopFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function ShopFieldObject(param1:BillboardAssetsReferenceHolder, param2:ShopFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
            if(_loc3_)
            {
               this.prepareBuildUpManager();
            }
         }
      }
      
      public function tick(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
         }
      }
      
      public function prepareBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(_buildUpManager == null)
            {
               if(!_loc1_)
               {
                  _buildUpManager = new BuildUpManagerDefault();
                  if(!(_loc1_ && _loc1_))
                  {
                     addr004f:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      public function invalidateBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            _buildUpManager.invalidate();
            if(!(_loc1_ && _loc2_))
            {
               addr0034:
               if(_basementViewManager != null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     invalidateBasementViewManager(true);
                  }
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      public function get shopFieldObjectVo() : ShopFieldObjectVo
      {
         return ShopFieldObjectVo(_data);
      }
   }
}

