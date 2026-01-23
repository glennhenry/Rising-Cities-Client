package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigOutputDTO
   {
      
      private var _type:String;
      
      private var _configId:Number;
      
      private var _outputAmount:Number;
      
      private var _multiplier:Number;
      
      private var _goodConfig:ConfigGoodDTO;
      
      private var _resourceConfig:ConfigResourceDTO;
      
      private var _assistConfig:ConfigAssistDTO;
      
      private var _playfieldItemConfig:ConfigPlayfieldItemDTO;
      
      private var _tagConfig:ConfigTagDTO;
      
      private var _improvementConfig:ConfigImprovementDTO;
      
      public function ConfigOutputDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super();
            if(_loc3_)
            {
               this._type = param1.t as String;
               if(_loc3_)
               {
                  this._configId = param1.cid as Number;
                  if(_loc3_)
                  {
                     addr0065:
                     this._outputAmount = param1.o as Number;
                     if(_loc3_)
                     {
                        addr0076:
                        this._multiplier = param1.m;
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0076);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0065);
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get outputAmount() : Number
      {
         return this._outputAmount;
      }
      
      public function get resourceConfig() : ConfigResourceDTO
      {
         return this._resourceConfig;
      }
      
      public function set resourceConfig(param1:ConfigResourceDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._resourceConfig = param1;
         }
      }
      
      public function set goodConfig(param1:ConfigGoodDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._goodConfig = param1;
         }
      }
      
      public function get goodConfig() : ConfigGoodDTO
      {
         return this._goodConfig;
      }
      
      public function set outputAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._outputAmount = param1;
         }
      }
      
      public function get assistConfig() : ConfigAssistDTO
      {
         return this._assistConfig;
      }
      
      public function set assistConfig(param1:ConfigAssistDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._assistConfig = param1;
         }
      }
      
      public function get playfieldItemConfig() : ConfigPlayfieldItemDTO
      {
         return this._playfieldItemConfig;
      }
      
      public function set playfieldItemConfig(param1:ConfigPlayfieldItemDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._playfieldItemConfig = param1;
         }
      }
      
      public function get tagConfig() : ConfigTagDTO
      {
         return this._tagConfig;
      }
      
      public function set tagConfig(param1:ConfigTagDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._tagConfig = param1;
         }
      }
      
      public function get improvementConfig() : ConfigImprovementDTO
      {
         return this._improvementConfig;
      }
      
      public function set improvementConfig(param1:ConfigImprovementDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._improvementConfig = param1;
         }
      }
      
      public function get multiplier() : Number
      {
         return this._multiplier;
      }
      
      public function set multiplier(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._multiplier = param1;
         }
      }
   }
}

