package net.bigpoint.as3toolbox.pathwalkmanager
{
   import net.bigpoint.as3toolbox.pathwalkmanager.manager.WalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.WalkerContainer;
   
   public class PathWalkManager
   {
      
      private static var _instance:PathWalkManager;
      
      private var _walkman:WalkManager;
      
      private var _terrain:Terrain;
      
      private var _walkerContainer:WalkerContainer;
      
      public function PathWalkManager(param1:SingletonBlocker)
      {
         super();
         if(param1 == null)
         {
            throw new Error("Error: Instantiation failed: Use PathWalkManager.instance instead of new.");
         }
         this._walkman = new WalkManager();
         this._terrain = new Terrain();
         this._walkerContainer = new WalkerContainer();
      }
      
      public static function get instance() : PathWalkManager
      {
         if(_instance == null)
         {
            _instance = new PathWalkManager(new SingletonBlocker());
         }
         return _instance;
      }
      
      public function get walkerContainer() : WalkerContainer
      {
         return this._walkerContainer;
      }
      
      public function get terrain() : Terrain
      {
         return this._terrain;
      }
      
      public function get walkman() : WalkManager
      {
         return this._walkman;
      }
      
      public function reset() : void
      {
         this._walkman = new WalkManager();
         this._terrain = new Terrain();
         this._walkerContainer = new WalkerContainer();
      }
   }
}

class SingletonBlocker
{
   
   public function SingletonBlocker()
   {
      super();
   }
}
