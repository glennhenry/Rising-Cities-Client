package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class RentCollectorSideMenuVo
   {
      
      private var _timerVo:TimerBarComponentVo;
      
      private var _currentState:String;
      
      private var _saleActive:Boolean = false;
      
      private var _collectedVC:Number = 0;
      
      private var _collectedPP:Number = 0;
      
      private var _collectedEP:Number = 0;
      
      public function RentCollectorSideMenuVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._timerVo = param1;
         }
      }
      
      public function get currentState() : String
      {
         return this._currentState;
      }
      
      public function set currentState(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentState = param1;
         }
      }
      
      public function get rentCollectorRunning() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._timerVo == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function get collectedVC() : Number
      {
         return this._collectedVC;
      }
      
      public function set collectedVC(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._collectedVC = param1;
         }
      }
      
      public function get collectedPP() : Number
      {
         return this._collectedPP;
      }
      
      public function set collectedPP(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._collectedPP = param1;
         }
      }
      
      public function get collectedEP() : Number
      {
         return this._collectedEP;
      }
      
      public function set collectedEP(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._collectedEP = param1;
         }
      }
      
      public function get saleActive() : Boolean
      {
         return this._saleActive;
      }
      
      public function set saleActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._saleActive = param1;
         }
      }
      
      public function get iconVo() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.rentCollectorRunning)
            {
               if(_loc1_)
               {
                  return new BriskDynaVo("gui_popups_rentCollector","collector_active_icon");
               }
            }
         }
         return new BriskDynaVo("gui_popups_rentCollector","collector_inactive_icon");
      }
      
      public function get overIconVo() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(this.rentCollectorRunning)
            {
               if(_loc2_ || _loc1_)
               {
                  return new BriskDynaVo("gui_popups_rentCollector","collector_active_icon_over");
               }
            }
         }
         return new BriskDynaVo("gui_popups_rentCollector","collector_inactive_icon");
      }
   }
}

