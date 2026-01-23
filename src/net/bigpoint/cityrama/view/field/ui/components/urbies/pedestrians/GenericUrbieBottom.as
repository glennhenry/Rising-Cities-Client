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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(param1,param2);
            if(_loc4_ || Boolean(this))
            {
               if(!param1.loadComplete)
               {
                  if(_loc4_ || Boolean(param2))
                  {
                     addr0061:
                     param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets,false,0,true);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  this.updateOffsets({"target":param1});
               }
            }
            return;
         }
         §§goto(addr0061);
      }
      
      private function updateOffsets(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            container.removeEventListener(PreloadableImage.PRELOADING_COMPLETE,this.updateOffsets);
         }
         var _loc2_:DisplayObject = param1.target.presentation as DisplayObject;
         var _loc3_:Point = new Point(-0.5 * (_loc2_.width / 3),-0.5 * (_loc2_.height / 4));
      }
   }
}

