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
      
      private var _polaroidData:BriskDynaVo;
      
      private var _rewardData:RewardItemComponentVo;
      
      private var _eventProgress:StepMarkerVo;
      
      private var _timerData:TimerBarComponentVo;
      
      private var _price:Number = -1;
      
      private var _affordable:Boolean;
      
      public function CitySquareEventFailVo()
      {
         super();
      }
      
      public function get state() : String
      {
         if(this.price != -1)
         {
            return STATE_SALE;
         }
         return STATE_NOSALE;
      }
      
      public function get rewardData() : RewardItemComponentVo
      {
         return this._rewardData;
      }
      
      public function set rewardData(param1:RewardItemComponentVo) : void
      {
         this._rewardData = param1;
      }
      
      public function get eventProgress() : StepMarkerVo
      {
         return this._eventProgress;
      }
      
      public function set eventProgress(param1:StepMarkerVo) : void
      {
         this._eventProgress = param1;
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         this._affordable = param1;
      }
      
      public function get polaroidData() : BriskDynaVo
      {
         return this._polaroidData;
      }
      
      public function set polaroidData(param1:BriskDynaVo) : void
      {
         this._polaroidData = param1;
      }
      
      public function get timerData() : TimerBarComponentVo
      {
         return this._timerData;
      }
      
      public function set timerData(param1:TimerBarComponentVo) : void
      {
         this._timerData = param1;
      }
   }
}

