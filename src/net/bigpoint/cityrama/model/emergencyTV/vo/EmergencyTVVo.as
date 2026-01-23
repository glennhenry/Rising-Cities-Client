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
         super();
         this._active = param1;
         this._showData = new TVShowVo();
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
         this._newsText = param1;
      }
      
      public function set showData(param1:TVShowVo) : void
      {
         this._showData = param1;
      }
      
      public function set showTime(param1:Number) : void
      {
         this._showTime = param1;
      }
   }
}

