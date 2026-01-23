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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super(param1,param2);
         }
         var _loc3_:BitmapData = UrbieFactory.instance.sheetDictionary[param2.config.id.toString()];
         if(_loc5_ || Boolean(this))
         {
            if(!_loc3_)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  if(!param1.loadComplete)
                  {
                     if(!_loc4_)
                     {
                        addr0077:
                        param1.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.handlePreloadingComplete);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     this.handlePreloadingComplete({"target":param1});
                     if(_loc4_ && Boolean(_loc3_))
                     {
                     }
                  }
               }
            }
            else
            {
               this.handlePreloadingComplete({"target":{"presentation":{"rawContent":{"bitmapData":_loc3_.clone()}}}});
            }
            return;
         }
         §§goto(addr0077);
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(param1.target is PreloadableImage)
            {
               if(!_loc3_)
               {
                  param1.target.removeEventListener(PreloadableImage.PRELOADING_COMPLETE,this.handlePreloadingComplete);
                  if(_loc2_ || Boolean(param1))
                  {
                     UrbieFactory.instance.sheetDictionary[urbieLifeVo.config.id.toString()] = param1.target.presentation.rawContent.bitmapData.clone();
                     if(_loc2_)
                     {
                        addr009c:
                        super.framesetStrategy.setSheet(param1.target.presentation.rawContent.bitmapData);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr009c);
               }
               addr00b5:
               return;
            }
         }
         §§goto(addr009c);
      }
   }
}

