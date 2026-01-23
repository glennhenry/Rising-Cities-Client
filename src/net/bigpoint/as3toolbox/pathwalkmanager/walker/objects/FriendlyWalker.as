package net.bigpoint.as3toolbox.pathwalkmanager.walker.objects
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   
   public class FriendlyWalker extends SimpleWalker
   {
      
      private var _friends:Vector.<Class>;
      
      private var _friendsMet:Vector.<IWalker>;
      
      public function FriendlyWalker(param1:String, param2:String)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            if(_loc4_ || _loc3_)
            {
               this._friends = new Vector.<Class>();
               if(!(_loc3_ && Boolean(param2)))
               {
                  addr0065:
                  this._friendsMet = new Vector.<IWalker>();
               }
               return;
            }
         }
         §§goto(addr0065);
      }
      
      public function get friends() : Vector.<Class>
      {
         return this._friends;
      }
      
      public function get friendsMetList() : Vector.<IWalker>
      {
         return this._friendsMet;
      }
      
      override public function cellChanged() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._friendsMet.length)
            {
               if(_loc1_ || Boolean(this))
               {
                  super.cellChanged();
               }
               break;
            }
            this._friendsMet.pop();
         }
         while(_loc1_ || Boolean(this));
         
      }
      
      override public function cellUpdate() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IWalker = null;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            if(!this.friends.length)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         var _loc3_:* = PathWalkManager.instance.walkerContainer.walkers;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               continue;
            }
            §§push(_loc1_.currentCell);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(§§pop().x);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(§§pop() == this.currentCell.x);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(!§§pop());
                     if(_loc4_ || Boolean(this))
                     {
                        var _temp_8:* = §§pop();
                        §§push(_temp_8);
                        if(!_temp_8)
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(!(_loc4_ || Boolean(this)))
                              {
                                 continue;
                              }
                              addr00de:
                              addr00dc:
                              §§push(_loc1_.currentCell.y == this.currentCell.y);
                              if(_loc4_ || _loc3_)
                              {
                                 addr00f3:
                                 §§push(!§§pop());
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           continue;
                        }
                        addr0172:
                        this._friendsMet.push(_loc1_);
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                     else if(this.friends.indexOf(getDefinitionByName(getQualifiedClassName(_loc1_))) == -1)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr0172);
                     }
                     else if(_loc1_ === this)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr0172);
                     }
                     else
                     {
                        if(this._friendsMet.indexOf(_loc1_) != -1)
                        {
                           continue;
                        }
                        if(_loc4_ || Boolean(this))
                        {
                           §§goto(addr0172);
                        }
                     }
                     this.friendMet();
                     continue;
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr00de);
            }
            §§goto(addr00dc);
         }
      }
      
      public function friendMet() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            dispatchEvent(new PathEvent(PathEvent.FRIEND_FOUND));
         }
      }
   }
}

