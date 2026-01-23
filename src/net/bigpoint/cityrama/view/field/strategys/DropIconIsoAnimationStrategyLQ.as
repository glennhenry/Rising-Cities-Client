package net.bigpoint.cityrama.view.field.strategys
{
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import com.greensock.easing.Sine;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class DropIconIsoAnimationStrategyLQ extends EventDispatcher implements IDropIconAnimationStrategy
   {
      
      private var _applicationFacade:IFacade;
      
      private var _soundProxy:SoundProxy;
      
      private var _direction:int;
      
      private var _finishEvent:DropIconAnimationEvent;
      
      public function DropIconIsoAnimationStrategyLQ()
      {
         super();
      }
      
      public function prepare(param1:IFacade) : void
      {
         this._applicationFacade = param1;
         this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         var _loc3_:TimelineMax = null;
         var _loc4_:TweenMax = null;
         var _loc5_:TweenMax = null;
         param1.cacheAsBitmap = true;
         if(param1 is Sprite)
         {
            if((param1 as Sprite).numChildren)
            {
               if((param1 as Sprite).getChildAt(0) is Bitmap)
               {
                  ((param1 as Sprite).getChildAt(0) as Bitmap).smoothing = false;
               }
            }
         }
         var _loc6_:int = (50 + 100 * Math.random()) * (this._direction == 0 ? 1 : -1);
         ++this._direction;
         if(this._direction > 1)
         {
            this._direction = 0;
         }
         this._soundProxy.playBounce();
         _loc3_ = new TimelineMax();
         _loc4_ = TweenMax.fromTo(param1,1.5,{"x":param2.startPoint.x - param1.width / 2},{
            "onComplete":this.kill,
            "onCompleteParams":[param1,_loc3_,param2],
            "ease":Sine.easeOut,
            "bezierThrough":[{"x":param2.startPoint.x + _loc6_ * 0.5},{"x":param2.startPoint.x + _loc6_}]
         });
         _loc5_ = TweenMax.fromTo(param1,1.5,{"y":param2.startPoint.y - param1.height / 2},{
            "ease":Bounce.easeOut,
            "bezierThrough":[{"y":param2.startPoint.y - 150},{"y":param2.startPoint.y}]
         });
         _loc3_.appendMultiple([_loc4_,_loc5_]);
         _loc3_.play();
      }
      
      private function kill(param1:DisplayObject, param2:TimelineMax, param3:DropIconVO) : void
      {
         RandomUtilities.cleanRemoveChild(param1);
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return this._finishEvent;
      }
   }
}

