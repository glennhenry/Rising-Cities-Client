package net.bigpoint.cityrama.model.featuredEvent.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class FeaturedRunningEventVo
   {
      
      public static const FEATURED_MYSTERY:String = "FEATURED_MYSTERY";
      
      public static const FEATURED_WHEEL:String = "FEATURED_WHEEL";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         FEATURED_MYSTERY = "FEATURED_MYSTERY";
         if(_loc1_ || _loc2_)
         {
            FEATURED_WHEEL = "FEATURED_WHEEL";
         }
      }
      
      private var _type:String;
      
      private var _timerVo:TimerBarComponentVo;
      
      private var _showDivider:Boolean;
      
      private var _rewardsWaiting:Boolean;
      
      public function FeaturedRunningEventVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function get headerIcon() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this.type;
         if(_loc3_ || Boolean(this))
         {
            §§push(FEATURED_MYSTERY);
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc2_ && Boolean(_loc1_))
                        {
                        }
                     }
                     else
                     {
                        addr00aa:
                        §§push(1);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                     addr00c9:
                     switch(§§pop())
                     {
                        case 0:
                           return new BriskDynaVo("gui_main_hud","featured_icon_mystery");
                        case 1:
                           return new BriskDynaVo("gui_main_hud","featured_icon_wheel");
                        default:
                           return null;
                     }
                  }
                  else
                  {
                     addr00a6:
                     addr00a5:
                     if(FEATURED_WHEEL === _loc1_)
                     {
                        §§goto(addr00aa);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr00a6);
            }
            §§goto(addr00a5);
         }
         §§goto(addr00aa);
      }
      
      public function get header() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this.type);
         loop0:
         do
         {
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(FEATURED_MYSTERY);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00aa:
                           §§push(0);
                           if(_loc2_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr00c5:
                           §§push(1);
                           if(_loc2_)
                           {
                           }
                        }
                        addr00dc:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.mystery.capital"));
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           case 1:
                              break;
                           default:
                              return "";
                        }
                     }
                     else
                     {
                        addr00c1:
                        addr00c0:
                        if(FEATURED_WHEEL === _loc1_)
                        {
                           §§goto(addr00c5);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr00c0);
            }
            §§goto(addr00aa);
            return LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.wheel.capital");
         }
         while(_loc2_ && _loc1_);
         
         return §§pop();
      }
      
      public function get infoText() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this.type);
         loop0:
         while(true)
         {
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(FEATURED_MYSTERY);
               if(_loc2_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || Boolean(this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           addr00bb:
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr00e2:
                           §§push(1);
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        §§goto(addr0101);
                     }
                     addr00de:
                     addr00dd:
                     if(FEATURED_WHEEL === _loc1_)
                     {
                        §§goto(addr00e2);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr0101:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.mystery"));
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           break loop0;
                        case 1:
                           if(this._rewardsWaiting)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.wheel.rewards"));
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§push(LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.infotext.wheel"));
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                           }
                     }
                     return "";
                     §§goto(addr00e2);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00dd);
            }
            §§goto(addr00bb);
         }
         return §§pop();
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showDivider = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._type = param1;
         }
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._timerVo = param1;
         }
      }
      
      public function set rewardsWaiting(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._rewardsWaiting = param1;
         }
      }
   }
}

