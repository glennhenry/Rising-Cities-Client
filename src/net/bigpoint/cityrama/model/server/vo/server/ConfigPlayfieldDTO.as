package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigPlayfieldDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _typeId:Number;
      
      private var _levelId:Number;
      
      private var _gfxId:int;
      
      private var _maxX:Number;
      
      private var _maxY:Number;
      
      private var _expansionValue:int;
      
      private var _masteryChallenge:ConfigMasteryChallengeDTO;
      
      public function ConfigPlayfieldDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._typeId = param1.t;
         this._levelId = param1.l;
         this._gfxId = param1.gf;
         this._maxX = param1.x;
         this._maxY = param1.y;
         this._expansionValue = param1.ev;
         if(param1.m)
         {
            this._masteryChallenge = new ConfigMasteryChallengeDTO(param1.ma);
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
      
      public function get typeId() : Number
      {
         return this._typeId;
      }
      
      public function set typeId(param1:Number) : void
      {
         this._typeId = param1;
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         this._levelId = param1;
      }
      
      public function get maxX() : Number
      {
         return this._maxX;
      }
      
      public function set maxX(param1:Number) : void
      {
         this._maxX = param1;
      }
      
      public function get maxY() : Number
      {
         return this._maxY;
      }
      
      public function set maxY(param1:Number) : void
      {
         this._maxY = param1;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get expansionValue() : int
      {
         return this._expansionValue;
      }
   }
}

