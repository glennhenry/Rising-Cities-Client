package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldExpansionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldExpansionDTO;
   import net.bigpoint.cityrama.view.field.ground.ui.components.BgPrimitive;
   
   public class ExpansionFieldObjectVo extends BillboardObjectVo implements ILoggableObject
   {
      
      private var _dimensions:Cuboid;
      
      private var _gfxId:int;
      
      private var _localeId:int;
      
      private var _configOrigin:ConfigPlayfieldExpansionDTO;
      
      private var _origin:PlayfieldExpansionDTO;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      private var _id:Number;
      
      private var _id_conf:Number;
      
      private var _locked:Boolean;
      
      private var _matrixCoordinates:Rectangle = new Rectangle(0,0,0,0);
      
      private var _rollOverRect:BgPrimitive;
      
      private var _temporaryAdded:Vector.<IGameObjectVo>;
      
      public function ExpansionFieldObjectVo(param1:ConfigPlayfieldItemDTO, param2:Object = null, param3:Boolean = false)
      {
         super(param1);
         this._config = param1;
         if(param2 != null)
         {
            this._locked = param3;
            this._dimensions = new Cuboid();
            this._origin = new PlayfieldExpansionDTO(param2);
            this._id = this._origin.id;
            this._id_conf = this._origin.configId;
            var _loc4_:GameConfigProxy = GameConfigProxy(ApplicationFacade.getInstance().retrieveProxy(GameConfigProxy.NAME));
            this._configOrigin = null.config.playfieldsExpansions[this._id_conf];
            this._matrixCoordinates.x = this._dimensions.x = this._configOrigin.px;
            this._matrixCoordinates.y = this._dimensions.y = this._configOrigin.py;
            this._dimensions.z = 1;
            this._matrixCoordinates.width = this._dimensions.width = this._configOrigin.sx;
            this._matrixCoordinates.height = this._dimensions.height = this._configOrigin.sy;
            super.matrix3dCoordinates = this._dimensions;
            this._gfxId = this._configOrigin.gfx;
            this.provideConfigPlayfieldItemVO(param3);
         }
         this._config.virtualObjectOverride = ServerTagConstants.VIRTUAL_EXPANSION;
         this._temporaryAdded = new Vector.<IGameObjectVo>();
      }
      
      private function provideConfigPlayfieldItemVO(param1:Boolean) : void
      {
         this._config = new ConfigPlayfieldItemDTO();
         this._config.id = this._configOrigin.id;
         this._config.gfxId = this._configOrigin.gfx;
         this._config.sizeX = this._configOrigin.sx;
         this._config.sizeY = this._configOrigin.sy;
         this._config.preload = this._configOrigin.preload;
         this._config.destroyable = false;
         this._config.animatedSwfPath = "swf/expansion/expansions.swf";
         this._config.animatedSwfName = "PlayfieldExpansions";
         if(param1)
         {
            this._config.animatedSwfName = "PlayfieldExpansionsLocked";
         }
      }
      
      public function get dimensions() : Cuboid
      {
         return this._dimensions;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : int
      {
         return this._localeId;
      }
      
      public function get id_conf() : Number
      {
         return this._id_conf;
      }
      
      public function set id_conf(param1:Number) : void
      {
         this._id_conf = param1;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get configOrigin() : ConfigPlayfieldExpansionDTO
      {
         return this._configOrigin;
      }
      
      public function set configOrigin(param1:ConfigPlayfieldExpansionDTO) : void
      {
         this._configOrigin = param1;
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         this._config = param1;
      }
      
      public function get origin() : PlayfieldExpansionDTO
      {
         return this._origin;
      }
      
      public function set origin(param1:PlayfieldExpansionDTO) : void
      {
         this._origin = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      override public function get configPlayfieldItemVo() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      override public function set configPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : void
      {
         this._config = param1;
      }
      
      override public function get matrix3dCoordinates() : Cuboid
      {
         return this._dimensions;
      }
      
      override public function set matrix3dCoordinates(param1:Cuboid) : void
      {
         this._dimensions = param1;
      }
      
      override public function get matrixCoordinates() : Rectangle
      {
         return this._matrixCoordinates;
      }
      
      override public function set matrixCoordinates(param1:Rectangle) : void
      {
         this._matrixCoordinates = param1;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get rollOverRect() : BgPrimitive
      {
         return this._rollOverRect;
      }
      
      public function set rollOverRect(param1:BgPrimitive) : void
      {
         this._rollOverRect = param1;
      }
      
      public function get temporaryAdded() : Vector.<IGameObjectVo>
      {
         return this._temporaryAdded;
      }
   }
}

