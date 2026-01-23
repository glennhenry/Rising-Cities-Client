package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class BoulderVo implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _currentOutput:Vector.<ConfigOutputDTO>;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      private var _boulderDTO:BoulderDTO;
      
      public function BoulderVo(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         super();
         this._boulderDTO = new BoulderDTO(param1,param2);
         this._id = this._boulderDTO.id;
         this._configId = this._boulderDTO.configId;
         this._posX = this._boulderDTO.posX;
         this._posY = this._boulderDTO.posY;
         this._created = this._boulderDTO.created;
         this._currentOutput = this._boulderDTO.currentOutput;
         this._activePhases = this._boulderDTO.activePhases;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         this._posY = param1;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         this._posX = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         this._created = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get currentOutput() : Vector.<ConfigOutputDTO>
      {
         return this._currentOutput;
      }
      
      public function set currentOutput(param1:Vector.<ConfigOutputDTO>) : void
      {
         this._currentOutput = param1;
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._activePhases;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         this._activePhases = param1;
      }
   }
}

