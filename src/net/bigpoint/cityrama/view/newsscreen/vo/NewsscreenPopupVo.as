package net.bigpoint.cityrama.view.newsscreen.vo
{
   public class NewsscreenPopupVo
   {
      
      private var _openedOnStartup:Boolean;
      
      private var _slides:Vector.<NewsScreenSlideVo>;
      
      public function NewsscreenPopupVo()
      {
         super();
         this._slides = new Vector.<NewsScreenSlideVo>();
      }
      
      public function get openedOnStartup() : Boolean
      {
         return this._openedOnStartup;
      }
      
      public function set openedOnStartup(param1:Boolean) : void
      {
         this._openedOnStartup = param1;
      }
      
      public function get slides() : Vector.<NewsScreenSlideVo>
      {
         return this._slides;
      }
   }
}

