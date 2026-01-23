package net.bigpoint.cityrama.view.newsscreen.vo
{
   public class NewsscreenPopupVo
   {
      
      private var _openedOnStartup:Boolean;
      
      private var _slides:Vector.<NewsScreenSlideVo>;
      
      public function NewsscreenPopupVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               addr0026:
               this._slides = new Vector.<NewsScreenSlideVo>();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      public function get openedOnStartup() : Boolean
      {
         return this._openedOnStartup;
      }
      
      public function set openedOnStartup(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._openedOnStartup = param1;
         }
      }
      
      public function get slides() : Vector.<NewsScreenSlideVo>
      {
         return this._slides;
      }
   }
}

