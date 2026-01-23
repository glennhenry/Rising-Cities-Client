package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class StatsProgressBarTraitThresholdsVo
   {
      
      public static const TIER_BRONZE:uint = 1;
      
      public static const TIER_SILVER:uint = 2;
      
      public static const TIER_GOLD:uint = 3;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         TIER_BRONZE = 1;
         if(_loc1_)
         {
            addr0022:
            TIER_SILVER = 2;
            if(_loc1_)
            {
               TIER_GOLD = 3;
            }
         }
         return;
      }
      §§goto(addr0022);
      
      private const validTiers:Vector.<uint>;
      
      private var _tier:uint;
      
      private var _thresholdScalar:Number;
      
      public function StatsProgressBarTraitThresholdsVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.validTiers = new <uint>[TIER_BRONZE,TIER_SILVER,TIER_GOLD];
            if(!_loc1_)
            {
               addr0053:
               super();
            }
            return;
         }
         §§goto(addr0053);
      }
      
      public function get tier() : uint
      {
         return this._tier;
      }
      
      public function set tier(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._tier = param1;
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0049);
         }
         addr0035:
         if(this.validTiers.indexOf(param1) == -1)
         {
            if(!_loc3_)
            {
               addr0049:
               §§push(§§findproperty(RamaCityError));
               §§push(this + "non valid tier ");
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               throw new §§pop().RamaCityError(§§pop());
            }
         }
      }
      
      public function get localeId() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this.tier;
         if(_loc3_)
         {
            §§push(TIER_BRONZE);
            if(!_loc2_)
            {
               §§push(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc2_ && Boolean(_loc1_))
                        {
                        }
                     }
                     else
                     {
                        addr00e5:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(TIER_SILVER);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           addr00ca:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr00e5);
                              }
                              else
                              {
                                 addr00f8:
                                 §§push(2);
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                              }
                              §§goto(addr0117);
                           }
                           else
                           {
                              §§goto(addr00f4);
                           }
                        }
                        addr00f4:
                        §§goto(addr00f3);
                     }
                     addr00f3:
                     if(TIER_GOLD === _loc1_)
                     {
                        §§goto(addr00f8);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0117);
                  }
                  addr0117:
                  switch(§§pop())
                  {
                     case 0:
                        §§push("rcl.tooltips.schoolBook.trait.bronze");
                        if(_loc3_ || _loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0061);
                        break;
                     case 1:
                        §§push("rcl.tooltips.schoolBook.trait.silver");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                        break;
                     case 2:
                        §§push("rcl.tooltips.schoolBook.trait.gold");
                        if(!_loc2_)
                        {
                           addr0061:
                           return §§pop();
                        }
                        break;
                     default:
                        return "";
                  }
                  return §§pop();
               }
               §§goto(addr00ca);
            }
            §§goto(addr00f3);
         }
         §§goto(addr00e5);
      }
      
      public function get thresholdScalar() : Number
      {
         return this._thresholdScalar;
      }
      
      public function set thresholdScalar(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._thresholdScalar = param1;
         }
      }
   }
}

