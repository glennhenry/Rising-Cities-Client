package net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.categories.SheetUrbie;
   
   public class GenericUrbieBottom extends SheetUrbie
   {
      
      public function GenericUrbieBottom(param1:PreloadableImage, param2:UrbieLifeVo)
      {
         super(param1,param2);
         if(!param1.loadComplete)
         {
            param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets,false,0,true);
         }
         else
         {
            this.updateOffsets({"target":param1});
         }
      }
      
      private function updateOffsets(param1:Object) : void
      {
         container.removeEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets);
         var _loc2_:DisplayObject = param1.target.presentation as DisplayObject;
         var _loc3_:Point = new Point(-0.5 * (_loc2_.width / 3),-0.5 * (_loc2_.height / 4));
      }
   }
}

