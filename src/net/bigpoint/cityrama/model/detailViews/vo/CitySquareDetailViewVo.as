package net.bigpoint.cityrama.model.detailViews.vo
{
   public class CitySquareDetailViewVo
   {
      
      private var _eventList:Vector.<EventDetailViewVo>;
      
      private var _activeEvent:EventDetailViewVo;
      
      private var _time:Number;
      
      public function CitySquareDetailViewVo(param1:Vector.<EventDetailViewVo>, param2:Number, param3:EventDetailViewVo = null)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            super();
            if(_loc4_)
            {
               this._eventList = param1;
               if(_loc4_)
               {
                  this._activeEvent = param3;
                  if(_loc4_)
                  {
                     addr0053:
                     this._time = param2;
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr0053);
         }
         addr0059:
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._activeEvent == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get time() : Number
      {
         return this._time;
      }
   }
}

