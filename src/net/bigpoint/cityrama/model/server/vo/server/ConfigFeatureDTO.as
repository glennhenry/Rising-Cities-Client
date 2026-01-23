package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigFeatureDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _requirements:Vector.<ConfigFeatureRequirementDTO>;
      
      public function ConfigFeatureDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._type = param1.type;
         this._requirements = new Vector.<ConfigFeatureRequirementDTO>();
         for each(_loc2_ in param1.rq)
         {
            this._requirements.push(new ConfigFeatureRequirementDTO(_loc2_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get requirements() : Vector.<ConfigFeatureRequirementDTO>
      {
         return this._requirements;
      }
   }
}

