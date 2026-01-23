package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedRequireDTO
   {
      
      private var _configOutputList:Vector.<ConfigOutputDTO>;
      
      private var _requiredConfigBuildingIds:Vector.<Number>;
      
      public function ConfigNeedRequireDTO(param1:Object)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         super();
         this._requiredConfigBuildingIds = new Vector.<Number>();
         this._configOutputList = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.nid)
         {
            this._requiredConfigBuildingIds.push(_loc2_);
         }
         for each(_loc3_ in param1.a)
         {
            this._configOutputList.push(new ConfigOutputDTO(_loc3_));
         }
      }
      
      public function get configOutputList() : Vector.<ConfigOutputDTO>
      {
         return this._configOutputList;
      }
      
      public function get requiredConfigBuildingIds() : Vector.<Number>
      {
         return this._requiredConfigBuildingIds;
      }
   }
}

