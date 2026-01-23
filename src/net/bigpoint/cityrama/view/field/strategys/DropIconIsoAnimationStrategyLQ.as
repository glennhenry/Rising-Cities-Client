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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function prepare(param1:IFacade) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._applicationFacade = param1;
            if(!(_loc3_ && _loc3_))
            {
               this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
         }
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:TimelineMax = null;
         var _loc4_:TweenMax = null;
         var _loc5_:TweenMax = null;
         if(_loc9_)
         {
            param1.cacheAsBitmap = true;
            if(_loc9_ || Boolean(param2))
            {
               §§push(param1 is Sprite);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || Boolean(this))
                     {
                        if((param1 as Sprite).numChildren)
                        {
                           if(_loc9_ || Boolean(param1))
                           {
                              addr0081:
                              addr0073:
                              if((param1 as Sprite).getChildAt(0) is Bitmap)
                              {
                                 if(!(_loc10_ && Boolean(param2)))
                                 {
                                    addr0093:
                                    ((param1 as Sprite).getChildAt(0) as Bitmap).smoothing = false;
                                 }
                              }
                              addr00a5:
                              §§push(50);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + 100 * Math.random());
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    §§push(this._direction);
                                    if(_loc9_)
                                    {
                                       if(§§pop() == 0)
                                       {
                                          addr00ee:
                                          if(!_loc10_)
                                          {
                                             addr00dc:
                                             §§push(1 * (_loc9_ ? §§pop() : §§pop()));
                                          }
                                          var _loc6_:int = §§pop();
                                          if(!(_loc10_ && Boolean(_loc3_)))
                                          {
                                             var _loc7_:* = this;
                                             §§push(_loc7_._direction);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!(_loc10_ && Boolean(param2)))
                                             {
                                                _loc7_._direction = _loc8_;
                                             }
                                             if(_loc9_ || Boolean(param2))
                                             {
                                                addr0142:
                                                if(this._direction > 1)
                                                {
                                                   if(_loc9_ || Boolean(param2))
                                                   {
                                                      this._direction = 0;
                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                      {
                                                         addr016e:
                                                         this._soundProxy.playBounce();
                                                      }
                                                   }
                                                   addr0178:
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
                                                   if(!(_loc10_ && Boolean(_loc3_)))
                                                   {
                                                      _loc3_.appendMultiple([_loc4_,_loc5_]);
                                                      if(_loc9_)
                                                      {
                                                         addr0255:
                                                         _loc3_.play();
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr0255);
                                                }
                                                §§goto(addr016e);
                                             }
                                             §§goto(addr0178);
                                          }
                                          §§goto(addr0142);
                                       }
                                       else
                                       {
                                          §§push(-1);
                                       }
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr0093);
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0081);
            }
            §§goto(addr0073);
         }
         §§goto(addr0093);
      }
      
      private function kill(param1:DisplayObject, param2:TimelineMax, param3:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            RandomUtilities.cleanRemoveChild(param1);
         }
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return this._finishEvent;
      }
   }
}

