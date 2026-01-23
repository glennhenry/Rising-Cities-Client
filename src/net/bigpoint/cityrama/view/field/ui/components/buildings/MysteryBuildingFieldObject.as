package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.event.BuildingObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.event.ManagerEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerMysteryBuilding;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerMysteryBuilding;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.FinishAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateMysteryBuildingManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManagerImplementation;
   
   public class MysteryBuildingFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest, IFinishAnimationManagerImplementation
   {
      
      private var _enableMouseOver:Boolean = true;
      
      private var _finishAnimationManager:IFinishAnimationManager;
      
      public function MysteryBuildingFieldObject(param1:BillboardAssetsReferenceHolder, param2:MysteryBuildingObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0037);
            }
            §§goto(addr004a);
         }
         addr0037:
         this.prepareBuildUpManager();
         if(_loc4_ || Boolean(param2))
         {
            addr004a:
            this.prepareFinishAnimationManager();
         }
      }
      
      public function startUnwrap() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.mysteryBuildingObjectVo.unwrapProgressIsRunning = true;
            if(_loc2_)
            {
               invalidateEstablishedManager();
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0041:
                  this.invalidateFinishAnimationManager();
               }
               §§goto(addr0046);
            }
            §§goto(addr0041);
         }
         addr0046:
      }
      
      public function invalidateFinishAnimationManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._finishAnimationManager.invalidateFinishAnimationManager();
         }
      }
      
      private function onUnwrapProgressDone(param1:ManagerEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.mysteryBuildingObjectVo.unwrapProgressIsRunning = false;
            if(!_loc3_)
            {
               dispatchEvent(new BuildingObjectEvent(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this));
            }
         }
      }
      
      public function tick(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.billboardObjectVo.currentTimeStamp = param1;
            if(!_loc2_)
            {
               if(billboardObjectVo.currentMode != "")
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(this.mysteryBuildingObjectVo.percentageOfRemainingTimer)
                     {
                        if(!_loc2_)
                        {
                           addr0057:
                           invalidateIconStateManager();
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0057);
               }
            }
         }
         addr005e:
      }
      
      override public function prepareIconStateManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(_iconStateManager == null)
            {
               if(_loc1_)
               {
                  _iconStateManager = new IconStateMysteryBuildingManager();
                  if(!_loc2_)
                  {
                     addr0034:
                     _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
                  }
                  return;
               }
            }
         }
         §§goto(addr0034);
      }
      
      override public function prepareEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(_establishedManager == null)
            {
               if(!_loc2_)
               {
                  addr002a:
                  if(_hitzoneAssistant == null)
                  {
                     if(_loc1_)
                     {
                        throw new RamaCityError("Please instantiate _hitzoneAssistant first");
                     }
                     addr007a:
                     _establishedManager = new EstablishedManagerMysteryBuilding();
                     if(_loc1_)
                     {
                        _establishedManager.prepare(this.mysteryBuildingObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
                     }
                  }
                  else
                  {
                     addContainer(_billbordObjectContainer);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr007a);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr002a);
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
                  _buildUpManager = new BuildUpManagerMysteryBuilding();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0047:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.mainAsset);
                  }
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      public function prepareFinishAnimationManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._finishAnimationManager);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     this._finishAnimationManager = new FinishAnimationManager();
                     if(_loc1_ || Boolean(this))
                     {
                        addr0068:
                        this._finishAnimationManager.prepareFinishAnimationManager(this.mysteryBuildingObjectVo,super._billbordObjectContainer,_productionAnimationContainer,_assetCollection.mainAsset);
                        §§goto(addr0064);
                     }
                     §§goto(addr0083);
                  }
                  addr0064:
                  if(_loc1_)
                  {
                     addr0083:
                     super._billbordObjectContainer.addEventListener(ManagerEvent.FINISH_ANIMATION,this.onUnwrapProgressDone);
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr0068);
         }
         addr0095:
      }
      
      public function invalidateBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            _buildUpManager.invalidate();
            if(_loc1_)
            {
               if(_basementViewManager != null)
               {
                  if(_loc1_)
                  {
                     addr0040:
                     invalidateBasementViewManager(true);
                  }
               }
               §§goto(addr0048);
            }
            §§goto(addr0040);
         }
         addr0048:
      }
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(this._enableMouseOver)
            {
               if(_loc3_ || _loc3_)
               {
                  super.dispatchRollOver(param1);
               }
            }
         }
      }
      
      override public function dispatchRollOut(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._enableMouseOver)
            {
               if(_loc3_ || param1)
               {
                  addr0046:
                  super.dispatchRollOut(param1);
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function get mysteryBuildingObjectVo() : MysteryBuildingObjectVo
      {
         return billboardObjectVo as MysteryBuildingObjectVo;
      }
   }
}

