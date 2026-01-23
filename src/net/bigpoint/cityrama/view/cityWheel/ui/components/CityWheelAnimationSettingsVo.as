package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   public class CityWheelAnimationSettingsVo
   {
      
      private var _idleAnimationDuration:Number;
      
      private var _spinAnimationCycleDuration:Number;
      
      private var _spinDecelerationDuration:Number;
      
      private var _itemsInPhase:Vector.<Number>;
      
      private var _durationOfPhase:Vector.<Number>;
      
      public function CityWheelAnimationSettingsVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get idleAnimationDuration() : Number
      {
         return this._idleAnimationDuration;
      }
      
      public function set idleAnimationDuration(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._idleAnimationDuration = param1;
         }
      }
      
      public function get spinAnimationCycleDuration() : Number
      {
         return this._spinAnimationCycleDuration;
      }
      
      public function set spinAnimationCycleDuration(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._spinAnimationCycleDuration = param1;
         }
      }
      
      public function get spinDecelerationDuration() : Number
      {
         return this._spinDecelerationDuration;
      }
      
      public function set spinDecelerationDuration(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._spinDecelerationDuration = param1;
         }
      }
      
      public function get itemsInPhase() : Vector.<Number>
      {
         return this._itemsInPhase;
      }
      
      public function set itemsInPhase(param1:Vector.<Number>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._itemsInPhase = param1;
         }
      }
      
      public function get durationOfPhase() : Vector.<Number>
      {
         return this._durationOfPhase;
      }
      
      public function set durationOfPhase(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._durationOfPhase = param1;
         }
      }
   }
}

