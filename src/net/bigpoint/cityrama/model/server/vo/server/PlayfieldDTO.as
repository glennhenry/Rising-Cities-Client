package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   import mx.logging.LogEventLevel;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class PlayfieldDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _sizeX:Number;
      
      private var _sizeY:Number;
      
      private var _startX:Number;
      
      private var _startY:Number;
      
      private var _buildings:Vector.<BuildingDTO>;
      
      private var _decorations:Vector.<DecorationVo>;
      
      private var _boulders:Vector.<BoulderVo>;
      
      private var _grounds:Vector.<GroundDTO>;
      
      private var _resources:Dictionary;
      
      private var _expansions:Vector.<ExpansionFieldObjectVo>;
      
      private var _expansionsBuyable:Vector.<ExpansionFieldObjectVo>;
      
      private var _buffs:Vector.<PhaseDTO>;
      
      private var _config:ConfigPlayfieldDTO;
      
      public function PlayfieldDTO(param1:Object, param2:ConfigPlayfieldDTO, param3:Vector.<BuildingDTO>, param4:Vector.<DecorationVo>, param5:Vector.<GroundDTO>)
      {
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:ExpansionFieldObjectVo = null;
         var _loc10_:ResourceDTO = null;
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._sizeX = param1.x;
         this._sizeY = param1.y;
         this._startX = param1.sx;
         this._startY = param1.sy;
         this._buildings = param3;
         this._decorations = param4;
         this._grounds = param5;
         this._config = param2;
         this._expansions = new Vector.<ExpansionFieldObjectVo>();
         for each(_loc6_ in param1.pe)
         {
            _loc9_ = new ExpansionFieldObjectVo(null,_loc6_);
            _loc9_.log(LogEventLevel.WARN,1);
            this._expansions.push(_loc9_);
         }
         this._boulders = new Vector.<BoulderVo>();
         for each(_loc6_ in param1.bo)
         {
            this._boulders.push(ConfigFactory.buildBoulderVo(_loc6_));
         }
         this._resources = new Dictionary();
         for each(_loc7_ in param1.r)
         {
            _loc10_ = ConfigFactory.buildResourceDTO(_loc7_);
            this._resources[_loc10_.configId] = _loc10_;
         }
         this._buffs = new Vector.<PhaseDTO>();
         for each(_loc8_ in param1.bg)
         {
            this._buffs.push(new PhaseDTO(_loc8_,null));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get sizeX() : Number
      {
         return this._sizeX;
      }
      
      public function set sizeX(param1:Number) : void
      {
         this._sizeX = param1;
      }
      
      public function get sizeY() : Number
      {
         return this._sizeY;
      }
      
      public function set sizeY(param1:Number) : void
      {
         this._sizeY = param1;
      }
      
      public function get buildings() : Vector.<BuildingDTO>
      {
         return this._buildings;
      }
      
      public function set buildings(param1:Vector.<BuildingDTO>) : void
      {
         this._buildings = param1;
      }
      
      public function get boulders() : Vector.<BoulderVo>
      {
         return this._boulders;
      }
      
      public function set boulders(param1:Vector.<BoulderVo>) : void
      {
         this._boulders = param1;
      }
      
      public function get grounds() : Vector.<GroundDTO>
      {
         return this._grounds;
      }
      
      public function set grounds(param1:Vector.<GroundDTO>) : void
      {
         this._grounds = param1;
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         this._resources = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get startX() : Number
      {
         return this._startX;
      }
      
      public function set startX(param1:Number) : void
      {
         this._startX = param1;
      }
      
      public function get startY() : Number
      {
         return this._startY;
      }
      
      public function set startY(param1:Number) : void
      {
         this._startY = param1;
      }
      
      public function get decorations() : Vector.<DecorationVo>
      {
         return this._decorations;
      }
      
      public function set decorations(param1:Vector.<DecorationVo>) : void
      {
         this._decorations = param1;
      }
      
      public function get expansions() : Vector.<ExpansionFieldObjectVo>
      {
         return this._expansions;
      }
      
      public function get expansionsBuyable() : Vector.<ExpansionFieldObjectVo>
      {
         return this._expansionsBuyable;
      }
      
      public function set expansionsBuyable(param1:Vector.<ExpansionFieldObjectVo>) : void
      {
         this._expansionsBuyable = param1;
      }
      
      public function get buffs() : Vector.<PhaseDTO>
      {
         return this._buffs;
      }
      
      public function get config() : ConfigPlayfieldDTO
      {
         return this._config;
      }
   }
}

