package net.bigpoint.cityrama.model.server
{
   public class ConfigProfessionalTraitDTO
   {
      
      private var _id:Number;
      
      private var _value:Number;
      
      private var _localeid:String;
      
      private var _gfxid:int;
      
      public function ConfigProfessionalTraitDTO(param1:Object)
      {
         var obj:Object = param1;
         super();
         with(obj)
         {
            _value = obj.v;
            _id = obj.cpt;
            _localeid = obj.lo;
            _gfxid = obj.gfx;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function get localeid() : String
      {
         return this._localeid;
      }
      
      public function get gfxid() : int
      {
         return this._gfxid;
      }
   }
}

