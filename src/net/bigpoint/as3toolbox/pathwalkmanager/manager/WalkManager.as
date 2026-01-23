package net.bigpoint.as3toolbox.pathwalkmanager.manager
{
   import com.greensock.TimelineLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalkerSetter;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.FriendlyWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   
   public class WalkManager
   {
      
      private var _tweenDictionary:Dictionary;
      
      private var _direction:Point;
      
      private var _substract:Point;
      
      private var _started:Boolean;
      
      public function WalkManager()
      {
         super();
         this._tweenDictionary = new Dictionary(true);
         this._direction = new Point(0,0);
         this._substract = new Point(0,0);
      }
      
      public function startWalk() : void
      {
         var _loc3_:SimpleWalker = null;
         this._started = true;
         var _loc2_:Number = PathWalkManager.instance.terrain.tileSize;
         for each(_loc3_ in PathWalkManager.instance.walkerContainer.walkers)
         {
            this.runPath(_loc3_);
         }
      }
      
      private function handlePathComplete(param1:IWalkerSetter) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         param1.pathComplete();
         this.destructor(_loc2_,param1);
      }
      
      private function handleCellChanged(param1:SimpleWalker, param2:int, param3:int, param4:int, param5:int) : void
      {
         param1.currentCell.x = param2;
         param1.currentCell.y = param3;
         param1.nextCell.x = param4;
         param1.nextCell.y = param5;
         this._direction.x = param4;
         this._direction.y = param5;
         this._substract.x = param2;
         this._substract.y = param3;
         this._direction = this._direction.subtract(this._substract);
         if(param1.currentDirection)
         {
            if(this._direction.x != param1.currentDirection.x || this._direction.y != param1.currentDirection.y)
            {
               param1.currentDirection = this._direction;
            }
         }
         else
         {
            param1.currentDirection = this._direction;
         }
         param1.cellChanged();
      }
      
      public function stopWalk() : void
      {
         var _loc1_:Object = null;
         this._started = false;
         for(_loc1_ in this._tweenDictionary)
         {
            this.stopWalker(_loc1_ as IWalker);
         }
      }
      
      public function stopWalker(param1:IWalker) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         this.destructor(_loc2_,param1);
      }
      
      public function pauseWalker(param1:IWalker) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         _loc2_.pause();
         param1.pausePath();
      }
      
      public function resumeWalker(param1:IWalker) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         _loc2_.resume();
         param1.resumePath();
      }
      
      public function get tweenDictionary() : Dictionary
      {
         return this._tweenDictionary;
      }
      
      public function get started() : Boolean
      {
         return this._started;
      }
      
      private function destructor(param1:TimelineLite, param2:IWalker) : void
      {
         if(Boolean(param1) && Boolean(param2))
         {
            param2.removeEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
            param2.removeEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
            param1.killTweensOf(param2);
            TweenMax.killTweensOf(param2);
            this._tweenDictionary[param2] = null;
            delete this._tweenDictionary[param2];
            param1.kill();
            param1 = null;
         }
      }
      
      public function runPath(param1:IWalker) : void
      {
         var _loc2_:TimelineLite = null;
         if(!param1.path)
         {
            return;
         }
         if(param1.path.length <= 1)
         {
            return;
         }
         var _loc3_:Number = PathWalkManager.instance.terrain.tileSize;
         _loc2_ = new TimelineLite({
            "onComplete":this.handlePathComplete,
            "onCompleteParams":[param1],
            "roundProps":true
         });
         var _loc4_:Number = _loc3_ / param1.speed;
         while(param1.path.length - 1)
         {
            _loc2_.append(this.getSingleTileAnimation(param1,_loc4_,_loc3_));
            param1.path.shift();
         }
         param1.path.shift();
         param1.addEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
         param1.addEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
         this._tweenDictionary[param1] = _loc2_;
         _loc2_.play();
         if(param1.paused)
         {
            _loc2_.pause();
         }
      }
      
      private function handlePathPaused(param1:PathEvent) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1.target];
         _loc2_.pause();
      }
      
      private function handlePathResumed(param1:PathEvent) : void
      {
         var _loc2_:TimelineLite = this._tweenDictionary[param1.target];
         _loc2_.resume();
      }
      
      private function getSingleTileAnimation(param1:IWalker, param2:Number, param3:int) : TweenMax
      {
         var _loc4_:Object = {
            "x":param1.path[0].x * param3,
            "y":param1.path[0].y * param3,
            "ease":Linear.easeNone
         };
         var _loc5_:Object = {
            "x":param1.path[1].x * param3,
            "y":param1.path[1].y * param3,
            "ease":Linear.easeNone,
            "onStart":this.handleCellChanged,
            "onStartParams":[param1,param1.path[0].x,param1.path[0].y,param1.path[1].x,param1.path[1].y]
         };
         if(param1 is FriendlyWalker)
         {
            _loc5_.onUpdate = (param1 as FriendlyWalker).cellUpdate;
         }
         return TweenMax.fromTo(param1,param2,_loc4_,_loc5_);
      }
   }
}

