package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   
   public class AddSkillpointEvent extends Event
   {
      
      public static const ADD:String = "ADD";
      
      private var _attributeType:String;
      
      private var _professionalId:Number;
      
      private var _sendToServerNow:Boolean;
      
      public function AddSkillpointEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get attributeType() : String
      {
         return this._attributeType;
      }
      
      public function set attributeType(param1:String) : void
      {
         this._attributeType = param1;
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function set professionalId(param1:Number) : void
      {
         this._professionalId = param1;
      }
      
      public function get sendToServerNow() : Boolean
      {
         return this._sendToServerNow;
      }
      
      public function set sendToServerNow(param1:Boolean) : void
      {
         this._sendToServerNow = param1;
      }
   }
}

