package net.bigpoint.as3toolbox.mapfactory
{
   import flash.events.Event;
   
   public class TileMapEvent extends Event
   {
      
      public static const LOAD_REQUEST:String = "loadRequest";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         LOAD_REQUEST = "loadRequest";
      }
      
      public var fileKey:String;
      
      public var tiledMapID:int;
      
      public function TileMapEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2,param3);
         }
      }
   }
}

