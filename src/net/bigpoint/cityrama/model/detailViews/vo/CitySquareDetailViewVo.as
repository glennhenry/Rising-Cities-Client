package net.bigpoint.cityrama.model.detailViews.vo
{
   public class CitySquareDetailViewVo
   {
      
      private var _eventList:Vector.<EventDetailViewVo>;
      
      private var _activeEvent:EventDetailViewVo;
      
      private var _time:Number;
      
      public function CitySquareDetailViewVo(param1:Vector.<EventDetailViewVo>, param2:Number, param3:EventDetailViewVo = null)
      {
         super();
         this._eventList = param1;
         this._activeEvent = param3;
         this._time = param2;
      }
      
      public function get activeEvent() : EventDetailViewVo
      {
         return this._activeEvent;
      }
      
      public function get eventList() : Vector.<EventDetailViewVo>
      {
         return this._eventList;
      }
      
      public function get isEventActive() : Boolean
      {
         return this._activeEvent != null;
      }
      
      public function get time() : Number
      {
         return this._time;
      }
   }
}

