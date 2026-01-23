package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RentCollectorActivatedVo
   {
      
      private var _stacked:Boolean;
      
      private var _packGfxId:Number;
      
      private var _timerVo:TimerBarComponentVo;
      
      public function RentCollectorActivatedVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function get stacked() : Boolean
      {
         return this._stacked;
      }
      
      public function get topText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this.stacked)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0035:
                  §§push(LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.stacked.flavour"));
                  if(!(_loc1_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004f:
                  return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.activated.flavour");
               }
               return §§pop();
            }
            §§goto(addr004f);
         }
         §§goto(addr0035);
      }
      
      public function get bottomText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this.stacked)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.stacked.bottomText"));
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0047:
                  return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.activated.bottomText");
               }
               return §§pop();
            }
         }
         §§goto(addr0047);
      }
      
      public function get collectorIcon() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_rentCollector");
         §§push("rentCollector_big_");
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + this._packGfxId);
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function set stacked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._stacked = param1;
         }
      }
      
      public function set packGfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._packGfxId = param1;
         }
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._timerVo = param1;
         }
      }
   }
}

