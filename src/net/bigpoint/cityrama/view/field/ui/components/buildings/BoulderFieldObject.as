package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BoulderDemolitionAssetManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderAssetChange;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderDemolitionAssetManager;
   
   public class BoulderFieldObject extends BillboardObject implements IBoulderAssetChange, ITimerInterest
   {
      
      protected var _boulderAssetManager:IBoulderDemolitionAssetManager;
      
      public function BoulderFieldObject(param1:BillboardAssetsReferenceHolder, param2:BoulderObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               this.prepareBoulderDemolitionAssetManager();
            }
         }
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
      
      public function prepareBoulderDemolitionAssetManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._boulderAssetManager);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     §§goto(addr0032);
                  }
               }
               §§goto(addr004a);
            }
            §§goto(addr004e);
         }
         addr0032:
         this._boulderAssetManager = new BoulderDemolitionAssetManager();
         if(_loc1_ || Boolean(this))
         {
            addr004e:
            this._boulderAssetManager.prepare(this.boulderObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
            addr004a:
         }
      }
      
      public function invalidateBoulderDemolitionAssetManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._boulderAssetManager.invalidate();
         }
      }
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            if(!billboardObjectVo.userInteractionLocked)
            {
               if(!_loc3_)
               {
                  addr002c:
                  super.dispatchRollOver(param1);
               }
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function get boulderObjectVo() : BoulderObjectVo
      {
         return billboardObjectVo as BoulderObjectVo;
      }
      
      override public function prepareBasementViewManager() : void
      {
      }
      
      override public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
      }
      
      override public function prepareIconStateManager() : void
      {
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
      }
      
      override public function prepareAnimationSlotManager() : void
      {
      }
      
      override public function invalidateAnimationSlotManager() : void
      {
      }
      
      override public function invalidateEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this._boulderAssetManager != null)
            {
               if(_loc1_)
               {
                  addr0035:
                  this.invalidateBoulderDemolitionAssetManager();
                  if(_loc1_ || _loc2_)
                  {
                  }
               }
            }
            else
            {
               this.tryAgain();
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function tryAgain() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            TweenMax.delayedCall(1,this.invalidateEstablishedManager);
         }
      }
   }
}

