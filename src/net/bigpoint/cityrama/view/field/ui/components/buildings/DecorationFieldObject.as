package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   
   public class DecorationFieldObject extends BillboardObject
   {
      
      public function DecorationFieldObject(param1:BillboardAssetsReferenceHolder, param2:DecorationFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function get decorationFieldObjectVo() : DecorationFieldObjectVo
      {
         return _data as DecorationFieldObjectVo;
      }
   }
}

