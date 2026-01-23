package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   
   public class MysteryBuildingPhaseDTO extends PhaseDTO
   {
      
      private var _mysteryResultFieldItemConfigId:Number;
      
      private var _mysteryResultFieldItemSize:Number;
      
      public function MysteryBuildingPhaseDTO(param1:Object, param2:ConfigPhaseDTO, param3:GameConfigProxy)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            super(param1,param2);
            if(_loc6_)
            {
               this._mysteryResultFieldItemConfigId = param1.myst;
            }
         }
         var _temp_2:* = param3.getConfigPlayfieldItemById(this._mysteryResultFieldItemConfigId);
         var _loc4_:ConfigPlayfieldItemDTO = param3.getConfigPlayfieldItemById(this._mysteryResultFieldItemConfigId);
         if(_loc4_)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               this._mysteryResultFieldItemSize = Math.max(_loc4_.sizeX,_loc4_.sizeY);
               if(_loc5_)
               {
               }
            }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._mysteryResultFieldItemConfigId = param1;
         }
      }
      
      public function set mysteryResultFieldItemSize(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._mysteryResultFieldItemSize = param1;
         }
      }
   }
}

