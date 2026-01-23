package net.bigpoint.cityrama.view.field.ui.components.strategy
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class DirectionStrategy extends EventDispatcher
   {
      
      private var _exDirection:String = "none";
      
      private var _direction:String = "none";
      
      public function DirectionStrategy()
      {
         super();
      }
      
      public function playDirectionAnimation(param1:Point) : void
      {
         var _loc2_:String = this._exDirection;
         if(param1.x == 1 && param1.y == 0)
         {
            _loc2_ = "north";
         }
         else if(param1.x == 1 && param1.y == 1)
         {
            _loc2_ = "north_east";
         }
         else if(param1.x == 0 && param1.y == 1)
         {
            _loc2_ = "east";
         }
         else if(param1.x == -1 && param1.y == 1)
         {
            _loc2_ = "south_east";
         }
         else if(param1.x == -1 && param1.y == 0)
         {
            _loc2_ = "south";
         }
         else if(param1.x == -1 && param1.y == -1)
         {
            _loc2_ = "south_west";
         }
         else if(param1.x == 0 && param1.y == -1)
         {
            _loc2_ = "west";
         }
         else if(param1.x == 1 && param1.y == -1)
         {
            _loc2_ = "north_west";
         }
         if(_loc2_ != this._exDirection)
         {
            this.applyDirection(_loc2_);
         }
      }
      
      private function applyDirection(param1:String) : void
      {
         this._direction = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get direction() : String
      {
         return this._direction;
      }
   }
}

