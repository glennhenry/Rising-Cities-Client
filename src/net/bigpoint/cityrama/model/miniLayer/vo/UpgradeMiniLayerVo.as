package net.bigpoint.cityrama.model.miniLayer.vo
{
   import mx.collections.ArrayList;
   
   public class UpgradeMiniLayerVo
   {
      
      public static const BUILDING_COMMERCIAL:String = "BUILDING_COMMERCIAL";
      
      public static const BUILDING_NORMAL:String = "BUILDING_NORMAL";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         BUILDING_COMMERCIAL = "BUILDING_COMMERCIAL";
         if(!_loc1_)
         {
            BUILDING_NORMAL = "BUILDING_NORMAL";
         }
      }
      
      private var _costs:Number;
      
      private var _affordable:Boolean;
      
      private var _typeOfBuilding:String;
      
      private var _materialList:ArrayList;
      
      public function UpgradeMiniLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function get costs() : Number
      {
         return this._costs;
      }
      
      public function set costs(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._costs = param1;
         }
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._affordable = param1;
         }
      }
      
      public function get materialList() : ArrayList
      {
         return this._materialList;
      }
      
      public function set materialList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._materialList = param1;
         }
      }
      
      public function get typeOfBuilding() : String
      {
         return this._typeOfBuilding;
      }
      
      public function set typeOfBuilding(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._typeOfBuilding = param1;
         }
      }
   }
}

