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
         super();
      }
      
      public function get idleAnimationDuration() : Number
      {
         return this._idleAnimationDuration;
      }
      
      public function set idleAnimationDuration(param1:Number) : void
      {
         this._idleAnimationDuration = param1;
      }
      
      public function get spinAnimationCycleDuration() : Number
      {
         return this._spinAnimationCycleDuration;
      }
      
      public function set spinAnimationCycleDuration(param1:Number) : void
      {
         this._spinAnimationCycleDuration = param1;
      }
      
      public function get spinDecelerationDuration() : Number
      {
         return this._spinDecelerationDuration;
      }
      
      public function set spinDecelerationDuration(param1:Number) : void
      {
         this._spinDecelerationDuration = param1;
      }
      
      public function get itemsInPhase() : Vector.<Number>
      {
         return this._itemsInPhase;
      }
      
      public function set itemsInPhase(param1:Vector.<Number>) : void
      {
         this._itemsInPhase = param1;
      }
      
      public function get durationOfPhase() : Vector.<Number>
      {
         return this._durationOfPhase;
      }
      
      public function set durationOfPhase(param1:Vector.<Number>) : void
      {
         this._durationOfPhase = param1;
      }
   }
}

