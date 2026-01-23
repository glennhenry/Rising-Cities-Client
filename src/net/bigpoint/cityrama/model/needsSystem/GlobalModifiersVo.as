package net.bigpoint.cityrama.model.needsSystem
{
   public class GlobalModifiersVo
   {
      
      private var _energyModifier:Number;
      
      private var _moodModifier:Number;
      
      private var _eventModifier:Number;
      
      public function GlobalModifiersVo(param1:Number, param2:Number, param3:Number)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            super();
            if(_loc4_ || Boolean(param2))
            {
               addr003e:
               this._energyModifier = param1;
               if(!_loc5_)
               {
                  this._moodModifier = param2;
                  if(!_loc5_)
                  {
                     addr0055:
                     this._eventModifier = param3;
                  }
                  return;
               }
            }
            §§goto(addr0055);
         }
         §§goto(addr003e);
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

