package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalAttributeDTO
   {
      
      private var _id:Number;
      
      private var _attributeType:String;
      
      private var _attributeThresholds:Vector.<ConfigProfessionalAttributeThresholdDTO>;
      
      private var _maxCap:int;
      
      public function ConfigProfessionalAttributeDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(_loc5_)
         {
            super();
            if(_loc5_)
            {
               this._id = param1.cpai;
               if(!_loc6_)
               {
                  this._attributeType = param1.cat;
                  if(_loc5_)
                  {
                     this._maxCap = param1.max;
                     addr004a:
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr006f:
                        this._attributeThresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
               addr007e:
               for each(_loc2_ in param1.ats)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     this._attributeThresholds.push(new ConfigProfessionalAttributeThresholdDTO(_loc2_));
                  }
               }
               return;
            }
         }
         §§goto(addr004a);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get attributeType() : String
      {
         return this._attributeType;
      }
      
      public function get attributeThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._attributeThresholds;
      }
      
      public function get maxCap() : int
      {
         return this._maxCap;
      }
   }
}

