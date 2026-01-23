package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class ScheduledDropFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _playAnimation:Boolean;
      
      private var _isAnimationPlaying:Boolean;
      
      public function ScheduledDropFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      override public function get isHarvestReady() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(Boolean(_loc1_) && _loc1_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
               {
                  if(_loc1_.timeLeft == 0 || _loc1_.expirationTime <= currentTimeStamp)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function get playAnimation() : Boolean
      {
         return this._playAnimation;
      }
      
      public function set playAnimation(param1:Boolean) : void
      {
         this._playAnimation = param1;
      }
      
      public function get isAnimationPlaying() : Boolean
      {
         return this._isAnimationPlaying;
      }
      
      public function set isAnimationPlaying(param1:Boolean) : void
      {
         this._isAnimationPlaying = param1;
      }
      
      public function get tagType() : String
      {
         if(configPlayfieldItemVo)
         {
            if(configPlayfieldItemVo.tags.indexOf(ServerTagConstants.CHRISTMAS_TREE) != -1)
            {
               return ServerTagConstants.CHRISTMAS_TREE;
            }
            if(configPlayfieldItemVo.tags.indexOf(ServerTagConstants.CLIENT_OLYMPIC_STADIUM) != -1)
            {
               return ServerTagConstants.CLIENT_OLYMPIC_STADIUM;
            }
         }
         return "";
      }
      
      override public function get isConnectedToStreet() : Boolean
      {
         if(this.tagType != ServerTagConstants.CHRISTMAS_TREE)
         {
            return super.isConnectedToStreet;
         }
         return true;
      }
   }
}

