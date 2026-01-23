package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEffectDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class ImprovementEfficiencyVo
   {
      
      private static const _clientTags:Vector.<String> = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
      
      private var _confDto:ConfigEffectDTO;
      
      private var _tag:String;
      
      public function ImprovementEfficiencyVo(param1:ConfigEffectDTO)
      {
         var _loc2_:ConfigOutputDTO = null;
         super();
         this._confDto = param1;
         for each(_loc2_ in this._confDto.targetOutputList)
         {
            if(_loc2_.tagConfig != null && _clientTags.indexOf(_loc2_.tagConfig.tagName) != -1)
            {
               this._tag = _loc2_.tagConfig.tagName;
            }
         }
      }
      
      public function get moreIsGood() : Boolean
      {
         switch(this.tag)
         {
            case ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY:
            case ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY:
            case ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY:
               return true;
            case ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY:
            case ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY:
            case ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY:
               return false;
            default:
               return false;
         }
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
      
      public function get value() : Number
      {
         var _loc1_:ConfigOutputDTO = null;
         for each(_loc1_ in this._confDto.targetOutputList)
         {
            if(_loc1_.tagConfig == null || _clientTags.indexOf(_loc1_.tagConfig.tagName) == -1)
            {
               return _loc1_.outputAmount;
            }
         }
         return -1;
      }
   }
}

