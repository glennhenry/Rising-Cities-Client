package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigFeatureDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _requirements:Vector.<ConfigFeatureRequirementDTO>;
      
      public function ConfigFeatureDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(!(_loc5_ && Boolean(this)))
         {
            super();
            if(_loc6_ || Boolean(param1))
            {
               this._id = param1.id;
               if(_loc6_ || Boolean(this))
               {
                  addr005c:
                  this._type = param1.type;
                  if(_loc6_)
                  {
                     addr006c:
                     this._requirements = new Vector.<ConfigFeatureRequirementDTO>();
                  }
                  for each(_loc2_ in param1.rq)
                  {
                     if(_loc6_)
                     {
                        this._requirements.push(new ConfigFeatureRequirementDTO(_loc2_));
                     }
                  }
                  return;
                  addr007b:
               }
               §§goto(addr006c);
            }
            §§goto(addr005c);
         }
         §§goto(addr007b);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get requirements() : Vector.<ConfigFeatureRequirementDTO>
      {
         return this._requirements;
      }
   }
}

