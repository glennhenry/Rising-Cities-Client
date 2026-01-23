package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigGroundRestrictionShapeDTO
   {
      
      private var _id:Number;
      
      private var _shapePoints:Vector.<ConfigGroundRestrictionShapePointDTO>;
      
      public function ConfigGroundRestrictionShapeDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._shapePoints = new Vector.<ConfigGroundRestrictionShapePointDTO>();
         for each(_loc2_ in param1.p)
         {
            this._shapePoints.push(new ConfigGroundRestrictionShapePointDTO(_loc2_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get shapePoints() : Vector.<ConfigGroundRestrictionShapePointDTO>
      {
         return this._shapePoints;
      }
   }
}

