package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ResourceDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _amount:Number;
      
      private var _amountCap:Number;
      
      private var _imagePath:String;
      
      private var _config:ConfigResourceDTO;
      
      public function ResourceDTO(param1:Object, param2:ConfigResourceDTO)
      {
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._config = param2;
         this._amount = param1.a;
         this._amountCap = param1.ac;
         this._imagePath = param1.imagePath;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get amountCap() : Number
      {
         return this._amountCap;
      }
      
      public function set amountCap(param1:Number) : void
      {
         this._amountCap = param1;
      }
      
      public function get imagePath() : String
      {
         return this._imagePath;
      }
      
      public function get config() : ConfigResourceDTO
      {
         if(this._config == null)
         {
            throw new RamaCityError("USE ConfigFactory for constructing this !!");
         }
         return this._config;
      }
   }
}

