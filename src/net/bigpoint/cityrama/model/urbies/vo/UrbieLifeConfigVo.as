package net.bigpoint.cityrama.model.urbies.vo
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUrbieLifeConfigVo;
   
   public class UrbieLifeConfigVo implements IUrbieLifeConfigVo
   {
      
      private var _id:String;
      
      private var _spriteSheetID:String;
      
      private var _iteration:int;
      
      private var _sheetPath:String;
      
      private var _texturePath:String;
      
      private var _lightingPath:String;
      
      private var _sheetData:Object;
      
      private var _lightingData:Object;
      
      private var _animationClass:String;
      
      private var _citizenID:String;
      
      private var _requiredBuilding:String;
      
      private var _fps:int;
      
      private var _offset:Point;
      
      private var _rows:int;
      
      private var _columns:int;
      
      private var _frameset:Dictionary;
      
      private var _infinitePath:Boolean = false;
      
      private var _unique:Boolean = false;
      
      private var _spawnEnabled:Boolean = true;
      
      private var _terrain:String;
      
      private var _eventID:int;
      
      private var _pfoTagID:int;
      
      public function UrbieLifeConfigVo()
      {
         super();
         this._frameset = new Dictionary(true);
      }
      
      public function get infinitePath() : Boolean
      {
         return this._infinitePath;
      }
      
      public function set infinitePath(param1:Boolean) : void
      {
         this._infinitePath = param1;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
      }
      
      public function get spriteSheetID() : String
      {
         return this._spriteSheetID;
      }
      
      public function set spriteSheetID(param1:String) : void
      {
         this._spriteSheetID = param1;
      }
      
      public function get animationClass() : String
      {
         return this._animationClass;
      }
      
      public function set animationClass(param1:String) : void
      {
         this._animationClass = param1;
      }
      
      public function get citizenID() : String
      {
         return this._citizenID;
      }
      
      public function set citizenID(param1:String) : void
      {
         this._citizenID = param1;
      }
      
      public function get requiredBuilding() : String
      {
         return this._requiredBuilding;
      }
      
      public function set requiredBuilding(param1:String) : void
      {
         this._requiredBuilding = param1;
      }
      
      public function set fps(param1:int) : void
      {
         this._fps = param1;
      }
      
      public function get fps() : int
      {
         return this._fps;
      }
      
      public function set rows(param1:int) : void
      {
         this._rows = param1;
      }
      
      public function set columns(param1:int) : void
      {
         this._columns = param1;
      }
      
      public function get rows() : int
      {
         return this._rows;
      }
      
      public function get columns() : int
      {
         return this._columns;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
      
      public function get iteration() : int
      {
         return this._iteration;
      }
      
      public function set iteration(param1:int) : void
      {
         this._iteration = param1;
      }
      
      public function get sheetPath() : String
      {
         return this._sheetPath;
      }
      
      public function set sheetPath(param1:String) : void
      {
         this._sheetPath = param1;
      }
      
      public function get texturePath() : String
      {
         return this._texturePath;
      }
      
      public function set texturePath(param1:String) : void
      {
         this._texturePath = param1;
      }
      
      public function get lightingPath() : String
      {
         return this._lightingPath;
      }
      
      public function set lightingPath(param1:String) : void
      {
         this._lightingPath = param1;
      }
      
      public function get sheetData() : Object
      {
         return this._sheetData;
      }
      
      public function set sheetData(param1:Object) : void
      {
         this._sheetData = param1;
      }
      
      public function get lightingData() : Object
      {
         return this._lightingData;
      }
      
      public function set lightingData(param1:Object) : void
      {
         this._lightingData = param1;
      }
      
      public function get frameset() : Dictionary
      {
         return this._frameset;
      }
      
      public function get unique() : Boolean
      {
         return this._unique;
      }
      
      public function set unique(param1:Boolean) : void
      {
         this._unique = param1;
      }
      
      public function get spawnEnabled() : Boolean
      {
         return this._spawnEnabled;
      }
      
      public function set spawnEnabled(param1:Boolean) : void
      {
         this._spawnEnabled = param1;
      }
      
      public function get terrain() : String
      {
         return this._terrain;
      }
      
      public function set terrain(param1:String) : void
      {
         this._terrain = param1;
      }
      
      public function get eventID() : int
      {
         return this._eventID;
      }
      
      public function set eventID(param1:int) : void
      {
         this._eventID = param1;
      }
      
      public function get pfoTagID() : int
      {
         return this._pfoTagID;
      }
      
      public function set pfoTagID(param1:int) : void
      {
         this._pfoTagID = param1;
      }
   }
}

