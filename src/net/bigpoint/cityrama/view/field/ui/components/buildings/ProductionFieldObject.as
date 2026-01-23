package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.ProductionSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlot;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlotManager;
   
   public class ProductionFieldObject extends BillboardObject implements IBuildUpManagerImplementation, IProductionSlot, ITimerInterest
   {
      
      protected var _productionSlotManager:IProductionSlotManager;
      
      private var _currenEventGfxIdForInformationFloater:Number;
      
      public function ProductionFieldObject(param1:BillboardAssetsReferenceHolder, param2:ProductionFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               this.prepareProductionSlotManager();
               if(_loc3_)
               {
                  addr0037:
                  this.prepareBuildUpManager();
                  if(!(_loc4_ && Boolean(param2)))
                  {
                     addr004a:
                     prepareAnimationSlotManager();
                  }
               }
               return;
            }
            §§goto(addr0037);
         }
         §§goto(addr004a);
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
               if(_loc2_ || _loc1_)
               {
                  addr0047:
                  _buildUpManager = new BuildUpManagerDefault();
                  if(_loc2_ || Boolean(this))
                  {
                     addr0061:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0061);
            }
            addr0075:
            return;
         }
         §§goto(addr0047);
      }
      
      public function prepareProductionSlotManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._productionSlotManager);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._productionSlotManager = new ProductionSlotManager();
                     if(!_loc1_)
                     {
                        addr004f:
                        this._productionSlotManager.prepareProductionSlotManager(this.productionFieldObjectVo,super._billbordObjectContainer,super._assetCollection.mainAsset);
                        addr004b:
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr004b);
            }
            §§goto(addr004f);
         }
         addr0063:
      }
      
      public function invalidateBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            _buildUpManager.invalidate();
            if(_loc1_)
            {
               §§goto(addr0033);
            }
            §§goto(addr0040);
         }
         addr0033:
         if(_basementViewManager != null)
         {
            if(!_loc2_)
            {
               addr0040:
               invalidateBasementViewManager(true);
            }
         }
      }
      
      public function invalidateProductionSlotManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._productionSlotManager.invalidateProductionSlotManager();
         }
      }
      
      public function get productionFieldObjectVo() : ProductionFieldObjectVo
      {
         return super.billboardObjectVo as ProductionFieldObjectVo;
      }
      
      public function tick(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
            if(!_loc2_)
            {
               if(billboardObjectVo.currentMode != "")
               {
                  if(!_loc2_)
                  {
                     addr0041:
                     if(this.productionFieldObjectVo.percentageOfRemainingTimer)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0059:
                           invalidateIconStateManager();
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0059);
         }
         §§goto(addr0041);
      }
   }
}

