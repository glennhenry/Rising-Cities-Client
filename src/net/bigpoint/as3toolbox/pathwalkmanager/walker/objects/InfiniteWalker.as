package net.bigpoint.as3toolbox.pathwalkmanager.walker.objects
{
   import com.baseoneonline.flash.geom.IntPoint;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   
   public class InfiniteWalker extends SimpleWalker
   {
      
      private var _pathTries:int;
      
      public function InfiniteWalker(param1:String, param2:String)
      {
         super(param1,param2);
         this._pathTries = 0;
         this.addEventListener(PathEvent.PATH_COMPLETE,this.handlePathNotPossible);
         this.addEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible);
      }
      
      override public function pathComplete() : void
      {
         var _loc1_:Vector.<IntPoint> = null;
         if(this._pathTries < 100)
         {
            waypoints.push(this.nextCell);
            waypoints.push(PathWalkManager.instance.terrain.map.usableTiles[this.terrainType][Math.floor(PathWalkManager.instance.terrain.map.usableTiles[this.terrainType].length * Math.random())]);
            _loc1_ = PathWalkManager.instance.terrain.calculatePath(this,this.terrainType);
            if(!_loc1_)
            {
               ++this._pathTries;
               this.handlePathNotPossible(null);
               return;
            }
            if(_loc1_.length < 2)
            {
               ++this._pathTries;
               this.handlePathNotPossible(null);
               return;
            }
            this.path = _loc1_;
            this._pathTries = 0;
            PathWalkManager.instance.walkman.runPath(this);
         }
      }
      
      private function handlePathNotPossible(param1:PathEvent) : void
      {
         this.pathComplete();
      }
   }
}

