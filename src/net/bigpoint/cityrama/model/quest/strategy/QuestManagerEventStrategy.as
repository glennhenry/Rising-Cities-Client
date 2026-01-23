package net.bigpoint.cityrama.model.quest.strategy
{
   import com.greensock.TweenMax;
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class QuestManagerEventStrategy extends QuestManagerParentStrategy
   {
      
      private var _tempChallenges:Vector.<QuestChallengeDTO>;
      
      private var _lastChange:int = -1;
      
      public function QuestManagerEventStrategy()
      {
         super();
      }
      
      override public function updateTask(param1:Number, param2:String, param3:Number, param4:Number, param5:QuestCompleteCostVo) : void
      {
         var _loc7_:QuestEventPlayerVo = null;
         var _loc8_:QuestChallengeDTO = null;
         var _loc9_:QuestTaskDTO = null;
         var _loc6_:Boolean = false;
         for each(_loc7_ in _questBook.quests)
         {
            if(_loc7_.id == param4 || param4 == 0)
            {
               for each(_loc8_ in _loc7_.challenges)
               {
                  for each(_loc9_ in _loc8_.tasks)
                  {
                     if(_loc9_.taskConfig.id == param1)
                     {
                        if(_loc9_.currentValue != param3)
                        {
                           _loc9_.currentValue = param3;
                           _loc6_ = true;
                        }
                        if(param5 != null && _loc9_.questCompleteCostVo != param5)
                        {
                           _loc9_.questCompleteCostVo = param5;
                        }
                        if(_loc9_.elementState != param2)
                        {
                           _loc9_.elementState = param2;
                           _loc6_ = true;
                        }
                        if(_loc6_)
                        {
                           if(getTimer() - this._lastChange < 500)
                           {
                              TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
                           }
                           TweenMax.delayedCall(0.5,this.sendChangeDelayed);
                           this._lastChange = getTimer();
                           break;
                        }
                     }
                  }
               }
            }
            if(_loc6_)
            {
               break;
            }
         }
      }
      
      private function sendChangeDelayed() : void
      {
         _facade.sendNotification(ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED);
      }
      
      override public function updateQuestState(param1:Number, param2:String, param3:Number, param4:Boolean = false) : void
      {
         super.updateQuestState(param1,param2,param3,param4);
      }
      
      public function getChallengeByCid(param1:Number) : QuestChallengeDTO
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in _questBook.quests)
         {
            for each(_loc3_ in _loc2_.challenges)
            {
               if(param1 == _loc3_.config.id)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function updateChallenge(param1:QuestChallengeDTO) : QuestEventPlayerVo
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in _questBook.quests)
         {
            for each(_loc3_ in _loc2_.challenges)
            {
               if(param1.config.id == _loc3_.config.id)
               {
                  if(_loc3_.elementState != param1.elementState)
                  {
                     _loc3_.elementState = param1.elementState;
                     this.facade.sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      override public function addQuest(param1:QuestDTO) : IQuestPlayerVo
      {
         var _loc2_:QuestEventPlayerVo = new QuestEventPlayerVo(param1,this.gameConfigProxy,this.cvTagProxy,this.playerProxy,playfieldProxy);
         if(this.newQuestMustBeBuild(_loc2_))
         {
            this._tempChallenges = _loc2_.challenges;
            for each(var _loc3_ in _loc2_.config.downstreamQuestElements)
            {
               this.buildChallenges(null);
            }
            _loc2_.challenges = this._tempChallenges;
            this._tempChallenges = new Vector.<QuestChallengeDTO>();
            _tempTasks = new Vector.<QuestTaskDTO>(0);
         }
         _questBook.add(_loc2_);
         if(getTimer() - this._lastChange < 500)
         {
            TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
         }
         TweenMax.delayedCall(0.5,this.sendChangeDelayed);
         this._lastChange = getTimer();
         return _loc2_;
      }
      
      private function newQuestMustBeBuild(param1:QuestEventPlayerVo) : Boolean
      {
         var _loc2_:QuestChallengeDTO = null;
         if(param1.challenges.length != param1.config.downstreamQuestElements.length)
         {
            return true;
         }
         for each(_loc2_ in param1.challenges)
         {
            if(_loc2_.tasks.length != _loc2_.config.downstreamQuestElements.length)
            {
               return true;
            }
         }
         return false;
      }
      
      private function buildChallenges(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _loc2_:QuestChallengeDTO = null;
         var _loc3_:AbstractQuestSystemConfigDTO = null;
         var _loc4_:Boolean = false;
         var _loc5_:QuestChallengeDTO = null;
         _loc2_ = new QuestChallengeDTO(null,param1 as QuestChallengeConfigDTO);
         _tempTasks = new Vector.<QuestTaskDTO>(0);
         for each(_loc3_ in _loc2_.config.downstreamQuestElements)
         {
            this.gatherDownStreamElementsRecursive(_loc3_);
         }
         _loc2_.tasks = _tempTasks;
         _loc4_ = false;
         for each(_loc5_ in this._tempChallenges)
         {
            if(_loc5_.config.id == _loc2_.config.id)
            {
               if(_loc5_.tasks.length != _loc2_.tasks.length)
               {
                  _loc5_.tasks = _loc2_.tasks;
               }
               _loc4_ = true;
               break;
            }
         }
         if(!_loc4_)
         {
            this._tempChallenges.push(_loc2_);
         }
      }
      
      private function gatherDownStreamElementsRecursive(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _loc2_:AbstractQuestSystemConfigDTO = null;
         _tempTasks.push(new QuestTaskDTO(null,param1 as QuestTaskConfigDTO));
         if(param1.downstreamQuestElements.length != 0)
         {
            for each(_loc2_ in param1.downstreamQuestElements)
            {
               this.gatherDownStreamElementsRecursive(_loc2_);
            }
         }
      }
      
      override public function prepare(param1:IFacade, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy) : void
      {
         super.prepare(param1,param2,param3,param4,param5);
      }
      
      override protected function get facade() : IFacade
      {
         return super.facade;
      }
      
      override protected function get cvTagProxy() : CvTagProxy
      {
         return super.cvTagProxy;
      }
      
      override protected function get gameConfigProxy() : GameConfigProxy
      {
         return super.gameConfigProxy;
      }
      
      override protected function get playerProxy() : PlayerProxy
      {
         return super.playerProxy;
      }
   }
}

