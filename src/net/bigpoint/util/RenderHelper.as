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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function getRendered(param1:DisplayObjectContainer, param2:Rectangle) : RendererList
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:DisplayObjectContainer = DisplayObjectContainer(param1);
         var _loc4_:Clip = new Clip(_loc3_,new Point(param2.x * -1,param2.y * -1));
         var _loc5_:RendererList = new RendererList(_loc4_.width,_loc4_.height);
         _loc5_.addClip(_loc4_);
         if(!_loc6_)
         {
            _loc5_.render();
            if(!(_loc6_ && RenderHelper))
            {
               _loc5_.x = param2.x;
               if(_loc7_ || Boolean(param2))
               {
                  addr00a2:
                  _loc5_.y = param2.y;
                  if(!_loc6_)
                  {
                     addr00af:
                     _loc5_.smoothing = OptionsGlobalVariables.getInstance().highQuality;
                  }
               }
               return _loc5_;
            }
            §§goto(addr00af);
         }
         §§goto(addr00a2);
      }
      
      private static function debugPic() : Sprite
      {
         return new Sprite();
      }
   }
}

