package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.geom.Point;
   
   public class ConfigGroundRestrictionShapePointDTO extends Point
   {
      
      private var _id:Number;
      
      private var _shapePosition:Number;
      
      public function ConfigGroundRestrictionShapePointDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._shapePosition = param1.o;
         super.x = param1.x;
         super.y = param1.y;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get shapePosition() : Number
      {
         return this._shapePosition;
      }
   }
}

