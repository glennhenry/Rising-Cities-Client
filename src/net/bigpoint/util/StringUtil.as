package net.bigpoint.util
{
   public class StringUtil
   {
      
      public function StringUtil()
      {
         super();
      }
      
      public static function makeDate(param1:Number) : String
      {
         if(param1 < 60 * 60)
         {
         }
         return "blas";
      }
      
      public static function ucfirst(param1:String) : String
      {
         var _loc2_:String = "";
         _loc2_ += param1.charAt(0).toUpperCase();
         return _loc2_ + param1.substr(1,param1.length);
      }
      
      public static function stripHTML(param1:String) : String
      {
         if(param1)
         {
            return param1.replace(/<.*?>/g,"");
         }
         return "";
      }
      
      public static function replaceInString(param1:String, param2:String, param3:String) : String
      {
         var _loc4_:String = "";
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            if(param1.charAt(_loc5_) == param2)
            {
               _loc4_ += param3;
            }
            else
            {
               _loc4_ += param1.charAt(_loc5_);
            }
            _loc5_++;
         }
         return _loc4_;
      }
   }
}

