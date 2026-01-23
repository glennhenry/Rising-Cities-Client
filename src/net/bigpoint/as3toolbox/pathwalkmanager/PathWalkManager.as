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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super();
            if(!_loc2_)
            {
               if(param1 == null)
               {
                  if(!_loc2_)
                  {
                     throw new Error("Error: Instantiation failed: Use PathWalkManager.instance instead of new.");
                  }
               }
               else
               {
                  addr0068:
                  this._walkman = new WalkManager();
                  if(_loc3_)
                  {
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0088);
            }
            addr0078:
            this._terrain = new Terrain();
            if(_loc3_)
            {
               addr0088:
               this._walkerContainer = new WalkerContainer();
            }
            return;
         }
         §§goto(addr0068);
      }
      
      public static function get instance() : PathWalkManager
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || PathWalkManager)
         {
            §§push(_instance);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     addr0042:
                     _instance = new PathWalkManager(new SingletonBlocker());
                  }
               }
               return _instance;
            }
         }
         §§goto(addr0042);
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._walkman = new WalkManager();
            if(!_loc1_)
            {
               this._terrain = new Terrain();
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0050:
                  this._walkerContainer = new WalkerContainer();
               }
               §§goto(addr005b);
            }
            §§goto(addr0050);
         }
         addr005b:
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
