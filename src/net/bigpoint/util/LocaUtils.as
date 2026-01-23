package net.bigpoint.util
{
   import flash.system.Capabilities;
   import mx.formatters.NumberBaseRoundType;
   import mx.formatters.NumberFormatter;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.view.common.components.LinkedText;
   
   public class LocaUtils
   {
      
      private static const GAME_NAME_1:String = "GAME_NAME_1";
      
      private static const GAME_NAME_1_CAPITAL:String = "GAME_NAME_1_CAPITAL";
      
      public function LocaUtils()
      {
         super();
      }
      
      public static function getThousendSeperatedNumber(param1:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc2_:NumberFormatter = new NumberFormatter();
         _loc2_.useThousandsSeparator = true;
         _loc2_.useNegativeSign = true;
         _loc2_.rounding = NumberBaseRoundType.NONE;
         var _loc5_:String = Capabilities.language;
         switch(_loc5_)
         {
            case "en":
            case "uk":
            case "gb":
            case "us":
               _loc3_ = ",";
               _loc4_ = ".";
               break;
            default:
               _loc3_ = ".";
               _loc4_ = ",";
         }
         _loc2_.thousandsSeparatorFrom = _loc3_;
         _loc2_.thousandsSeparatorTo = _loc3_;
         _loc2_.decimalSeparatorFrom = _loc4_;
         _loc2_.decimalSeparatorTo = _loc4_;
         return String(_loc2_.format(param1));
      }
      
      public static function getDurationHM(param1:int) : String
      {
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = Math.floor(param1 % 3600 / 60);
         var _loc5_:uint = param1 % 60;
         if(_loc4_ == 0 && _loc5_ > 0)
         {
            _loc4_ = 1;
         }
         if(_loc3_ < 10)
         {
            _loc2_ += "0";
         }
         _loc2_ += _loc3_ + ":";
         if(_loc4_ < 10)
         {
            _loc2_ += "0";
         }
         return _loc2_ + _loc4_;
      }
      
      public static function getDuration(param1:int) : String
      {
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = Math.floor(param1 % 3600 / 60);
         var _loc5_:uint = param1 % 60;
         if(_loc3_ < 10)
         {
            _loc2_ += "0";
         }
         _loc2_ += _loc3_ + ":";
         if(_loc4_ < 10)
         {
            _loc2_ += "0";
         }
         _loc2_ += _loc4_ + ":";
         if(_loc5_ < 10)
         {
            _loc2_ += "0";
         }
         return _loc2_ + _loc5_;
      }
      
      public static function getDurationM(param1:int) : String
      {
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = Math.floor(param1 / 60);
         var _loc5_:uint = param1 % 60;
         if(_loc4_ < 10)
         {
            _loc2_ += "0";
         }
         return _loc2_ + _loc4_;
      }
      
      public static function getDurationH(param1:int) : uint
      {
         return Math.abs(Math.floor(param1 / 3600) as int);
      }
      
      public static function getDaysFromSeconds(param1:Number) : uint
      {
         return Math.abs(Math.floor(getDurationH(param1) / 24));
      }
      
      public static function getExactDaysFromSecond(param1:Number) : Number
      {
         return getDurationH(param1) / 24;
      }
      
      public static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         if(param3 == null)
         {
            param3 = [];
         }
         var _loc4_:String = mx.utils.StringUtil.substitute(ResourceManager.getInstance().getString(param1,param2),param3);
         checkGlobalWildCard(_loc4_);
         return _loc4_;
      }
      
      public static function getHoursFromSeconds(param1:Number) : int
      {
         return Math.floor(getDurationH(param1) / 60);
      }
      
      public static function checkGlobalWildCard(param1:String) : String
      {
         var _loc4_:String = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:String = param1;
         var _loc3_:Vector.<String> = new <String>[GAME_NAME_1,GAME_NAME_1_CAPITAL];
         for each(_loc4_ in _loc3_)
         {
            if(param1.indexOf("{" + _loc4_ + "}") != -1)
            {
               var _loc5_:RegExp = new RegExp(("{" + _loc4_ + "}").toString(),"g");
               var _loc6_:String = "default";
               var _loc7_:String = getString("rcl.misc.branding" + "","rcl.misc.branding." + null + "." + _loc4_);
               _loc2_ = _loc2_.replace(null,null);
            }
         }
         return _loc2_;
      }
      
      public static function getCurrencySymbol(param1:String) : String
      {
         switch(param1)
         {
            case "EUR":
               return "€";
            case "GBP":
               return "£";
            case "USD":
            case "AUD":
            case "CAD":
               return "$";
            case "JPY":
               return "¥";
            case "CHF":
               return "SFr";
            default:
               return param1;
         }
      }
      
      public static function removePossibleLinks(param1:String) : String
      {
         var _loc2_:RegExp = null;
         if(param1 == null)
         {
            return null;
         }
         if(param1.indexOf(LinkedText.LINK_START_PLAYFIELDITEM) != -1)
         {
            _loc2_ = /{linkStart_playfieldItem}/g;
            param1 = param1.replace(_loc2_,"");
         }
         if(param1.indexOf(LinkedText.LINK_END_PLAYFIELDITEM) != -1)
         {
            _loc2_ = /{linkEnd_playfieldItem}/g;
            param1 = param1.replace(_loc2_,"");
         }
         return param1;
      }
   }
}

