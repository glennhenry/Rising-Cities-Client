package net.bigpoint.cityrama.model.residentSelection
{
   import net.bigpoint.event.SimpleEvent;
   
   public class ResidentSelectionEvent extends SimpleEvent
   {
      
      public static const OPEN_FEATURE_NEEDS:String = "OPEN_FEATURE_NEEDS";
      
      public static const OPEN_FEATURE_UPGRADE:String = "OPEN_FEATURE_UPGRADE";
      
      public static var RESIDENT_SELECTED:String = "RESIDENT_SELECTED";
      
      private var _residentType:String;
      
      public function ResidentSelectionEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get residentType() : String
      {
         return this._residentType;
      }
      
      public function set residentType(param1:String) : void
      {
         this._residentType = param1;
      }
   }
}

