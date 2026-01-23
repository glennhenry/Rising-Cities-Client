package net.bigpoint.as3toolbox.pathwalkmanager.walker.objects
{
   import com.baseoneonline.flash.geom.IntPoint;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   
   public class StaticWalker extends SimpleWalker
   {
      
      public function StaticWalker(param1:String, param2:String)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function set path(param1:Vector.<IntPoint>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.pathFound();
         }
      }
      
      override public function pathFound() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.x = this.waypoints[0].x * PathWalkManager.instance.terrain.tileSize;
            if(_loc2_ || Boolean(this))
            {
               this.y = this.waypoints[0].y * PathWalkManager.instance.terrain.tileSize;
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0070);
               }
            }
            §§goto(addr008c);
         }
         addr0070:
         currentCell = this.waypoints[0];
         if(_loc2_ || _loc2_)
         {
            nextCell = this.waypoints[0];
            addr008c:
         }
         do
         {
            if(!this.waypoints.length)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  break;
               }
               §§goto(addr00d3);
            }
            this.waypoints.pop();
         }
         while(!_loc1_);
         
         super.pathFound();
         addr00d3:
      }
      
      override public function pathComplete() : void
      {
      }
   }
}

