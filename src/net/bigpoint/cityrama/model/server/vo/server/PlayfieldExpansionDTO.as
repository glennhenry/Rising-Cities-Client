package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class PlayfieldExpansionDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      public function PlayfieldExpansionDTO(param1:Object)
      {
         super();
         this._id = param1.pid;
         this._configId = param1.cpe;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
   }
}

