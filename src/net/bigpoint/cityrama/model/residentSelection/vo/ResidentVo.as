package net.bigpoint.cityrama.model.residentSelection.vo
{
   public class ResidentVo
   {
      
      private var _type:String;
      
      private var _buildingLevel:int;
      
      private var _minUserLevel:int;
      
      public function ResidentVo(param1:String, param2:int, param3:int)
      {
         super();
         this._type = param1;
         this._buildingLevel = param2;
         this._minUserLevel = param3;
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

