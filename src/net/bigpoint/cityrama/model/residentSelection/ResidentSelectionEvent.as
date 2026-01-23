package net.bigpoint.cityrama.model.residentSelection
{
   import net.bigpoint.event.SimpleEvent;
   
   public class ResidentSelectionEvent extends SimpleEvent
   {
      
      public static const OPEN_FEATURE_NEEDS:String = "OPEN_FEATURE_NEEDS";
      
      public static const OPEN_FEATURE_UPGRADE:String = "OPEN_FEATURE_UPGRADE";
      
      public static var RESIDENT_SELECTED:String = "RESIDENT_SELECTED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         OPEN_FEATURE_NEEDS = "OPEN_FEATURE_NEEDS";
         if(_loc1_ || ResidentSelectionEvent)
         {
            OPEN_FEATURE_UPGRADE = "OPEN_FEATURE_UPGRADE";
            if(!_loc2_)
            {
               addr0043:
               RESIDENT_SELECTED = "RESIDENT_SELECTED";
            }
         }
         return;
      }
      §§goto(addr0043);
      
      private var _residentType:String;
      
      public function ResidentSelectionEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(this)))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get residentType() : String
      {
         return this._residentType;
      }
      
      public function set residentType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._residentType = param1;
         }
      }
   }
}

