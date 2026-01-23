package net.bigpoint.cityrama.model.miniLayer.vo
{
   import mx.collections.ArrayList;
   
   public class UpgradeMiniLayerVo
   {
      
      public static const BUILDING_COMMERCIAL:String = "BUILDING_COMMERCIAL";
      
      public static const BUILDING_NORMAL:String = "BUILDING_NORMAL";
      
      private var _costs:Number;
      
      private var _affordable:Boolean;
      
      private var _typeOfBuilding:String;
      
      private var _materialList:ArrayList;
      
      public function UpgradeMiniLayerVo()
      {
         super();
      }
      
      public function get costs() : Number
      {
         return this._costs;
      }
      
      public function set costs(param1:Number) : void
      {
         this._costs = param1;
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         this._affordable = param1;
      }
      
      public function get materialList() : ArrayList
      {
         return this._materialList;
      }
      
      public function set materialList(param1:ArrayList) : void
      {
         this._materialList = param1;
      }
      
      public function get typeOfBuilding() : String
      {
         return this._typeOfBuilding;
      }
      
      public function set typeOfBuilding(param1:String) : void
      {
         this._typeOfBuilding = param1;
      }
   }
}

