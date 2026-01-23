package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEffectDTO extends ConfigOutputDTO
   {
      
      private var _target:String;
      
      private var _targetOutputList:Vector.<ConfigOutputDTO>;
      
      public function ConfigEffectDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            super(param1);
            if(!_loc6_)
            {
               addr0028:
               this._target = param1.ta;
               if(_loc5_ || Boolean(_loc2_))
               {
                  this._targetOutputList = new Vector.<ConfigOutputDTO>();
               }
            }
            for each(_loc2_ in param1.out)
            {
               if(!(_loc6_ && Boolean(param1)))
               {
                  this._targetOutputList.push(new ConfigOutputDTO(_loc2_));
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function get target() : String
      {
         return this._target;
      }
      
      public function get targetOutputList() : Vector.<ConfigOutputDTO>
      {
         return this._targetOutputList;
      }
   }
}

