package net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians
{
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.categories.SheetUrbie;
   
   public class GenericUrbieTop extends SheetUrbie
   {
      
      public function GenericUrbieTop(param1:PreloadableImage, param2:UrbieLifeVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
         }
      }
   }
}

