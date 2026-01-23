package net.bigpoint.as3toolbox.mapfactory
{
   import flash.events.Event;
   
   public class TileMapEvent extends Event
   {
      
      public static const LOAD_REQUEST:String = "loadRequest";
      
      public var fileKey:String;
      
      public var tiledMapID:int;
      
      public function TileMapEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

