package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   
   public class MysteryBuildingPhaseDTO extends PhaseDTO
   {
      
      private var _mysteryResultFieldItemConfigId:Number;
      
      private var _mysteryResultFieldItemSize:Number;
      
      public function MysteryBuildingPhaseDTO(param1:Object, param2:ConfigPhaseDTO, param3:GameConfigProxy)
      {
         super(param1,param2);
         this._mysteryResultFieldItemConfigId = param1.myst;
         var _loc4_:ConfigPlayfieldItemDTO = param3.getConfigPlayfieldItemById(this._mysteryResultFieldItemConfigId);
         if(_loc4_)
         {
            this._mysteryResultFieldItemSize = Math.max(_loc4_.sizeX,_loc4_.sizeY);
         }
         else
         {
            this._mysteryResultFieldItemSize = 3;
         }
      }
      
      public function get mysteryResultFieldItemSize() : Number
      {
         return this._mysteryResultFieldItemSize;
      }
      
      public function get mysteryResultFieldItemConfigId() : Number
      {
         return this._mysteryResultFieldItemConfigId;
      }
      
      public function set mysteryResultFieldItemConfigId(param1:Number) : void
      {
         this._mysteryResultFieldItemConfigId = param1;
      }
      
      public function set mysteryResultFieldItemSize(param1:Number) : void
      {
         this._mysteryResultFieldItemSize = param1;
      }
   }
}

