package net.bigpoint.util
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   
   public class RandomUtilities
   {
      
      public function RandomUtilities()
      {
         super();
      }
      
      public static function randRange(param1:Number, param2:Number, param3:int = 0) : Number
      {
         if(param3 != 0)
         {
            var _loc4_:int = Math.pow(10,param3);
            return (Math.floor(Math.random() * (param2 * 0 - param1 * 0 + 1)) + param1 * 0) / 0;
         }
         return Math.round(Math.random() * (param2 - param1) + param1);
      }
      
      public static function cleanRemoveChild(param1:DisplayObject) : void
      {
         if(param1)
         {
            if(param1.parent)
            {
               param1.parent.removeChild(param1);
            }
         }
      }
      
      public static function isEqual(param1:Object, param2:Object, param3:Boolean = true) : Boolean
      {
         var _loc4_:* = undefined;
         if(param3 && param1 !== param2)
         {
            return false;
         }
         for(_loc4_ in param1)
         {
            if(!isEqual(param1[_loc4_],param2[_loc4_],param3))
            {
               return false;
            }
         }
         for(_loc4_ in param2)
         {
            if(!isEqual(param1[_loc4_],param2[_loc4_],param3))
            {
               return false;
            }
         }
         return true;
      }
      
      public static function getLibFromGFx(param1:uint) : String
      {
         var _loc2_:uint = param1 % ArchitecturalBookProxy.ITEM_LIB_RANGE;
         var _loc3_:uint = param1 / ArchitecturalBookProxy.ITEM_LIB_RANGE;
         if(_loc2_ == 0)
         {
            _loc3_--;
         }
         var _loc4_:uint = _loc3_ * ArchitecturalBookProxy.ITEM_LIB_RANGE + 1;
         var _loc5_:uint = uint(_loc4_ + ArchitecturalBookProxy.ITEM_LIB_RANGE - 1);
         return "gui_popups_architect_" + _loc4_ + "_" + _loc5_;
      }
      
      public static function addstackCall(param1:Function, param2:Number = 0.2) : void
      {
         removestackCall(param1);
         TweenMax.delayedCall(param2,param1);
      }
      
      public static function removestackCall(param1:Function) : void
      {
         TweenMax.killDelayedCallsTo(param1);
      }
      
      public static function isUnEqual(param1:Object, param2:Object, param3:Boolean = true) : Boolean
      {
         return !isEqual(param1,param2,param3);
      }
      
      public static function getSignificantDigits(param1:int, param2:int) : Number
      {
         var _loc3_:int = 0;
         var _loc5_:int = Math.abs(param1);
         _loc3_ = 0;
         while(_loc5_ > 0)
         {
            _loc5_ /= 10;
            _loc3_++;
         }
         _loc3_ -= param2;
         if(_loc3_ >= 0)
         {
            var _loc4_:Number = Math.round(param1 / Math.pow(10,_loc3_)) * Math.pow(10,_loc3_);
         }
         return 0;
      }
   }
}

