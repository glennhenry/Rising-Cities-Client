package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.geom.Point;
   
   public class ConfigGroundRestrictionShapePointDTO extends Point
   {
      
      private var _id:Number;
      
      private var _shapePosition:Number;
      
      public function ConfigGroundRestrictionShapePointDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this._id = param1.id;
               if(_loc2_)
               {
                  addr0054:
                  this._shapePosition = param1.o;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr0078);
               }
               addr006b:
               super.x = param1.x;
               if(_loc2_)
               {
                  addr0078:
                  super.y = param1.y;
               }
               §§goto(addr0080);
            }
            §§goto(addr0054);
         }
         addr0080:
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

