package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   
   public class DecorationFieldObject extends BillboardObject
   {
      
      public function DecorationFieldObject(param1:BillboardAssetsReferenceHolder, param2:DecorationFieldObjectVo)
      {
         super(param1,param2);
      }
      
      public function get decorationFieldObjectVo() : DecorationFieldObjectVo
      {
         return _data as DecorationFieldObjectVo;
      }
   }
}

