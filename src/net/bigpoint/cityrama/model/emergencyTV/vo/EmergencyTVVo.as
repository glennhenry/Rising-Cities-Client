package net.bigpoint.cityrama.model.emergencyTV.vo
{
   public class EmergencyTVVo
   {
      
      private var _active:Boolean;
      
      private var _showTime:Number = 30000;
      
      private var _newsText:String;
      
      private var _showData:TVShowVo;
      
      public var affectedBuildingId:Number;
      
      public function EmergencyTVVo(param1:Boolean = false)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super();
            if(!_loc3_)
            {
               this._active = param1;
               if(!_loc3_)
               {
                  addr003c:
                  this._showData = new TVShowVo();
               }
               §§goto(addr0047);
            }
            §§goto(addr003c);
         }
         addr0047:
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function get showTime() : Number
      {
         return this._showTime;
      }
      
      public function get newsText() : String
      {
         return this._newsText;
      }
      
      public function get showData() : TVShowVo
      {
         return this._showData;
      }
      
      public function set newsText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._newsText = param1;
         }
      }
      
      public function set showData(param1:TVShowVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._showData = param1;
         }
      }
      
      public function set showTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showTime = param1;
         }
      }
   }
}

