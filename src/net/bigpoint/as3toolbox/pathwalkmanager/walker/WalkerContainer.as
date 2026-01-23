package net.bigpoint.as3toolbox.pathwalkmanager.walker
{
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   
   public class WalkerContainer
   {
      
      private var _walkers:Vector.<IWalker>;
      
      public function WalkerContainer()
      {
         super();
         this._walkers = new Vector.<IWalker>();
      }
      
      public function addWalker(param1:IWalker) : void
      {
         this._walkers.push(param1);
         param1.path = PathWalkManager.instance.terrain.calculatePath(param1,param1.terrainType);
         if(PathWalkManager.instance.walkman.started)
         {
            PathWalkManager.instance.walkman.runPath(param1);
         }
      }
      
      public function killWalker(param1:IWalker) : void
      {
         PathWalkManager.instance.walkman.stopWalker(param1);
         while(this._walkers.indexOf(param1) != -1)
         {
            this._walkers.splice(this._walkers.indexOf(param1),1);
         }
      }
      
      public function get walkers() : Vector.<IWalker>
      {
         return this._walkers;
      }
   }
}

