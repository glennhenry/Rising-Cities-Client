package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class QuestEventPlayerVo extends QuestPlayerVo
   {
      
      private var _challenges:Vector.<QuestChallengeDTO>;
      
      private var gcP:GameConfigProxy;
      
      private var pP:PlayerProxy;
      
      private var pfP:PlayfieldProxy;
      
      public function QuestEventPlayerVo(param1:QuestDTO, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy)
      {
         var _loc6_:QuestChallengeDTO = null;
         _questDto = param1;
         this._challenges = new Vector.<QuestChallengeDTO>();
         for each(_loc6_ in param1.downstreamQuestElement)
         {
            this._challenges.push(_loc6_);
         }
         this.gcP = param2;
         this.pP = param4;
         this.pfP = param5;
         super(param1,param2,param3,param4,param5);
      }
      
      override public function get tasks() : Vector.<QuestTaskDTO>
      {
         return null;
      }
      
      override public function set tasks(param1:Vector.<QuestTaskDTO>) : void
      {
      }
      
      override public function get challenges() : Vector.<QuestChallengeDTO>
      {
         return this._challenges;
      }
      
      override public function set challenges(param1:Vector.<QuestChallengeDTO>) : void
      {
         this._challenges = param1;
         _propertiesBuilt = false;
         if(this.gcP != null && this.pP != null && this.pfP != null)
         {
            this.buildProperties(this.gcP,null,this.pP,this.pfP);
         }
      }
      
      override protected function buildProperties(param1:GameConfigProxy, param2:CvTagProxy, param3:PlayerProxy, param4:PlayfieldProxy) : void
      {
         var _loc5_:QuestChallengeDTO = null;
         var _loc6_:Boolean = false;
         var _loc7_:AbstractQuestSystemConfigDTO = null;
         var _loc8_:IQuestRewardDTO = null;
         var _loc9_:QuestTaskDTO = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         if(_propertiesBuilt || (this._challenges == null || this._challenges.length == 0))
         {
            return;
         }
         for each(_loc5_ in this._challenges)
         {
            _loc6_ = false;
            for each(_loc7_ in _loc5_.config.downstreamQuestElements)
            {
               for each(_loc9_ in _loc5_.tasks)
               {
                  if(_loc9_.configQuestTaskID == _loc7_.id)
                  {
                     _loc6_ = true;
                     break;
                  }
               }
               if(!_loc7_)
               {
                  _loc5_.tasks.push(new QuestTaskDTO(null,QuestTaskConfigDTO(_loc7_)));
               }
            }
            for each(_loc8_ in _loc5_.rewards)
            {
               if(_loc8_.rewardType == QuestSystemRewardTypeConstants.RESOURCE)
               {
                  _loc8_.resourceConfig = param1.resources[_loc8_.rewardConfigID];
               }
               if(_loc8_.rewardType == QuestSystemRewardTypeConstants.GOOD)
               {
                  _loc8_.goodConfig = param1.goods[_loc8_.rewardConfigID];
               }
               if(_loc8_.rewardType == QuestSystemRewardTypeConstants.PERMISSION)
               {
                  for each(_loc10_ in param1.getConfigPlayfieldItemsByPermissionId(_loc8_.rewardConfigID))
                  {
                     if(!_loc10_.isUpgrade)
                     {
                        _loc8_.configPlayfieldItem = _loc10_;
                     }
                  }
               }
               if(_loc8_.rewardType == QuestSystemRewardTypeConstants.IMPROVEMENT)
               {
                  _loc8_.improvementConfig = param1.config.improvements[_loc8_.rewardConfigID];
               }
               if(_loc8_.rewardType == QuestSystemRewardTypeConstants.ASSIST)
               {
                  _loc8_.assistConfig = param1.config.assists[_loc8_.rewardConfigID];
               }
            }
         }
         _propertiesBuilt = true;
      }
      
      override protected function validate() : void
      {
      }
   }
}

