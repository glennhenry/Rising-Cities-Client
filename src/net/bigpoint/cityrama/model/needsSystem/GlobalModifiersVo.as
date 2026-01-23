package net.bigpoint.cityrama.model.needsSystem
{
   public class GlobalModifiersVo
   {
      
      private var _energyModifier:Number;
      
      private var _moodModifier:Number;
      
      private var _eventModifier:Number;
      
      public function GlobalModifiersVo(param1:Number, param2:Number, param3:Number)
      {
         super();
         this._energyModifier = param1;
         this._moodModifier = param2;
         this._eventModifier = param3;
      }
      
      public function get moodModifier() : Number
      {
         return this._moodModifier;
      }
      
      public function get energyModifier() : Number
      {
         return this._energyModifier;
      }
      
      public function get eventModifier() : Number
      {
         return this._eventModifier;
      }
   }
}

