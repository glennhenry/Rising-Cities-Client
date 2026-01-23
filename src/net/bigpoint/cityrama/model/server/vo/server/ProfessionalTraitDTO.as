package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.ConfigProfessionalTraitDTO;
   
   public class ProfessionalTraitDTO
   {
      
      private var _professionalId:Number;
      
      private var _configId:Number;
      
      private var _stacks:uint;
      
      private var _config:ConfigProfessionalTraitDTO;
      
      public function ProfessionalTraitDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this._stacks = param1.s;
               addr0036:
               if(_loc3_ || Boolean(this))
               {
                  this._configId = param1.cpt;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0070:
                     this._professionalId = param1.prof;
                  }
                  return;
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr0036);
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get stacks() : uint
      {
         return this._stacks;
      }
      
      public function set config(param1:ConfigProfessionalTraitDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._config = param1;
         }
      }
      
      public function get config() : ConfigProfessionalTraitDTO
      {
         return this._config;
      }
   }
}

