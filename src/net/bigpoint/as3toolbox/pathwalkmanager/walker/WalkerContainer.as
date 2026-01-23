package net.bigpoint.as3toolbox.pathwalkmanager.walker
{
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   
   public class WalkerContainer
   {
      
      private var _walkers:Vector.<IWalker>;
      
      public function WalkerContainer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               this._walkers = new Vector.<IWalker>();
            }
         }
      }
      
      public function addWalker(param1:IWalker) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._walkers.push(param1);
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0042);
            }
            §§goto(addr006a);
         }
         addr0042:
         param1.path = PathWalkManager.instance.terrain.calculatePath(param1,param1.terrainType);
         if(!_loc3_)
         {
            addr006a:
            §§push(PathWalkManager.instance);
            if(_loc2_)
            {
               §§push(§§pop().walkman);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop().started)
                  {
                     if(_loc2_)
                     {
                        addr009b:
                        PathWalkManager.instance.walkman.runPath(param1);
                        addr0098:
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr009b);
            }
            §§goto(addr0098);
         }
         addr00a0:
      }
      
      public function killWalker(param1:IWalker) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            PathWalkManager.instance.walkman.stopWalker(param1);
         }
         while(this._walkers.indexOf(param1) != -1)
         {
            this._walkers.splice(this._walkers.indexOf(param1),1);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function get walkers() : Vector.<IWalker>
      {
         return this._walkers;
      }
   }
}

