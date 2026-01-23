package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryBonusGroupDTO
   {
      
      private var _groupId:int;
      
      private var _selectionId:int;
      
      private var _configOutputs:Vector.<ConfigOutputDTO>;
      
      public function ConfigMasteryBonusGroupDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:ConfigOutputDTO = null;
         super();
         this._groupId = param1.gid;
         this._selectionId = param1.sid;
         this._configOutputs = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.out)
         {
            _loc3_ = new ConfigOutputDTO(_loc2_);
            this._configOutputs.push(_loc3_);
         }
      }
      
      public function get groupId() : int
      {
         return this._groupId;
      }
      
      public function get selectionId() : int
      {
         return this._selectionId;
      }
      
      public function get configOutputs() : Vector.<ConfigOutputDTO>
      {
         return this._configOutputs;
      }
   }
}

