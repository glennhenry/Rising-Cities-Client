package net.bigpoint.cityrama.view.bonusDay.components
{
   import net.bigpoint.cityrama.model.bonusDay.vo.BonusDaySideMenuVo;
   import net.bigpoint.cityrama.view.bonusDay.skins.BonusDayInfoActiveSkin;
   import net.bigpoint.cityrama.view.bonusDay.skins.BonusDayInfoSkin;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class BonusDayInfoComponent extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _skinParts = {
            "progressTimerSlim":false,
            "progressTimer":false
         };
      }
      
      public var progressTimer:TimerBarComponent;
      
      public var progressTimerSlim:SlimProgressBarTimer;
      
      private var _data:BonusDaySideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function BonusDayInfoComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponentVo = null;
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               addr0035:
               §§push(Boolean(this._data));
               if(!(_loc2_ && _loc3_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(_loc3_)
                     {
                        addr0051:
                        §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr0062);
                        }
                        §§goto(addr0066);
                     }
                  }
                  addr0062:
                  §§goto(addr0057);
               }
               §§goto(addr0051);
            }
            addr0057:
            §§push(this._isDirty);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            if(§§pop())
            {
               addr0066:
               _loc1_ = new TimerBarComponentVo();
               if(!_loc2_)
               {
                  _loc1_.startTime = this._data.startTime;
                  if(_loc3_)
                  {
                     _loc1_.cycleLength = this._data.duration;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00ac:
                        §§push(_loc1_);
                        §§push(this._data.startTime);
                        if(_loc3_)
                        {
                           §§push(§§pop() + this._data.duration);
                        }
                        §§pop().targetTime = §§pop();
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.currentTime = this._data.currentTimeStamp;
                           if(!_loc2_)
                           {
                              §§push(this.progressTimerSlim);
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr010a:
                                       this.progressTimerSlim.data = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr0112:
                                          §§push(this.progressTimer);
                                          if(!_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   addr0128:
                                                   this.progressTimer.data = _loc1_;
                                                   addr0124:
                                                }
                                             }
                                             §§goto(addr012b);
                                          }
                                          §§goto(addr0128);
                                       }
                                    }
                                    §§goto(addr012b);
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr010a);
                           }
                        }
                        §§goto(addr0112);
                     }
                     §§goto(addr012b);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr0124);
            }
            addr012b:
            return;
         }
         §§goto(addr0035);
      }
      
      public function set data(param1:BonusDaySideMenuVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._data = param1;
                     if(!_loc2_)
                     {
                        this._isDirty = true;
                        if(_loc3_ || _loc2_)
                        {
                           addr0078:
                           addr007f:
                           if(!this._data.bonusDayActivated)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0090:
                                 setStyle("skinClass",BonusDayInfoSkin);
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              setStyle("skinClass",BonusDayInfoActiveSkin);
                           }
                        }
                        §§goto(addr00af);
                     }
                  }
                  §§goto(addr0078);
               }
               addr00af:
               return;
            }
            §§goto(addr007f);
         }
         §§goto(addr0090);
      }
   }
}

