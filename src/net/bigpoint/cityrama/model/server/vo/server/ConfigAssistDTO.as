package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigAssistDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _connectedPhaseId:Number;
      
      private var _lifetime:Number;
      
      private var _locaId:String;
      
      private var _gfxId:Number;
      
      private var _behaviourOutput:int;
      
      public function ConfigAssistDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._type = param1.t;
         this._connectedPhaseId = param1.pId;
         this._lifetime = param1.l;
         this._locaId = param1.lo;
         this._gfxId = param1.gf;
         this._behaviourOutput = param1.o;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get behaviourOutput() : int
      {
         return this._behaviourOutput;
      }
      
      public function get connectedPhaseId() : Number
      {
         return this._connectedPhaseId;
      }
   }
}

