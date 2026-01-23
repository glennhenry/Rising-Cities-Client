package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   
   public class AddSkillpointEvent extends Event
   {
      
      public static const ADD:String = "ADD";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         ADD = "ADD";
      }
      
      private var _attributeType:String;
      
      private var _professionalId:Number;
      
      private var _sendToServerNow:Boolean;
      
      public function AddSkillpointEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get attributeType() : String
      {
         return this._attributeType;
      }
      
      public function set attributeType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._attributeType = param1;
         }
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function set professionalId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._professionalId = param1;
         }
      }
      
      public function get sendToServerNow() : Boolean
      {
         return this._sendToServerNow;
      }
      
      public function set sendToServerNow(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._sendToServerNow = param1;
         }
      }
   }
}

