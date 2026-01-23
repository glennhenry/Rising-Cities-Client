package net.bigpoint.util
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.itemRenderer.RendererList;
   import net.bigpoint.itemRenderer.clip.Clip;
   
   public class RenderHelper
   {
      
      public function RenderHelper()
      {
         super();
      }
      
      public static function getRendered(param1:DisplayObjectContainer, param2:Rectangle) : RendererList
      {
         var _loc3_:DisplayObjectContainer = DisplayObjectContainer(param1);
         var _loc4_:Clip = new Clip(_loc3_,new Point(param2.x * -1,param2.y * -1));
         var _loc5_:RendererList = new RendererList(_loc4_.width,_loc4_.height);
         _loc5_.addClip(_loc4_);
         _loc5_.render();
         _loc5_.x = param2.x;
         _loc5_.y = param2.y;
         _loc5_.smoothing = OptionsGlobalVariables.getInstance().highQuality;
         return _loc5_;
      }
      
      private static function debugPic() : Sprite
      {
         return new Sprite();
      }
   }
}

