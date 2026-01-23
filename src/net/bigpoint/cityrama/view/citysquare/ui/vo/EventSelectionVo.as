package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class EventSelectionVo
   {
      
      public static const STATE_RUNNING:String = "STATE_RUNNING";
      
      public static const STATE_AVAILABLE:String = "STATE_AVAILABLE";
      
      public static const STATE_UPCOMING:String = "STATE_UPCOMING";
      
      public static const EMPTY_SLOT:String = "EMPTY_SLOT";
      
      private static const stateValidation:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         STATE_RUNNING = "STATE_RUNNING";
         if(_loc2_ || _loc2_)
         {
            STATE_AVAILABLE = "STATE_AVAILABLE";
            if(!_loc1_)
            {
               addr004c:
               STATE_UPCOMING = "STATE_UPCOMING";
               if(_loc2_)
               {
                  EMPTY_SLOT = "EMPTY_SLOT";
                  if(!(_loc1_ && _loc1_))
                  {
                     stateValidation = new <String>[STATE_RUNNING,STATE_AVAILABLE,STATE_UPCOMING,EMPTY_SLOT];
                     addr0070:
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0070);
            }
            addr00b3:
            return;
         }
      }
      §§goto(addr004c);
      
      private var _state:String;
      
      private var _configId:Number;
      
      private var _gfxPackId:Number;
      
      private var _localePackId:String;
      
      private var _remainingTime:Number;
      
      private var _originalTime:Number;
      
      private var _currentProgress:Number;
      
      public function EventSelectionVo(param1:String, param2:Number, param3:int, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_)
         {
            super();
            if(!_loc8_)
            {
               this._state = param1;
               if(_loc9_)
               {
                  this._configId = param2;
                  if(!(_loc8_ && Boolean(param2)))
                  {
                     this._gfxPackId = param3;
                     if(!_loc8_)
                     {
                        this._localePackId = param4;
                        if(!_loc8_)
                        {
                           addr0069:
                           this._remainingTime = param6;
                           if(_loc9_)
                           {
                              §§goto(addr0075);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr009c);
            }
            addr0075:
            this._originalTime = param5;
            if(_loc9_)
            {
               this._currentProgress = param7;
               if(!_loc8_)
               {
                  addr009c:
                  if(stateValidation.indexOf(this._state) == -1)
                  {
                     if(_loc9_)
                     {
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr00cc);
               }
               addr00b3:
               §§push(§§findproperty(RamaCityError));
               §§push(this + "illegal state: ");
               if(_loc9_)
               {
                  §§push(§§pop() + this._state);
               }
               throw new §§pop().RamaCityError(§§pop());
            }
            addr00cc:
            return;
         }
         §§goto(addr009c);
      }
      
      public function get currentProgress() : Number
      {
         return this._currentProgress;
      }
      
      public function get remainingTime() : Number
      {
         return this._remainingTime;
      }
      
      public function get localePackId() : String
      {
         return this._localePackId;
      }
      
      public function get gfxPackId() : Number
      {
         return this._gfxPackId;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get originalTime() : Number
      {
         return this._originalTime;
      }
      
      public function set remainingTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._remainingTime = param1;
         }
      }
   }
}

