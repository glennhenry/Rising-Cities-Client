package net.bigpoint.cityrama.view.schoolBook.ui.events
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   
   public class SchoolBookEvent extends Event
   {
      
      public static const SCHOOL_BUY_POINTS:String = "schoolBuyPoints";
      
      public static const SCHOOL_USE_STAT_POINT:String = "schoolUseStatPoint";
      
      public static const SCHOOL_USE_DEXTRO:String = "schoolUseDextro";
      
      public static const SCHOOL_START_EDUCATION:String = "schoolStartEducation";
      
      public static const SCHOOL_BOOST_EDUCATION:String = "schoolBoostEducation";
      
      public static const HIRE_PROFESSIONAL_TO_DEPARTMENT:String = "hireProfessionalToDepartment";
      
      public static const FIRE_PROFESSIONAL:String = "fireProfessional";
      
      public static const SHOW_BUILDING_INFO:String = "SHOW_BUILDING_INFO";
      
      public static const SCHOOL_BUY_DEXTRO:String = "SCHOOL_BUY_DEXTRO";
      
      public var pDTO:ProfessionalDTO;
      
      private var _bid:Number;
      
      private var _infrastructureFieldObject:InfrastructureBuildingFieldObject;
      
      private var _sendToServerNow:Boolean;
      
      private var _educationRunning:Boolean;
      
      public function SchoolBookEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new SchoolBookEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SchoolBookEvent","type","bubbles","cancelable","eventPhase");
      }
      
      public function get bid() : Number
      {
         return this._bid;
      }
      
      public function set bid(param1:Number) : void
      {
         this._bid = param1;
      }
      
      public function get infrastructureFieldObject() : InfrastructureBuildingFieldObject
      {
         return this._infrastructureFieldObject;
      }
      
      public function set infrastructureFieldObject(param1:InfrastructureBuildingFieldObject) : void
      {
         this._infrastructureFieldObject = param1;
      }
      
      public function set sendToServerNow(param1:Boolean) : void
      {
         this._sendToServerNow = param1;
      }
      
      public function get sendToServerNow() : Boolean
      {
         return this._sendToServerNow;
      }
      
      public function get educationRunning() : Boolean
      {
         return this._educationRunning;
      }
      
      public function set educationRunning(param1:Boolean) : void
      {
         this._educationRunning = param1;
      }
   }
}

