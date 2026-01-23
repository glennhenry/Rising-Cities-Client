package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class BoulderDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _currentOutput:Vector.<ConfigOutputDTO>;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      public function BoulderDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._posX = param1.px;
         this._posY = param1.py;
         this._created = param1.cr;
         this._currentOutput = new Vector.<ConfigOutputDTO>();
         if(param1.o != null)
         {
            for each(_loc3_ in param1.o)
            {
               this._currentOutput.push(new ConfigOutputDTO(_loc3_));
            }
         }
         this._activePhases = new Vector.<PhaseDTO>();
         if(param1.ph != null)
         {
            for each(_loc4_ in param1.ph)
            {
               this._activePhases.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc4_,param2));
            }
         }
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
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         this._posX = param1;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         this._posY = param1;
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         this._created = param1;
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

