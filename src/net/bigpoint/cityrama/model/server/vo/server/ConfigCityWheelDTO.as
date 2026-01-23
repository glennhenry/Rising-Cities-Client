package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   
   public class ConfigCityWheelDTO
   {
      
      private var _wheelBuffs:Dictionary;
      
      private var _istOfEventIds:Vector.<Number>;
      
      public function ConfigCityWheelDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         this._wheelBuffs = new Dictionary();
         this._istOfEventIds = new Vector.<Number>();
         super();
         for each(_loc2_ in param1.cb)
         {
            if(_loc2_.g)
            {
               this._wheelBuffs[_loc2_.i] = new ConfigCityWheelBuffDTO(_loc2_);
            }
         }
         for each(_loc3_ in param1.e)
         {
            this._istOfEventIds.push(Number(_loc3_));
         }
      }
      
      public function get wheelBuffs() : Dictionary
      {
         return this._wheelBuffs;
      }
      
      public function get istOfEventIds() : Vector.<Number>
      {
         return this._istOfEventIds;
      }
   }
}

