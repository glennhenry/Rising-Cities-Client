package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class CitySquareEventFailVo
   {
      
      public static const STATE_SALE:String = "STATE_SALE";
      
      public static const STATE_NOSALE:String = "STATE_NOSALE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         STATE_SALE = "STATE_SALE";
         if(!(_loc1_ && _loc2_))
         {
            STATE_NOSALE = "STATE_NOSALE";
         }
      }
      
      private var _polaroidData:BriskDynaVo;
      
      private var _rewardData:RewardItemComponentVo;
      
      private var _eventProgress:StepMarkerVo;
      
      private var _timerData:TimerBarComponentVo;
      
      private var _price:Number = -1;
      
      private var _affordable:Boolean;
      
      public function CitySquareEventFailVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get state() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(this.price != -1)
            {
               if(_loc2_)
               {
                  addr0037:
                  §§push(STATE_SALE);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0040:
                  return STATE_NOSALE;
               }
               return §§pop();
            }
            §§goto(addr0040);
         }
         §§goto(addr0037);
      }
      
      public function get rewardData() : RewardItemComponentVo
      {
         return this._rewardData;
      }
      
      public function set rewardData(param1:RewardItemComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._rewardData = param1;
         }
      }
      
      public function get eventProgress() : StepMarkerVo
      {
         return this._eventProgress;
      }
      
      public function set eventProgress(param1:StepMarkerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._eventProgress = param1;
         }
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._price = param1;
         }
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._affordable = param1;
         }
      }
      
      public function get polaroidData() : BriskDynaVo
      {
         return this._polaroidData;
      }
      
      public function set polaroidData(param1:BriskDynaVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._polaroidData = param1;
         }
      }
      
      public function get timerData() : TimerBarComponentVo
      {
         return this._timerData;
      }
      
      public function set timerData(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._timerData = param1;
         }
      }
   }
}

