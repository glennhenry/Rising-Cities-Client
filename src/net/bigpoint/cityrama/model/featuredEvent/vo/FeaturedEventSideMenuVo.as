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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function showSideMenu() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.wheelRewardsWaiting);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr0056:
                           §§pop();
                           if(_loc2_ || Boolean(this))
                           {
                              addr0064:
                              §§push(this._featuredEvents == null);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(!§§pop());
                                 if(_loc2_)
                                 {
                                    §§goto(addr0087);
                                 }
                                 §§goto(addr0091);
                              }
                              addr0087:
                              var _temp_8:* = §§pop();
                              §§goto(addr009b);
                           }
                           §§goto(addr0092);
                        }
                     }
                     addr009b:
                     §§goto(addr0088);
                  }
                  addr0088:
                  §§push(_temp_8);
                  if(_temp_8)
                  {
                     if(_loc2_)
                     {
                        addr0091:
                        §§pop();
                        addr0092:
                        return this._featuredEvents.length > 0;
                     }
                  }
               }
               §§goto(addr0056);
            }
            §§goto(addr0091);
         }
         §§goto(addr0064);
      }
      
      public function get multipleEvents() : Boolean
      {
         return this._featuredEvents.length > 1;
      }
      
      public function get headerIcon() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this.multipleEvents)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0035);
               }
            }
            return new BriskDynaVo("gui_main_hud","featured_icon");
         }
         addr0035:
         return this._featuredEvents[0].headerIcon;
      }
      
      public function get header() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.multipleEvents)
            {
               if(!_loc1_)
               {
                  return this._featuredEvents[0].header;
               }
            }
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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:FeaturedRunningEventVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._featuredEvents)
         {
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               _loc2_.showDivider = true;
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_.addItem(_loc2_);
         }
         if(!_loc5_)
         {
            _loc2_.showDivider = false;
         }
         return _loc1_;
      }
      
      public function set featuredEvents(param1:Vector.<FeaturedRunningEventVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._featuredEvents = param1;
         }
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:FeaturedRunningEventVo = null;
         if(_loc5_)
         {
            §§push(Boolean(this._featuredEvents));
            if(!(_loc6_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0063);
               }
            }
            addr0064:
            §§goto(addr0051);
         }
         addr0051:
         §§push(this.wheelRewardsWaiting);
         if(_loc5_ || _loc3_)
         {
            addr0063:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0075:
            for each(_loc2_ in this._featuredEvents)
            {
               if(_loc5_)
               {
                  _loc2_.timerVo.currentTime = param1;
               }
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FeaturedRunningEventVo = null;
         if(_loc3_)
         {
            this._wheelRewardsWaiting = param1;
            if(_loc3_)
            {
               if(this._wheelRewardsWaiting)
               {
                  if(!_loc4_)
                  {
                     this._featuredEvents = new Vector.<FeaturedRunningEventVo>();
                     addr0034:
                  }
                  _loc2_ = new FeaturedRunningEventVo();
                  if(!_loc4_)
                  {
                     _loc2_.type = FeaturedRunningEventVo.FEATURED_WHEEL;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr0083:
                        _loc2_.rewardsWaiting = true;
                        if(_loc3_ || param1)
                        {
                           this._featuredEvents.push(_loc2_);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0083);
               }
               addr009e:
               return;
            }
         }
         §§goto(addr0034);
      }
      
      public function get showNew() : Boolean
      {
         return this._showNew;
      }
      
      public function set showNew(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._showNew = param1;
         }
      }
   }
}

