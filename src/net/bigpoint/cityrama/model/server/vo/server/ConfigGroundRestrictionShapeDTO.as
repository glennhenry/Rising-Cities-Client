package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigGroundRestrictionShapeDTO
   {
      
      private var _id:Number;
      
      private var _shapePoints:Vector.<ConfigGroundRestrictionShapePointDTO>;
      
      public function ConfigGroundRestrictionShapeDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(!_loc5_)
         {
            super();
            if(!_loc5_)
            {
               addr0029:
               this._id = param1.id;
               if(!_loc5_)
               {
                  this._shapePoints = new Vector.<ConfigGroundRestrictionShapePointDTO>();
               }
            }
            for each(_loc2_ in param1.p)
            {
               if(_loc6_)
               {
                  this._shapePoints.push(new ConfigGroundRestrictionShapePointDTO(_loc2_));
               }
            }
            return;
         }
         §§goto(addr0029);
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

