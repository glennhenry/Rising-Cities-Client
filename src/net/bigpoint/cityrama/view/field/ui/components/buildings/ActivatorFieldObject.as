package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   
   public class ActivatorFieldObject extends SpecialFieldObject
   {
      
      protected var _hasBasement:Boolean;
      
      public function ActivatorFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._hasBasement = false;
               if(_loc4_)
               {
                  addr0041:
                  this.changeInteractionstate(false);
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.changeInteractionstate(false);
         }
      }
      
      override public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(this._hasBasement)
            {
               if(!_loc2_)
               {
                  addr002d:
                  super.invalidateBasementViewManager(param1);
               }
            }
            return;
         }
         §§goto(addr002d);
      }
   }
}

