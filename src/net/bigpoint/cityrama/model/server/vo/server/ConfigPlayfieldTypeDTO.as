package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigPlayfieldTypeDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      public function ConfigPlayfieldTypeDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               this._id = param1.id;
            }
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._id = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
   }
}

