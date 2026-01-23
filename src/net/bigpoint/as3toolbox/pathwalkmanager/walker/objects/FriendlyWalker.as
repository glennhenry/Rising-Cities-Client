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
         super(param1,param2);
         this._friends = new Vector.<Class>();
         this._friendsMet = new Vector.<IWalker>();
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
         while(this._friendsMet.length)
         {
            this._friendsMet.pop();
         }
         super.cellChanged();
      }
      
      override public function cellUpdate() : void
      {
         var _loc1_:IWalker = null;
         if(!this.friends.length)
         {
            return;
         }
         for each(_loc1_ in PathWalkManager.instance.walkerContainer.walkers)
         {
            if(!(_loc1_.currentCell.x != this.currentCell.x || _loc1_.currentCell.y != this.currentCell.y))
            {
               if(this.friends.indexOf(getDefinitionByName(getQualifiedClassName(_loc1_))) != -1)
               {
                  if(_loc1_ !== this)
                  {
                     if(this._friendsMet.indexOf(_loc1_) == -1)
                     {
                        this._friendsMet.push(_loc1_);
                        this.friendMet();
                     }
                  }
               }
            }
         }
      }
      
      public function friendMet() : void
      {
         dispatchEvent(new PathEvent(PathEvent.FRIEND_FOUND));
      }
   }
}

