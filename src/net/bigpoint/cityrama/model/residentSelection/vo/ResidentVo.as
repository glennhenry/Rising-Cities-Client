package net.bigpoint.cityrama.model.residentSelection.vo
{
   public class ResidentVo
   {
      
      private var _type:String;
      
      private var _buildingLevel:int;
      
      private var _minUserLevel:int;
      
      public function ResidentVo(param1:String, param2:int, param3:int)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            super();
            if(_loc4_ || Boolean(param1))
            {
               this._type = param1;
               if(!_loc5_)
               {
                  this._buildingLevel = param2;
                  if(_loc4_)
                  {
                     this._minUserLevel = param3;
                  }
               }
            }
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get buildingLevel() : int
      {
         return this._buildingLevel;
      }
      
      public function get minUserLevel() : int
      {
         return this._minUserLevel;
      }
   }
}

