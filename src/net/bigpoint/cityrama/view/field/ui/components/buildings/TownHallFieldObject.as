package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.TownHallAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class TownHallFieldObject extends ActivatorFieldObject implements IBuildUpManagerImplementation
   {
      
      public function TownHallFieldObject(param1:BillboardAssetsReferenceHolder, param2:TownHallFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               _hasBasement = true;
               if(!_loc4_)
               {
                  this.prepareBuildUpManager();
                  if(!_loc4_)
                  {
                     addr0055:
                     this.changeInteractionstate(true);
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0055);
            }
            addr005b:
            return;
         }
         §§goto(addr0055);
      }
      
      public function prepareBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(_buildUpManager == null)
            {
               if(_loc1_)
               {
                  addr0034:
                  _buildUpManager = new BuildUpManagerDefault();
                  if(_loc1_)
                  {
                     addr0046:
                     _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
                  }
               }
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr0034);
      }
      
      public function invalidateBuildUpManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            _buildUpManager.invalidate();
            if(!_loc2_)
            {
               if(_basementViewManager != null)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     invalidateBasementViewManager(true);
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr0055);
                     }
                     §§goto(addr0062);
                  }
               }
            }
            addr0055:
            if(_iconStateManager != null)
            {
               if(!_loc2_)
               {
                  addr0062:
                  invalidateIconStateManager();
               }
            }
            §§goto(addr0069);
         }
         addr0069:
      }
      
      override public function prepareAnimationSlotManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(_animationSlotManager == null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr0046:
                  _animationSlotManager = new TownHallAnimationManager();
                  if(_loc1_ || _loc1_)
                  {
                     addr0060:
                     _animationSlotManager.prepareAnimationSlotManager(billboardObjectVo,super._billbordObjectContainer,super._productionAnimationContainer);
                  }
               }
               return;
            }
            §§goto(addr0060);
         }
         §§goto(addr0046);
      }
      
      public function get townHallFieldObjectVo() : TownHallFieldObjectVo
      {
         return _data as TownHallFieldObjectVo;
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            _hitzoneContainer.mouseEnabled = param1;
            if(!_loc3_)
            {
               _iconContainer.mouseEnabled = param1;
            }
         }
      }
   }
}

