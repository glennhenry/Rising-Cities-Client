package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   
   public class ActivatorFieldObject extends SpecialFieldObject
   {
      
      protected var _hasBasement:Boolean;
      
      public function ActivatorFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         super(param1,param2);
         this._hasBasement = false;
         this.changeInteractionstate(false);
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         super.changeInteractionstate(false);
      }
      
      override public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         if(this._hasBasement)
         {
            super.invalidateBasementViewManager(param1);
         }
      }
   }
}

