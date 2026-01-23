package net.bigpoint.cityrama.model.server.vo.server
{
   public class ProfessionalDTO
   {
      
      private var _id:Number;
      
      private var _buildingId:Number;
      
      private var _experience:uint;
      
      private var _lifetime:Number;
      
      private var _configSpecializationId:Number;
      
      private var _attributes:Vector.<ProfessionalAttributeDTO>;
      
      private var _gfxId:String;
      
      private var _gender:int;
      
      private var _name:int;
      
      private var _surname:int;
      
      private var _extendedCount:int;
      
      private var _canLevelUp:Boolean;
      
      private var _configSpecialisation:ConfigProfessionalSpecializationDTO;
      
      private var _possibleSpecialisationIdsByLevelUp:Vector.<Number>;
      
      private var _unspentSkillPoints:int;
      
      private var _traits:Vector.<ProfessionalTraitDTO>;
      
      public function ProfessionalDTO(param1:Object, param2:ConfigProfessionalSpecializationDTO)
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         super();
         this._id = param1.pid;
         this._buildingId = param1.bid;
         this._experience = param1.e;
         this._lifetime = param1.l;
         this._configSpecializationId = param1.csi;
         this._gfxId = param1.gfx;
         this._gender = param1.g;
         this._name = param1.n;
         this._surname = param1.sn;
         this._extendedCount = param1.exc;
         this._attributes = new Vector.<ProfessionalAttributeDTO>();
         for each(_loc3_ in param1.a)
         {
            this._attributes.push(new ProfessionalAttributeDTO(_loc3_));
         }
         this._possibleSpecialisationIdsByLevelUp = new Vector.<Number>();
         for each(_loc4_ in param1.ssi)
         {
            this._possibleSpecialisationIdsByLevelUp.push(_loc4_);
         }
         this._traits = new Vector.<ProfessionalTraitDTO>();
         for each(_loc5_ in param1.t)
         {
            if(_loc5_ != null)
            {
               this._traits.push(new ProfessionalTraitDTO(_loc5_));
            }
         }
         this._canLevelUp = param1.lu;
         this._unspentSkillPoints = param1.usp;
         this._configSpecialisation = param2;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get experience() : uint
      {
         return this._experience;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function updateSpecialisation(param1:ConfigProfessionalSpecializationDTO) : void
      {
         this._configSpecialisation = param1;
         this._configSpecializationId = param1.id;
      }
      
      public function get configSpecializationId() : Number
      {
         return this._configSpecializationId;
      }
      
      public function get attributes() : Vector.<ProfessionalAttributeDTO>
      {
         return this._attributes;
      }
      
      public function get gfxId() : String
      {
         return this._gfxId;
      }
      
      public function get gender() : int
      {
         return this._gender;
      }
      
      public function get name() : int
      {
         return this._name;
      }
      
      public function get surname() : int
      {
         return this._surname;
      }
      
      public function get configSpecialisation() : ConfigProfessionalSpecializationDTO
      {
         return this._configSpecialisation;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function get extendedCount() : int
      {
         return this._extendedCount;
      }
      
      public function get unspentSkillPoints() : int
      {
         return this._unspentSkillPoints;
      }
      
      public function set unspentSkillPoints(param1:int) : void
      {
         this._unspentSkillPoints = param1;
      }
      
      public function set buildingId(param1:Number) : void
      {
         this._buildingId = param1;
      }
      
      public function get possibleSpecialisationIdsByLevelUp() : Vector.<Number>
      {
         return this._possibleSpecialisationIdsByLevelUp;
      }
      
      public function get canLevelUp() : Boolean
      {
         return this._canLevelUp;
      }
      
      public function set canLevelUp(param1:Boolean) : void
      {
         this._canLevelUp = param1;
      }
      
      public function get traits() : Vector.<ProfessionalTraitDTO>
      {
         return this._traits;
      }
   }
}

