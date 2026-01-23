package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   
   public class CitySquareEventSelectionVo
   {
      
      private var _listOfEvents:Vector.<EventQuestVo>;
      
      private var _currentTimestamp:Number;
      
      private var _listOfUpcomingEvents:Vector.<ConfigUpcomingEventDTO>;
      
      public function CitySquareEventSelectionVo(param1:Vector.<EventQuestVo>, param2:Vector.<ConfigUpcomingEventDTO>, param3:Number)
      {
         super();
         this._listOfEvents = param1;
         this._listOfUpcomingEvents = param2;
         this._currentTimestamp = param3;
      }
      
      public function get allEvents() : Vector.<EventSelectionVo>
      {
         var _loc2_:EventQuestVo = null;
         var _loc3_:ConfigUpcomingEventDTO = null;
         var _loc4_:EventSelectionVo = null;
         var _loc5_:EventSelectionVo = null;
         var _loc1_:Vector.<EventSelectionVo> = new Vector.<EventSelectionVo>(0);
         for each(_loc2_ in this._listOfEvents)
         {
            if(_loc2_.currentState == QuestSystemStateConst.INACTIVE && _loc2_.configDto.availabilityTimeStart <= this._currentTimestamp)
            {
               if(_loc2_.configDto.availabilityTimeStart + _loc2_.configDto.totalAvailabilityTime > this._currentTimestamp)
               {
                  _loc1_.push(this.getEventSelectionVo(_loc2_,EventSelectionVo.STATE_AVAILABLE));
               }
            }
            if(_loc2_.currentState == QuestSystemStateConst.VALID)
            {
               _loc1_.push(this.getEventSelectionVo(_loc2_,EventSelectionVo.STATE_RUNNING));
            }
         }
         for each(_loc3_ in this._listOfUpcomingEvents)
         {
            _loc4_ = new EventSelectionVo(EventSelectionVo.STATE_UPCOMING,-1,_loc3_.gfxId,_loc3_.locaId,-1,_loc3_.configEvent.availabilityTimeStart - this._currentTimestamp,0);
            _loc1_.push(_loc4_);
         }
         _loc1_.sort(this.sortEvents);
         while(_loc1_.length < 3)
         {
            _loc5_ = new EventSelectionVo(EventSelectionVo.EMPTY_SLOT,0,0,null,0,0,0);
            _loc1_.push(_loc5_);
         }
         return _loc1_;
      }
      
      private function sortEvents(param1:EventSelectionVo, param2:EventSelectionVo) : int
      {
         if(param1.state == EventSelectionVo.STATE_RUNNING)
         {
            return -1;
         }
         if(param2.state == EventSelectionVo.STATE_RUNNING)
         {
            return 1;
         }
         if(param1.state == EventSelectionVo.STATE_AVAILABLE && param2.state != EventSelectionVo.STATE_AVAILABLE && param2.state != EventSelectionVo.STATE_RUNNING)
         {
            return -1;
         }
         if(param1.state == param2.state)
         {
            if(param1.remainingTime > param2.remainingTime)
            {
               return 1;
            }
            if(param1.remainingTime < param2.remainingTime)
            {
               return -1;
            }
         }
         return 0;
      }
      
      private function getEventSelectionVo(param1:EventQuestVo, param2:String) : EventSelectionVo
      {
         var _loc3_:Number = NaN;
         if(param2 == EventSelectionVo.STATE_RUNNING)
         {
            _loc3_ = (param1.currentActiveStage - 1) / param1.numberOfChallenges;
         }
         else
         {
            _loc3_ = Math.abs(1 - (this._currentTimestamp - param1.configDto.availabilityTimeStart) / param1.configDto.totalAvailabilityTime);
         }
         return new EventSelectionVo(param2,param1.configDto.id,param1.quests[0].config.gfxId,param1.quests[0].config.localizationIdentifier,param1.configDto.totalAvailabilityTime,param1.configDto.totalAvailabilityTime - (this._currentTimestamp - param1.configDto.availabilityTimeStart),_loc3_);
      }
   }
}

