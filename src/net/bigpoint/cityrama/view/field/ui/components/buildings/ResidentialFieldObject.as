package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class ResidentialFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function ResidentialFieldObject(param1:BillboardAssetsReferenceHolder, param2:ResidentialFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               addr0025:
               this.prepareBuildUpManager();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function tick(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
            if(_loc3_ || _loc2_)
            {
               if(billboardObjectVo.currentMode != "")
               {
                  if(_loc3_)
                  {
                     if(this.residentialFieldObjectVo.percentageOfRemainingTimer)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0062:
                           invalidateIconStateManager();
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
      
      public function prepareBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(_buildUpManager == null)
            {
               if(_loc1_)
               {
                  _buildUpManager = new BuildUpManagerDefault();
                  if(_loc1_)
                  {
                     addr0046:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0046);
            }
            addr005a:
            return;
         }
         §§goto(addr0046);
      }
      
      public function invalidateBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            _buildUpManager.invalidate();
            if(!(_loc1_ && Boolean(this)))
            {
               if(_basementViewManager != null)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0051:
                     invalidateBasementViewManager(true);
                  }
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      public function get residentialFieldObjectVo() : ResidentialFieldObjectVo
      {
         return _data as ResidentialFieldObjectVo;
      }
   }
}

