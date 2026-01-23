package net.bigpoint.cityrama.model.urbies
{
   import flash.events.Event;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.walkers.FriendlyRisy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PathWalkProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PathWalkProxy";
      
      private var _allPaused:Boolean = false;
      
      private const ADDITIONAL_CITIZEN_MAX_SPAWNAMOUNT:int = 50;
      
      public function PathWalkProxy()
      {
         super(NAME,PathWalkManager.instance);
      }
      
      override public function onRegister() : void
      {
         var _loc5_:int = 0;
         var _loc1_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this.pathwalkManager.terrain.tileSize = _loc1_.tileSize;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.config.maxY)
         {
            _loc2_[_loc3_] = [];
            _loc5_ = 0;
            while(_loc5_ < _loc1_.config.maxX)
            {
               _loc2_[_loc3_][_loc5_] = 0;
               _loc5_++;
            }
            _loc3_++;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         _loc4_.push("");
         _loc4_.push("walkable");
         _loc4_.push("driveable");
         _loc4_.push(Terrain.TYPE_ALL_TERRAINS);
         this.pathwalkManager.terrain.setMatrix(_loc2_,_loc4_);
         this.pathwalkManager.walkman.startWalk();
      }
      
      public function get pathwalkManager() : PathWalkManager
      {
         return super.data as PathWalkManager;
      }
      
      public function get allPaused() : Boolean
      {
         return this._allPaused;
      }
      
      public function set allPaused(param1:Boolean) : void
      {
         this._allPaused = param1;
      }
      
      public function addWalker(param1:IWalker) : Boolean
      {
         if(this.pathwalkManager.walkerContainer.walkers.length + 1 <= this.ADDITIONAL_CITIZEN_MAX_SPAWNAMOUNT)
         {
            this.setupListener(param1);
            this.pathwalkManager.walkerContainer.addWalker(param1);
            return true;
         }
         param1 = null;
         return false;
      }
      
      public function setupListener(param1:IWalker) : void
      {
         param1.addEventListener(PathEvent.DIRECTION_CHANGED,this.handleDirectionChanged,false,0,true);
         param1.addEventListener(PathEvent.FRIEND_FOUND,this.handleFriendFound,false,0,true);
         param1.addEventListener(PathEvent.PATH_COMPLETE,this.handlePathComplete,false,0,true);
         param1.addEventListener(PathEvent.PATH_FOUND,this.handlePathFound,false,0,true);
         param1.addEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible,false,0,true);
         param1.addEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused,false,0,true);
         param1.addEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed,false,0,true);
      }
      
      public function removeListener(param1:IWalker) : void
      {
         param1.removeEventListener(PathEvent.DIRECTION_CHANGED,this.handleDirectionChanged);
         param1.removeEventListener(PathEvent.FRIEND_FOUND,this.handleFriendFound);
         param1.removeEventListener(PathEvent.PATH_COMPLETE,this.handlePathComplete);
         param1.removeEventListener(PathEvent.PATH_FOUND,this.handlePathFound);
         param1.removeEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible);
         param1.removeEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
         param1.removeEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
      }
      
      public function handleFriendLeft(param1:IWalker) : void
      {
         param1.removeEventListener(FriendlyRisy.CELL_CHANGED,this.handleCellChanged);
      }
      
      public function handleFriendMet(param1:IWalker) : void
      {
         if(param1 is FriendlyRisy)
         {
            param1.addEventListener(FriendlyRisy.CELL_CHANGED,this.handleCellChanged,false,0,true);
         }
      }
      
      private function handleDirectionChanged(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_DIRECTION_CHANGED,_loc2_);
      }
      
      private function handleFriendFound(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_FRIEND_FOUND,_loc2_);
      }
      
      private function handlePathComplete(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_PATH_COMPLETE,_loc2_);
      }
      
      private function handlePathFound(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_PATH_FOUND,_loc2_);
      }
      
      private function handlePathNotPossible(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_PATH_NOT_POSSIBLE,_loc2_);
      }
      
      private function handlePathPaused(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_PATH_PAUSED,_loc2_);
      }
      
      private function handlePathResumed(param1:PathEvent) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_PATH_RESUMED,_loc2_);
      }
      
      private function handleCellChanged(param1:Event) : void
      {
         var _loc2_:IWalker = param1.target as IWalker;
         facade.sendNotification(CitizenConstants.WALKER_CELL_CHANGED,_loc2_);
      }
   }
}

