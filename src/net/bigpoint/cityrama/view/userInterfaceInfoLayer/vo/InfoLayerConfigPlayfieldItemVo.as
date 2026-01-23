package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class InfoLayerConfigPlayfieldItemVo
   {
      
      private var _data:ConfigPlayfieldItemDTO;
      
      public function InfoLayerConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO)
      {
         super();
         this._data = param1;
      }
      
      public function get moodValue() : Number
      {
         var _loc1_:ConfigOutputDTO = null;
         for each(_loc1_ in this._data.globalBuffs)
         {
            if(_loc1_.resourceConfig != null)
            {
               if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
               {
                  return Math.abs(_loc1_.outputAmount);
               }
               if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
               {
                  return Math.abs(_loc1_.outputAmount) * -1;
               }
            }
         }
         return NaN;
      }
      
      public function get energyValue() : Number
      {
         var _loc1_:ConfigOutputDTO = null;
         for each(_loc1_ in this._data.globalBuffs)
         {
            if(_loc1_.resourceConfig != null)
            {
               if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
               {
                  return Math.abs(_loc1_.outputAmount);
               }
               if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE)
               {
                  return Math.abs(_loc1_.outputAmount) * -1;
               }
            }
         }
         return NaN;
      }
      
      public function get baseharvestOutput() : ConfigOutputDTO
      {
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc1_ in this._data.activePhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.RESIDENTIAL)
            {
               for each(_loc2_ in _loc1_.listEntryOutputs)
               {
                  if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS || _loc2_.resourceConfig.type == ServerResConst.RESOURCE_EDUCATIONPOINTS || _loc2_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get timerCycle() : Number
      {
         var _loc1_:ConfigPhaseDTO = null;
         for each(_loc1_ in this._data.activePhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.RESIDENTIAL)
            {
               return _loc1_.durationConfig.duration;
            }
         }
         return NaN;
      }
      
      public function get goodsProduced() : Vector.<ConfigGoodDTO>
      {
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigGoodDTO> = new Vector.<ConfigGoodDTO>();
         for each(_loc2_ in this._data.activePhases)
         {
            for each(_loc3_ in _loc2_.listEntryOutputs)
            {
               if(_loc2_.phaseType != ServerPhaseTypes.PRODUCTION_START)
               {
                  if(_loc3_.goodConfig != null && !_loc3_.goodConfig.isEventGood)
                  {
                     _loc1_.push(_loc3_.goodConfig);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get shopRadius() : Rectangle
      {
         var _loc1_:Rectangle = null;
         var _loc2_:ConfigNeedDTO = null;
         if(this._data.needShopConfigs.length > 0)
         {
            _loc1_ = new Rectangle();
            for each(_loc2_ in this._data.needShopConfigs)
            {
               if(_loc1_.width < _loc2_.buffRangeX * 2 + this._data.sizeX)
               {
                  _loc1_.width = _loc2_.buffRangeX * 2 + this._data.sizeX;
               }
               if(_loc1_.height < _loc2_.buffRangeY * 2 + this._data.sizeY)
               {
                  _loc1_.height = _loc2_.buffRangeY * 2 + this._data.sizeY;
               }
            }
         }
         return _loc1_;
      }
      
      public function get shopMaxStock() : Number
      {
         if(Boolean(this._data.needShopConfigs) && Boolean(this._data.needShopConfigs[0].requiredGoods))
         {
            return this._data.needShopConfigs[0].requiredGoods[0].maxStack;
         }
         return NaN;
      }
   }
}

