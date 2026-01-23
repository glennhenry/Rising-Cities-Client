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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._pathTries = 0;
               addr0038:
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr006c);
            }
            addr0059:
            this.addEventListener(PathEvent.PATH_COMPLETE,this.handlePathNotPossible);
            if(!_loc3_)
            {
               addr006c:
               this.addEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible);
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function pathComplete() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Vector.<IntPoint> = null;
         if(!(_loc5_ && _loc3_))
         {
            if(this._pathTries < 100)
            {
               if(_loc4_ || Boolean(this))
               {
                  waypoints.push(this.nextCell);
                  if(!(_loc5_ && _loc2_))
                  {
                     addr0058:
                     waypoints.push(PathWalkManager.instance.terrain.map.usableTiles[this.terrainType][Math.floor(PathWalkManager.instance.terrain.map.usableTiles[this.terrainType].length * Math.random())]);
                  }
                  addr00a3:
                  _loc1_ = PathWalkManager.instance.terrain.calculatePath(this,this.terrainType);
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc1_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           var _temp_6:* = this;
                           var _loc2_:* = this;
                           §§push(_loc2_._pathTries);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              _loc2_._pathTries = _loc3_;
                           }
                           if(!(_loc5_ && Boolean(this)))
                           {
                              this.handlePathNotPossible(null);
                              if(_loc5_ && _loc3_)
                              {
                                 addr0177:
                                 this.handlePathNotPossible(null);
                                 if(_loc4_)
                                 {
                                    §§goto(addr0183);
                                 }
                                 else
                                 {
                                    §§goto(addr01a9);
                                 }
                              }
                           }
                           return;
                        }
                        this.path = _loc1_;
                        addr018a:
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           addr01a9:
                           this._pathTries = 0;
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              addr01bd:
                              PathWalkManager.instance.walkman.runPath(this);
                           }
                           §§goto(addr01cb);
                        }
                        §§goto(addr01bd);
                     }
                     else if(_loc1_.length < 2)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc2_ = this;
                           §§push(_loc2_._pathTries);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc3_ = §§pop();
                           if(_loc4_)
                           {
                              _loc2_._pathTries = _loc3_;
                           }
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§goto(addr0177);
                           }
                           addr0183:
                           return;
                        }
                        §§goto(addr01cb);
                     }
                     else
                     {
                        §§goto(addr018a);
                     }
                     §§goto(addr018a);
                  }
                  §§goto(addr01bd);
               }
               §§goto(addr0058);
            }
            addr01cb:
            return;
         }
         §§goto(addr00a3);
      }
      
      private function handlePathNotPossible(param1:PathEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.pathComplete();
         }
      }
   }
}

