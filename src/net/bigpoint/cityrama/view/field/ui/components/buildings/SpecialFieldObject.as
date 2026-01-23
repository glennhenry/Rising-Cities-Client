package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   
   public class SpecialFieldObject extends BillboardObject implements ITimerInterest
   {
      
      public function SpecialFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public function get specialFieldObjectVo() : SpecialFieldObjectVo
      {
         return SpecialFieldObjectVo(_data);
      }
      
      public function tick(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.billboardObjectVo.currentTimeStamp = param1;
         }
      }
   }
}

