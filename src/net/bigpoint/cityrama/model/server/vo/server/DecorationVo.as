package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class DecorationVo implements ILoggableObject
   {
      
      private var _dto:DecorationDTO;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function DecorationVo(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         super();
         if(param1 is DecorationDTO)
         {
            this._dto = param1 as DecorationDTO;
         }
         else
         {
            this._dto = new DecorationDTO(param1);
         }
         this._config = param2;
      }
      
      public function get id() : Number
      {
         if(this._dto == null)
         {
            throw new RamaCityError("Decoration dto is null");
         }
         return this._dto.id;
      }
      
      public function get configId() : Number
      {
         if(this.config == null)
         {
            throw new RamaCityError("Decoration config is null dto id: " + this._dto.id);
         }
         return this.config.id;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get dto() : DecorationDTO
      {
         return this._dto;
      }
      
      public function set dto(param1:DecorationDTO) : void
      {
         this._dto = param1;
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         this._config = param1;
         if(this.config.id != this.dto.configId)
         {
            throw new RamaCityError("Config does not match id, object broken? " + this + " uocid:" + this.dto.configId + " cid:" + this.config.id);
         }
      }
   }
}

