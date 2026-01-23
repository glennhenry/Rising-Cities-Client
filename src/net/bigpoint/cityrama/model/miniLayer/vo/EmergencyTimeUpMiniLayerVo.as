package net.bigpoint.cityrama.model.miniLayer.vo
{
   public class EmergencyTimeUpMiniLayerVo
   {
      
      private var _title:String;
      
      private var _explanationText:String;
      
      private var _emergencyBmpName:String;
      
      private var _emergencyLibName:String;
      
      private var _emergencySWFName:String;
      
      private var _buttonLabel:String;
      
      public function EmergencyTimeUpMiniLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get explanationText() : String
      {
         return this._explanationText;
      }
      
      public function get emergencyBmpName() : String
      {
         return this._emergencyBmpName;
      }
      
      public function get emergencyLibName() : String
      {
         return this._emergencyLibName;
      }
      
      public function get buttonLabel() : String
      {
         return this._buttonLabel;
      }
      
      public function get emergencySWFName() : String
      {
         return this._emergencySWFName;
      }
      
      public function set title(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._title = param1;
         }
      }
      
      public function set explanationText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._explanationText = param1;
         }
      }
      
      public function set emergencyBmpName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._emergencyBmpName = param1;
         }
      }
      
      public function set emergencyLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._emergencyLibName = param1;
         }
      }
      
      public function set emergencySWFName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._emergencySWFName = param1;
         }
      }
      
      public function set buttonLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._buttonLabel = param1;
         }
      }
   }
}

