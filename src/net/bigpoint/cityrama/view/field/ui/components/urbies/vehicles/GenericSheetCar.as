package net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles
{
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.categories.SheetUrbie;
   
   public class GenericSheetCar extends SheetUrbie
   {
      
      public function GenericSheetCar(param1:PreloadableImage, param2:UrbieLifeVo)
      {
         super(param1,param2);
         if(!param1.loadComplete)
         {
            param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets);
         }
         else
         {
            this.updateOffsets({"target":param1});
         }
      }
      
      private function updateOffsets(param1:Object) : void
      {
      }
   }
}

