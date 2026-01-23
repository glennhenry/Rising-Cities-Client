package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigInitialPlayfieldItemDTO
   {
      
      private var _configId:Number;
      
      private var _xPos:int;
      
      private var _yPos:int;
      
      public function ConfigInitialPlayfieldItemDTO(param1:Object)
      {
         super();
         this._configId = param1.cpi;
         this._xPos = param1.x;
         this._yPos = param1.y;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get xPos() : int
      {
         return this._xPos;
      }
      
      public function set xPos(param1:int) : void
      {
         this._xPos = param1;
      }
      
      public function get yPos() : int
      {
         return this._yPos;
      }
      
      public function set yPos(param1:int) : void
      {
         this._yPos = param1;
      }
   }
}

