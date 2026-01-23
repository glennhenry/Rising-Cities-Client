package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public interface IUrbieLifeConfigVo
   {
      
      function get spriteSheetID() : String;
      
      function set spriteSheetID(param1:String) : void;
      
      function get animationClass() : String;
      
      function set animationClass(param1:String) : void;
      
      function get id() : String;
      
      function set id(param1:String) : void;
      
      function get citizenID() : String;
      
      function set citizenID(param1:String) : void;
      
      function get requiredBuilding() : String;
      
      function set requiredBuilding(param1:String) : void;
      
      function set fps(param1:int) : void;
      
      function get fps() : int;
      
      function set rows(param1:int) : void;
      
      function set columns(param1:int) : void;
      
      function get rows() : int;
      
      function get columns() : int;
      
      function get iteration() : int;
      
      function set iteration(param1:int) : void;
      
      function get offset() : Point;
      
      function set offset(param1:Point) : void;
      
      function get sheetPath() : String;
      
      function set sheetPath(param1:String) : void;
      
      function get texturePath() : String;
      
      function set texturePath(param1:String) : void;
      
      function get lightingPath() : String;
      
      function set lightingPath(param1:String) : void;
      
      function get sheetData() : Object;
      
      function set sheetData(param1:Object) : void;
      
      function get lightingData() : Object;
      
      function set lightingData(param1:Object) : void;
      
      function get frameset() : Dictionary;
      
      function get infinitePath() : Boolean;
      
      function set infinitePath(param1:Boolean) : void;
      
      function get unique() : Boolean;
      
      function set unique(param1:Boolean) : void;
      
      function get spawnEnabled() : Boolean;
      
      function set spawnEnabled(param1:Boolean) : void;
      
      function get terrain() : String;
      
      function set terrain(param1:String) : void;
   }
}

