package net.bigpoint.as3toolbox.pathwalkmanager.walker.objects
{
   import com.baseoneonline.flash.geom.IntPoint;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   
   public class StaticWalker extends SimpleWalker
   {
      
      public function StaticWalker(param1:String, param2:String)
      {
         super(param1,param2);
      }
      
      override public function set path(param1:Vector.<IntPoint>) : void
      {
         this.pathFound();
      }
      
      override public function pathFound() : void
      {
         this.x = this.waypoints[0].x * PathWalkManager.instance.terrain.tileSize;
         this.y = this.waypoints[0].y * PathWalkManager.instance.terrain.tileSize;
         currentCell = this.waypoints[0];
         nextCell = this.waypoints[0];
         while(this.waypoints.length)
         {
            this.waypoints.pop();
         }
         super.pathFound();
      }
      
      override public function pathComplete() : void
      {
      }
   }
}

