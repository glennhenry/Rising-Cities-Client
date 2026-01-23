package net.bigpoint.cityrama.view.newsscreen.vo
{
   public class NewsScreenSlideVo
   {
      
      public static const EXTERNAL:String = "EXTERNAL";
      
      public static const EXTERNAL_PARAM:String = "EXTERNAL_PARAM";
      
      public static const EKOMI:String = "EKOMI";
      
      public static const PAYMENT:String = "PAYMENT";
      
      public static const PLAYFIELD_ITEM:String = "PLAYFIELD_ITEM";
      
      public static const FORUM:String = "FORUM";
      
      public static const CITY_TREASURY:String = "CITY_TREASURY";
      
      public static const GOOD:String = "GOOD";
      
      public static const EVENT_SQUARE:String = "EVENT_SQUARE";
      
      public static const CITY_WHEEL:String = "CITY_WHEEL";
      
      public static const MYSTERY_BUILDING:String = "MYSTERY_BUILDING";
      
      public static const EXPANSION_SALE:String = "EXPANSION_SALE";
      
      public static const NO_ACTION:String = "NO_ACTION";
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _type:String = "";
      
      private var _linkValue:String;
      
      private var _orderId:int;
      
      public function NewsScreenSlideVo()
      {
         super();
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         this._gfxId = param1;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function set localeId(param1:String) : void
      {
         this._localeId = param1;
      }
      
      public function get linkValue() : String
      {
         return this._linkValue;
      }
      
      public function set linkValue(param1:String) : void
      {
         this._linkValue = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get haslink() : Boolean
      {
         return this._type != "";
      }
      
      public function get orderId() : int
      {
         return this._orderId;
      }
      
      public function set orderId(param1:int) : void
      {
         this._orderId = param1;
      }
      
      public function get buttonLabelIdentifier() : String
      {
         switch(this.type)
         {
            case EXTERNAL:
            case EXTERNAL_PARAM:
               return "toLink";
            case EKOMI:
               return "toEkomi";
            case PLAYFIELD_ITEM:
               return "toArchitectualBook";
            case FORUM:
               return "toForum";
            case CITY_TREASURY:
               return "toTreasury";
            case EVENT_SQUARE:
               return "toEventSquare";
            case CITY_WHEEL:
               return "toCityWheel";
            case MYSTERY_BUILDING:
               return "toMystery";
            case NO_ACTION:
               return "close";
            default:
               return "close";
         }
      }
   }
}

