package net.bigpoint.cityrama.model.featuredEvent.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class FeaturedRunningEventVo
   {
      
      public static const FEATURED_MYSTERY:String = "FEATURED_MYSTERY";
      
      public static const FEATURED_WHEEL:String = "FEATURED_WHEEL";
      
      private var _type:String;
      
      private var _timerVo:TimerBarComponentVo;
      
      private var _showDivider:Boolean;
      
      private var _rewardsWaiting:Boolean;
      
      public function FeaturedRunningEventVo()
      {
         super();
      }
      
      public function get headerIcon() : BriskDynaVo
      {
         switch(this.type)
         {
            case FEATURED_MYSTERY:
               return new BriskDynaVo("gui_main_hud","featured_icon_mystery");
            case FEATURED_WHEEL:
               return new BriskDynaVo("gui_main_hud","featured_icon_wheel");
            default:
               return null;
         }
      }
      
      public function get header() : String
      {
         switch(this.type)
         {
            case FEATURED_MYSTERY:
               return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.mystery.capital");
            case FEATURED_WHEEL:
               return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.wheel.capital");
            default:
               return "";
         }
      }
      
      public function get infoText() : String
      {
         switch(this.type)
         {
            case FEATURED_MYSTERY:
               return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.mystery");
            case FEATURED_WHEEL:
               if(this._rewardsWaiting)
               {
                  return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.wheel.rewards");
               }
               return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.wheel");
               break;
            default:
               return "";
         }
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function get showDivider() : Boolean
      {
         return this._showDivider;
      }
      
      public function set showDivider(param1:Boolean) : void
      {
         this._showDivider = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         this._timerVo = param1;
      }
      
      public function set rewardsWaiting(param1:Boolean) : void
      {
         this._rewardsWaiting = param1;
      }
   }
}

