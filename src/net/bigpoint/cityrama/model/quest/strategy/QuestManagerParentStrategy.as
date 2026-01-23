package net.bigpoint.cityrama.model.quest.strategy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.quest.vo.QuestBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class QuestManagerParentStrategy implements IQuestManagerStrategy
   {
      
      protected var _facade:IFacade;
      
      protected var _questBook:QuestBookVo;
      
      protected var _cvTagProxy:CvTagProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      protected var _playerProxy:PlayerProxy;
      
      protected var _tempTasks:Vector.<QuestTaskDTO>;
      
      protected var _playfieldProxy:PlayfieldProxy;
      
      public function QuestManagerParentStrategy()
      {
         super();
      }
      
      public function updateTask(param1:Number, param2:String, param3:Number, param4:Number, param5:QuestCompleteCostVo) : void
      {
         var _loc7_:QuestPlayerVo = null;
         var _loc8_:QuestTaskDTO = null;
         var _loc6_:Boolean = false;
         for each(_loc7_ in this._questBook.quests)
         {
            if(_loc7_.id == param4 || param4 == 0)
            {
               for each(_loc8_ in _loc7_.tasks)
               {
                  if(_loc8_.taskConfig.id == param1)
                  {
                     if(_loc8_.currentValue != param3)
                     {
                        _loc8_.currentValue = param3;
                        _loc6_ = true;
                     }
                     if(param5 != null && _loc8_.questCompleteCostVo != param5)
                     {
                        _loc8_.questCompleteCostVo = param5;
                     }
                     if(_loc8_.elementState != param2)
                     {
                        _loc8_.elementState = param2;
                        _loc6_ = true;
                     }
                     if(_loc6_)
                     {
                        this._facade.sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
                        break;
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
      
      public function updateQuestState(param1:Number, param2:String, param3:Number, param4:Boolean = false) : void
      {
         if(param2 == QuestSystemStateConst.DELETED || param2 == QuestSystemStateConst.CANCELLED)
         {
            this._questBook.deleteQuestById(param1);
            this._facade.sendNotification(ApplicationNotificationConstants.QUEST_DELETED);
         }
         else
         {
            this._questBook.updateQuestStateById(param1,param2,param3);
         }
         var _loc5_:QuestPlayerVo = this._questBook.getQuestsById(param1);
         if(!param4 && _loc5_ != null && param2 == QuestSystemStateConst.DONE && _loc5_.questDto.rewardList.length != 0)
         {
            this._facade.sendNotification(ApplicationNotificationConstants.QUEST_REWARD_OPEN,_loc5_);
         }
         else if(param2 == QuestSystemStateConst.DONE)
         {
         }
      }
      
      public function set questBook(param1:QuestBookVo) : void
      {
         this._questBook = param1;
      }
      
      public function get questBook() : QuestBookVo
      {
         return this._questBook;
      }
      
      public function addQuest(param1:QuestDTO) : IQuestPlayerVo
      {
         var _loc3_:AbstractQuestSystemConfigDTO = null;
         var _loc2_:QuestPlayerVo = new QuestPlayerVo(param1,this.gameConfigProxy,this.cvTagProxy,this.playerProxy,this.playfieldProxy);
         if(_loc2_.tasks.length < _loc2_.config.downstreamQuestElements.length)
         {
            this._tempTasks = new Vector.<QuestTaskDTO>();
            for each(_loc3_ in _loc2_.config.downstreamQuestElements)
            {
               this.gatherDownStreamElementsRecursive(_loc3_);
            }
            _loc2_.tasks = this._tempTasks;
         }
         this._questBook.add(_loc2_);
         this._facade.sendNotification(ApplicationNotificationConstants.QUEST_NEW_ADDED,_loc2_);
         return _loc2_;
      }
      
      private function gatherDownStreamElementsRecursive(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _loc2_:AbstractQuestSystemConfigDTO = null;
         this._tempTasks.push(new QuestTaskDTO(null,param1 as QuestTaskConfigDTO));
         if(param1.downstreamQuestElements.length != 0)
         {
            for each(_loc2_ in param1.downstreamQuestElements)
            {
               this.gatherDownStreamElementsRecursive(_loc2_);
            }
         }
      }
      
      public function prepare(param1:IFacade, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy) : void
      {
         this._facade = param1;
         this._gameConfigProxy = param2;
         this._cvTagProxy = param3;
         this._playerProxy = param4;
         this._playfieldProxy = param5;
      }
      
      protected function get facade() : IFacade
      {
         return this._facade;
      }
      
      protected function get cvTagProxy() : CvTagProxy
      {
         if(this._cvTagProxy == null)
         {
            this._cvTagProxy = this.facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         }
         return this._cvTagProxy;
      }
      
      protected function get gameConfigProxy() : GameConfigProxy
      {
         if(this._gameConfigProxy == null)
         {
            this._gameConfigProxy = this._facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gameConfigProxy;
      }
      
      protected function get playerProxy() : PlayerProxy
      {
         if(this._playerProxy == null)
         {
            this._playerProxy = this._facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._playerProxy;
      }
      
      protected function get playfieldProxy() : PlayfieldProxy
      {
         if(this._playfieldProxy == null)
         {
            this._playfieldProxy = this._facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         return this._playfieldProxy;
      }
   }
}

