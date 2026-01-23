package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryBonusGroupDTO
   {
      
      private var _groupId:int;
      
      private var _selectionId:int;
      
      private var _configOutputs:Vector.<ConfigOutputDTO>;
      
      public function ConfigMasteryBonusGroupDTO(param1:Object)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:ConfigOutputDTO = null;
         if(!_loc7_)
         {
            super();
            if(_loc6_)
            {
               this._groupId = param1.gid;
               if(!_loc7_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr0063);
            }
            addr003e:
            this._selectionId = param1.sid;
            if(_loc6_ || Boolean(_loc3_))
            {
               addr0063:
               this._configOutputs = new Vector.<ConfigOutputDTO>();
            }
            §§goto(addr0071);
         }
         addr0071:
         for each(_loc2_ in param1.out)
         {
            _loc3_ = new ConfigOutputDTO(_loc2_);
            if(!(_loc7_ && Boolean(param1)))
            {
               this._configOutputs.push(_loc3_);
            }
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

