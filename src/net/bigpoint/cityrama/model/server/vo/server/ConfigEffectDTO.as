package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEffectDTO extends ConfigOutputDTO
   {
      
      private var _target:String;
      
      private var _targetOutputList:Vector.<ConfigOutputDTO>;
      
      public function ConfigEffectDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super(param1);
         this._target = param1.ta;
         this._targetOutputList = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.out)
         {
            this._targetOutputList.push(new ConfigOutputDTO(_loc2_));
         }
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

