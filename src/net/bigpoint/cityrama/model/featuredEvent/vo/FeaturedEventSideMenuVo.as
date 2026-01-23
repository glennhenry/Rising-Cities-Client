package net.bigpoint.cityrama.model.featuredEvent.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class FeaturedEventSideMenuVo
   {
      
      private var _featuredEvents:Vector.<FeaturedRunningEventVo>;
      
      private var _wheelRewardsWaiting:Boolean;
      
      private var _showNew:Boolean = false;
      
      public function FeaturedEventSideMenuVo()
      {
         super();
      }
      
      public function showSideMenu() : Boolean
      {
         return this.wheelRewardsWaiting || this._featuredEvents != null && this._featuredEvents.length > 0;
      }
      
      public function get multipleEvents() : Boolean
      {
         return this._featuredEvents.length > 1;
      }
      
      public function get headerIcon() : BriskDynaVo
      {
         if(!this.multipleEvents)
         {
            return this._featuredEvents[0].headerIcon;
         }
         return new BriskDynaVo("gui_main_hud","featured_icon");
      }
      
      public function get header() : String
      {
         if(!this.multipleEvents)
         {
            return this._featuredEvents[0].header;
         }
         return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.multiple.capital");
      }
      
      public function get infoText() : String
      {
         return this._featuredEvents[0].infoText;
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._featuredEvents[0].timerVo;
      }
      
      public function get multipleEventListData() : ArrayCollection
      {
         var _loc2_:FeaturedRunningEventVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._featuredEvents)
         {
            _loc2_.showDivider = true;
            _loc1_.addItem(_loc2_);
         }
         _loc2_.showDivider = false;
         return _loc1_;
      }
      
      public function set featuredEvents(param1:Vector.<FeaturedRunningEventVo>) : void
      {
         this._featuredEvents = param1;
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         var _loc2_:FeaturedRunningEventVo = null;
         if(Boolean(this._featuredEvents) && !this.wheelRewardsWaiting)
         {
            for each(_loc2_ in this._featuredEvents)
            {
               _loc2_.timerVo.currentTime = param1;
            }
         }
      }
      
      public function get currentRunningEventType() : String
      {
         return this._featuredEvents[0].type;
      }
      
      public function get wheelRewardsWaiting() : Boolean
      {
         return this._wheelRewardsWaiting;
      }
      
      public function set wheelRewardsWaiting(param1:Boolean) : void
      {
         var _loc2_:FeaturedRunningEventVo = null;
         this._wheelRewardsWaiting = param1;
         if(this._wheelRewardsWaiting)
         {
            this._featuredEvents = new Vector.<FeaturedRunningEventVo>();
            _loc2_ = new FeaturedRunningEventVo();
            _loc2_.type = FeaturedRunningEventVo.FEATURED_WHEEL;
            _loc2_.rewardsWaiting = true;
            this._featuredEvents.push(_loc2_);
         }
      }
      
      public function get showNew() : Boolean
      {
         return this._showNew;
      }
      
      public function set showNew(param1:Boolean) : void
      {
         this._showNew = param1;
      }
   }
}

