package net.bigpoint.cityrama.model.assistants.vo
{
   public class PatrolOptionVo
   {
      
      private var _gfxId:Number;
      
      private var _name:String;
      
      private var _price:Number;
      
      private var _btnText:String;
      
      private var _btnTooltip:String;
      
      private var _currency:String = "CURR_REAL";
      
      private var _affordable:Boolean;
      
      private var _configId:Number;
      
      private var _rate:Number;
      
      private var _runtimeHours:Number;
      
      private var _rateText:String;
      
      public function PatrolOptionVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function get rateText() : String
      {
         return this._rateText;
      }
      
      public function set rateText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._rateText = param1;
         }
      }
      
      public function get rate() : Number
      {
         return this._rate;
      }
      
      public function set rate(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._rate = param1;
         }
      }
      
      public function get runtimeHours() : Number
      {
         return this._runtimeHours;
      }
      
      public function set runtimeHours(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._runtimeHours = param1;
         }
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._gfxId = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._name = param1;
         }
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._price = param1;
         }
      }
      
      public function get btnText() : String
      {
         return this._btnText;
      }
      
      public function set btnText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._btnText = param1;
         }
      }
      
      public function get btnTooltip() : String
      {
         return this._btnTooltip;
      }
      
      public function set btnTooltip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._btnTooltip = param1;
         }
      }
      
      public function get currency() : String
      {
         return this._currency;
      }
      
      public function set currency(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currency = param1;
         }
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._affordable = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._configId = param1;
         }
      }
   }
}

