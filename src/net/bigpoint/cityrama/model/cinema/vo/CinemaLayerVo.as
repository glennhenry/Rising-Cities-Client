package net.bigpoint.cityrama.model.cinema.vo
{
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CinemaLayerVo
   {
      
      private static const NO_VIDEOS_LEFT:uint = 1;
      
      private static const NO_VIDEOS_AVAILABLE_PROVIDER:uint = 2;
      
      private var _maxViews:uint;
      
      private var _realCurrencyRewardAmount:uint = 0;
      
      private var _videosWatchedToday:uint = 0;
      
      private var _videoAvailableFromProvider:Boolean;
      
      private var _availabilityTimer:TimerBarComponentVo;
      
      public function CinemaLayerVo()
      {
         super();
      }
      
      public function set videoAvailableFromProvider(param1:Boolean) : void
      {
         this._videoAvailableFromProvider = param1;
      }
      
      public function set videosWatchedToday(param1:uint) : void
      {
         this._videosWatchedToday = param1;
      }
      
      public function set availabilityTimer(param1:TimerBarComponentVo) : void
      {
         this._availabilityTimer = param1;
      }
      
      public function set maxViews(param1:uint) : void
      {
         this._maxViews = param1;
      }
      
      public function set realCurrencyRewardAmount(param1:uint) : void
      {
         this._realCurrencyRewardAmount = param1;
      }
      
      public function get videoAvailable() : Boolean
      {
         if(this._videoAvailableFromProvider && this._videosWatchedToday < this.maxViews)
         {
            return true;
         }
         return false;
      }
      
      public function get maxViews() : uint
      {
         return this._maxViews;
      }
      
      public function get videosLeftToday() : uint
      {
         return Math.max(this.maxViews - this._videosWatchedToday,0);
      }
      
      public function get flavourText() : String
      {
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.flavour",[this.maxViews,this._realCurrencyRewardAmount]);
      }
      
      public function get headerText() : String
      {
         if(this.videoAvailable)
         {
            return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.header.available.capital");
         }
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.header.unavailable.capital");
      }
      
      public function get layerText() : String
      {
         if(this.videoAvailable)
         {
            return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.available",[this._realCurrencyRewardAmount]);
         }
         switch(this.videoUnavailableReason)
         {
            case NO_VIDEOS_AVAILABLE_PROVIDER:
               return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.unavailable.noAvailable");
            case NO_VIDEOS_LEFT:
               return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.unavailable.noLeft");
            default:
               return "";
         }
      }
      
      public function get buttonLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.button.label.capital");
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.tooltips.cinema","rcl.tooltips.cinema.button.play");
      }
      
      public function get polaroidText() : String
      {
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.postit.videoCount",[this.maxViews - this._videosWatchedToday]);
      }
      
      public function get polaroidGfx() : BriskDynaVo
      {
         if(!this.videoAvailable)
         {
            return new BriskDynaVo("gui_popups_rewardLayer","polaroid_cinema_unavailable");
         }
         return new BriskDynaVo("gui_popups_rewardLayer","polaroid_cinema_available");
      }
      
      private function get videoUnavailableReason() : uint
      {
         if(!this.videoAvailable)
         {
            if(this._videosWatchedToday >= this.maxViews)
            {
               return NO_VIDEOS_LEFT;
            }
            return NO_VIDEOS_AVAILABLE_PROVIDER;
         }
         return 0;
      }
      
      public function get availabilityTimer() : TimerBarComponentVo
      {
         return this._availabilityTimer;
      }
      
      public function get stepMarkerData() : StepMarkerVo
      {
         var _loc1_:StepMarkerVo = new StepMarkerVo();
         _loc1_.currentProgress = this._videosWatchedToday;
         _loc1_.hasLastInterval = false;
         var _loc2_:int = 1;
         while(_loc2_ <= this.maxViews)
         {
            _loc1_.stepInactiveStyles.push("cinemaInactive");
            _loc1_.stepActiveStyles.push("active");
            _loc1_.progressSteps.push(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

