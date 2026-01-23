package com.greensock.loading
{
   import com.greensock.loading.core.DisplayObjectLoader;
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class ImageLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _classActivated = _activateClass("ImageLoader",ImageLoader,"jpg,jpeg,png,gif,bmp");
      }
      
      public function ImageLoader(param1:*, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               addr0025:
               _type = "ImageLoader";
            }
            return;
         }
         §§goto(addr0025);
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            _determineScriptAccess();
            if(_loc3_ || _loc3_)
            {
               if(!_scriptAccessDenied)
               {
                  if(!_loc2_)
                  {
                     _content = Bitmap(_loader.content);
                     if(_loc3_)
                     {
                        _content.smoothing = Boolean(this.vars.smoothing != false);
                        addr005c:
                        if(_loc3_ || Boolean(param1))
                        {
                           addr009e:
                           super._initHandler(param1);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr009e);
                  }
               }
               else
               {
                  _content = _loader;
                  if(_loc3_)
                  {
                     §§goto(addr009e);
                  }
               }
               addr00a4:
               return;
            }
            §§goto(addr009e);
         }
         §§goto(addr005c);
      }
   }
}

