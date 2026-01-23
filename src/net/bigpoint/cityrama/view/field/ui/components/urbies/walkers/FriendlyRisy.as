package net.bigpoint.cityrama.view.field.ui.components.urbies.walkers
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.FriendlyWalker;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   
   public class FriendlyRisy extends FriendlyWalker
   {
      
      public static const CELL_CHANGED:String = "CELL_CHANGED";
      
      public var urbiObj:UrbieObject;
      
      public function FriendlyRisy(param1:String, param2:String)
      {
         super(param1,param2);
      }
      
      override public function cellChanged() : void
      {
         super.cellChanged();
         dispatchEvent(new Event(CELL_CHANGED,false,true));
      }
      
      override public function cellUpdate() : void
      {
         var _loc1_:IWalker = null;
         if(!friends.length)
         {
            return;
         }
         var _loc2_:Point = this.getMovingDirection();
         var _loc3_:IntPoint = new IntPoint(Math.floor((this.urbiObj.x + this.urbiObj.width / 2 + _loc2_.x) / PathWalkManager.instance.terrain.tileSize),Math.floor((this.urbiObj.y + this.urbiObj.length / 2 + _loc2_.y) / PathWalkManager.instance.terrain.tileSize));
         for each(_loc1_ in PathWalkManager.instance.walkerContainer.walkers)
         {
            if(friends.indexOf(getDefinitionByName(getQualifiedClassName(_loc1_))) != -1)
            {
               if(_loc1_ !== this)
               {
                  if(!(_loc1_.currentCell.x != _loc3_.x || _loc1_.currentCell.y != _loc3_.y))
                  {
                     if(friendsMetList.indexOf(_loc1_) == -1)
                     {
                        friendsMetList.push(_loc1_);
                        friendMet();
                     }
                  }
               }
            }
         }
      }
      
      private function getMovingDirection() : Point
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(nextCell != null && currentCell != null)
         {
            _loc1_ = currentCell.x - nextCell.x;
            _loc2_ = currentCell.y - nextCell.y;
            return new Point(-18 * _loc1_,-18 * _loc2_);
         }
         return new Point(0,0);
      }
   }
}

