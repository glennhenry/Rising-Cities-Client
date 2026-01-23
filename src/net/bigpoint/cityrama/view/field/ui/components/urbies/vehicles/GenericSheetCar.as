package net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles
{
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.categories.SheetUrbie;
   
   public class GenericSheetCar extends SheetUrbie
   {
      
      public function GenericSheetCar(param1:PreloadableImage, param2:UrbieLifeVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0052);
         }
         addr0031:
         if(!param1.loadComplete)
         {
            if(_loc4_ || Boolean(param2))
            {
               addr0052:
               param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets);
               if(_loc3_ && _loc3_)
               {
               }
            }
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

