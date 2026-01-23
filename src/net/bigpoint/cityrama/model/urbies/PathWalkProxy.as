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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "PathWalkProxy";
      }
      
      private var _allPaused:Boolean = false;
      
      private const ADDITIONAL_CITIZEN_MAX_SPAWNAMOUNT:int = 50;
      
      public function PathWalkProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(NAME,PathWalkManager.instance);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         var _loc1_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(_loc6_ || _loc3_)
         {
            this.pathwalkManager.terrain.tileSize = _loc1_.tileSize;
         }
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(_loc1_.config);
               loop2:
               while(true)
               {
                  §§push(§§pop().maxY);
                  loop3:
                  while(§§pop() < §§pop())
                  {
                     _loc2_[_loc3_] = [];
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(0);
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           _loc5_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           do
                           {
                              §§push(_loc5_);
                           }
                           while(!(_loc7_ && Boolean(_loc2_)));
                           
                           continue loop1;
                           addr00ad:
                        }
                        while(true)
                        {
                           §§push(_loc1_.config);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop().maxX);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 _loc2_[_loc3_][_loc5_] = 0;
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                                 _loc5_++;
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    continue;
                                 }
                              }
                              _loc3_++;
                              if(_loc7_ && Boolean(_loc1_))
                              {
                                 break loop3;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     §§goto(addr00ad);
                  }
                  break;
               }
               break;
            }
            break;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         _loc4_.push("");
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            _loc4_.push("walkable");
            if(_loc6_ || Boolean(this))
            {
               _loc4_.push("driveable");
               if(!_loc7_)
               {
                  _loc4_.push(Terrain.TYPE_ALL_TERRAINS);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr0176:
                     §§push(this.pathwalkManager);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§pop().terrain.setMatrix(_loc2_,_loc4_);
                        if(_loc6_)
                        {
                           addr019d:
                           this.pathwalkManager.walkman.startWalk();
                           addr0199:
                        }
                        return;
                     }
                     §§goto(addr019d);
                  }
               }
            }
            §§goto(addr0199);
         }
         §§goto(addr0176);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._allPaused = param1;
         }
      }
      
      public function addWalker(param1:IWalker) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this.pathwalkManager);
            if(!_loc2_)
            {
               §§push(§§pop().walkerContainer);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop().walkers.length + 1 <= this.ADDITIONAL_CITIZEN_MAX_SPAWNAMOUNT)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.setupListener(param1);
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0087:
                           this.pathwalkManager.walkerContainer.addWalker(param1);
                           addr0084:
                           if(_loc2_ && _loc2_)
                           {
                              §§goto(addr009b);
                           }
                        }
                     }
                     §§goto(addr0099);
                  }
                  addr009b:
                  param1 = null;
                  return false;
               }
               §§goto(addr0087);
            }
            §§goto(addr0084);
         }
         addr0099:
         return true;
      }
      
      public function setupListener(param1:IWalker) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.addEventListener(PathEvent.DIRECTION_CHANGED,this.handleDirectionChanged,false,0,true);
            if(!_loc2_)
            {
               param1.addEventListener(PathEvent.FRIEND_FOUND,this.handleFriendFound,false,0,true);
               if(_loc3_)
               {
                  param1.addEventListener(PathEvent.PATH_COMPLETE,this.handlePathComplete,false,0,true);
                  if(!_loc2_)
                  {
                     §§goto(addr0075);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr008d);
            }
         }
         addr0075:
         param1.addEventListener(PathEvent.PATH_FOUND,this.handlePathFound,false,0,true);
         if(!_loc2_)
         {
            param1.addEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible,false,0,true);
            addr008d:
            if(_loc3_)
            {
               addr00b3:
               param1.addEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused,false,0,true);
               if(!_loc2_)
               {
                  param1.addEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed,false,0,true);
               }
            }
         }
      }
      
      public function removeListener(param1:IWalker) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.removeEventListener(PathEvent.DIRECTION_CHANGED,this.handleDirectionChanged);
            if(_loc3_ || Boolean(param1))
            {
               param1.removeEventListener(PathEvent.FRIEND_FOUND,this.handleFriendFound);
               if(_loc3_ || _loc3_)
               {
                  param1.removeEventListener(PathEvent.PATH_COMPLETE,this.handlePathComplete);
                  if(_loc3_ || _loc2_)
                  {
                     param1.removeEventListener(PathEvent.PATH_FOUND,this.handlePathFound);
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        param1.removeEventListener(PathEvent.PATH_NOT_POSSIBLE,this.handlePathNotPossible);
                        if(!_loc2_)
                        {
                           addr00b2:
                           param1.removeEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
                           if(!_loc2_)
                           {
                              param1.removeEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
                           }
                        }
                        §§goto(addr00d6);
                     }
                  }
                  §§goto(addr00b2);
               }
               addr00d6:
               return;
            }
         }
         §§goto(addr00b2);
      }
      
      public function handleFriendLeft(param1:IWalker) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            param1.removeEventListener(FriendlyRisy.CELL_CHANGED,this.handleCellChanged);
         }
      }
      
      public function handleFriendMet(param1:IWalker) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is FriendlyRisy)
            {
               if(!_loc3_)
               {
                  param1.addEventListener(FriendlyRisy.CELL_CHANGED,this.handleCellChanged,false,0,true);
               }
            }
         }
      }
      
      private function handleDirectionChanged(param1:PathEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(_loc3_)
         {
            facade.sendNotification(CitizenConstants.WALKER_DIRECTION_CHANGED,_loc2_);
         }
      }
      
      private function handleFriendFound(param1:PathEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:IWalker = param1.target as IWalker;
         if(_loc4_)
         {
            facade.sendNotification(CitizenConstants.WALKER_FRIEND_FOUND,_loc2_);
         }
      }
      
      private function handlePathComplete(param1:PathEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(_loc3_)
         {
            facade.sendNotification(CitizenConstants.WALKER_PATH_COMPLETE,_loc2_);
         }
      }
      
      private function handlePathFound(param1:PathEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(!_loc4_)
         {
            facade.sendNotification(CitizenConstants.WALKER_PATH_FOUND,_loc2_);
         }
      }
      
      private function handlePathNotPossible(param1:PathEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(!_loc4_)
         {
            facade.sendNotification(CitizenConstants.WALKER_PATH_NOT_POSSIBLE,_loc2_);
         }
      }
      
      private function handlePathPaused(param1:PathEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:IWalker = param1.target as IWalker;
         if(!_loc3_)
         {
            facade.sendNotification(CitizenConstants.WALKER_PATH_PAUSED,_loc2_);
         }
      }
      
      private function handlePathResumed(param1:PathEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(_loc3_ || Boolean(param1))
         {
            facade.sendNotification(CitizenConstants.WALKER_PATH_RESUMED,_loc2_);
         }
      }
      
      private function handleCellChanged(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IWalker = param1.target as IWalker;
         if(_loc3_)
         {
            facade.sendNotification(CitizenConstants.WALKER_CELL_CHANGED,_loc2_);
         }
      }
   }
}

