package net.bigpoint.cityrama.view.field.ui.components.urbies.categories
{
   import flash.display.BitmapData;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.factory.UrbieFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   
   public class SheetUrbie extends UrbieObject
   {
      
      public function SheetUrbie(param1:PreloadableImage, param2:UrbieLifeVo)
      {
         super(param1,param2);
         var _loc3_:BitmapData = UrbieFactory.instance.sheetDictionary[param2.config.id.toString()];
         if(!_loc3_)
         {
            if(!param1.loadComplete)
            {
               param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.handlePreloadingComplete);
            }
            else
            {
               this.handlePreloadingComplete({"target":param1});
            }
         }
         else
         {
            this.handlePreloadingComplete({"target":{"presentation":{"rawContent":{"bitmapData":_loc3_.clone()}}}});
         }
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
         if(param1.target is PreloadableImage)
         {
            param1.target.removeEventListener(PreloadableImage.PRELOADING_COMPLETE,this.handlePreloadingComplete);
            UrbieFactory.instance.sheetDictionary[urbieLifeVo.config.id.toString()] = param1.target.presentation.rawContent.bitmapData.clone();
         }
         super.framesetStrategy.setSheet(param1.target.presentation.rawContent.bitmapData);
      }
   }
}

