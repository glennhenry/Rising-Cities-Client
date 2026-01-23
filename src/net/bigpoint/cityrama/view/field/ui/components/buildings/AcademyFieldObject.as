package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateAcademyManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class AcademyFieldObject extends SpecialFieldObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function AcademyFieldObject(param1:BillboardAssetsReferenceHolder, param2:AcademyFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
            if(_loc3_)
            {
               this.prepareBuildUpManager();
            }
         }
      }
      
      override public function prepareIconStateManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(_iconStateManager == null)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0035);
               }
            }
            §§goto(addr004f);
         }
         addr0035:
         _iconStateManager = new IconStateAcademyManager();
         if(!(_loc1_ && _loc2_))
         {
            addr004f:
            _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
         }
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
      
      public function prepareBuildUpManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(_buildUpManager == null)
            {
               if(_loc2_)
               {
                  addr002d:
                  _buildUpManager = new BuildUpManagerDefault();
                  if(!_loc1_)
                  {
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
               }
            }
            return;
         }
         §§goto(addr002d);
      }
      
      public function invalidateBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            _buildUpManager.invalidate();
            if(_loc1_ || _loc2_)
            {
               addr0033:
               if(_basementViewManager != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     invalidateBasementViewManager(true);
                  }
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      public function get academyFieldObjectVo() : AcademyFieldObjectVo
      {
         return _data as AcademyFieldObjectVo;
      }
      
      override public function tick(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.academyFieldObjectVo.currentTimeStamp = param1;
         }
      }
   }
}

