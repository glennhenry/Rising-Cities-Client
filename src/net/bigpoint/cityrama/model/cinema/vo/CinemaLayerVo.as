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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NO_VIDEOS_LEFT = 1;
         if(_loc1_)
         {
            NO_VIDEOS_AVAILABLE_PROVIDER = 2;
         }
      }
      
      private var _maxViews:uint;
      
      private var _realCurrencyRewardAmount:uint = 0;
      
      private var _videosWatchedToday:uint = 0;
      
      private var _videoAvailableFromProvider:Boolean;
      
      private var _availabilityTimer:TimerBarComponentVo;
      
      public function CinemaLayerVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function set videoAvailableFromProvider(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._videoAvailableFromProvider = param1;
         }
      }
      
      public function set videosWatchedToday(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._videosWatchedToday = param1;
         }
      }
      
      public function set availabilityTimer(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._availabilityTimer = param1;
         }
      }
      
      public function set maxViews(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._maxViews = param1;
         }
      }
      
      public function set realCurrencyRewardAmount(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._realCurrencyRewardAmount = param1;
         }
      }
      
      public function get videoAvailable() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._videoAvailableFromProvider);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(_loc1_ || _loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc2_)
                     {
                        addr0040:
                        §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this._videosWatchedToday < this.maxViews);
                           if(_loc1_)
                           {
                              addr0066:
                              if(§§pop())
                              {
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr0077:
                                    §§push(true);
                                    if(_loc1_)
                                    {
                                       §§goto(addr007d);
                                    }
                                 }
                                 else
                                 {
                                    addr007e:
                                    return false;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr007e);
                           }
                           §§goto(addr007d);
                        }
                        §§goto(addr007e);
                     }
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0040);
            }
            addr007d:
            return §§pop();
         }
         §§goto(addr0077);
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this.videoAvailable)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§push(LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.header.available.capital"));
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004f:
                  return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.header.unavailable.capital");
               }
               return §§pop();
            }
         }
         §§goto(addr004f);
      }
      
      public function get layerText() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(_loc1_))
         {
            if(this.videoAvailable)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0036);
               }
            }
            var _loc1_:* = this.videoUnavailableReason;
            if(!(_loc2_ && _loc3_))
            {
               §§push(NO_VIDEOS_AVAILABLE_PROVIDER);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00cb:
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr00f2:
                           §§push(1);
                           if(_loc2_ && Boolean(this))
                           {
                           }
                        }
                        §§goto(addr0111);
                     }
                     else
                     {
                        §§goto(addr00ee);
                     }
                  }
                  addr00ee:
                  §§goto(addr00ed);
               }
               addr00ed:
               if(NO_VIDEOS_LEFT === _loc1_)
               {
                  §§goto(addr00f2);
               }
               else
               {
                  §§push(2);
               }
               addr0111:
               switch(§§pop())
               {
                  case 0:
                     §§push(LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.unavailable.noAvailable"));
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                     break;
                  case 1:
                     return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.unavailable.noLeft");
                  default:
                     return "";
               }
               return §§pop();
            }
            §§goto(addr00cb);
         }
         addr0036:
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.text.available",[this._realCurrencyRewardAmount]);
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(!this.videoAvailable)
            {
               if(!_loc2_)
               {
                  §§goto(addr0022);
               }
            }
            return new BriskDynaVo("gui_popups_rewardLayer","polaroid_cinema_available");
         }
         addr0022:
         return new BriskDynaVo("gui_popups_rewardLayer","polaroid_cinema_unavailable");
      }
      
      private function get videoUnavailableReason() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(!this.videoAvailable)
            {
               if(_loc1_)
               {
                  §§push(this._videosWatchedToday);
                  if(!_loc2_)
                  {
                     if(§§pop() >= this.maxViews)
                     {
                        if(_loc1_)
                        {
                           addr0054:
                           §§push(NO_VIDEOS_LEFT);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr0076);
                        }
                     }
                     else
                     {
                        return NO_VIDEOS_AVAILABLE_PROVIDER;
                     }
                  }
                  return §§pop();
               }
               §§goto(addr0054);
            }
         }
         addr0076:
         return 0;
      }
      
      public function get availabilityTimer() : TimerBarComponentVo
      {
         return this._availabilityTimer;
      }
      
      public function get stepMarkerData() : StepMarkerVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:StepMarkerVo = new StepMarkerVo();
         if(!_loc3_)
         {
            _loc1_.currentProgress = this._videosWatchedToday;
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc1_.hasLastInterval = false;
            }
         }
         var _loc2_:int = 1;
         while(_loc2_ <= this.maxViews)
         {
            _loc1_.stepInactiveStyles.push("cinemaInactive");
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc1_.stepActiveStyles.push("active");
               if(!_loc3_)
               {
                  _loc1_.progressSteps.push(_loc2_);
                  if(!_loc3_)
                  {
                     _loc2_++;
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
   }
}

