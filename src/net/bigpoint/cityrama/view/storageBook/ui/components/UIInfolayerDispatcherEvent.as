package net.bigpoint.cityrama.view.storageBook.ui.components
{
   import flash.events.Event;
   
   public class UIInfolayerDispatcherEvent extends Event
   {
      
      public static const SHOW_UI_INFOLAYER:String = "SHOW_UI_INFOLAYER";
      
      public static const HIDE_UI_INFOLAYER:String = "HIDE_UI_INFOLAYER";
      
      public static const CALLER_TYPE_GOOD:String = "good";
      
      public static const CALLER_TYPE_BOOSTER:String = "booster";
      
      public static const CALLER_TYPE_IMPROVEMENT:String = "improv";
      
      public static const CALLER_TYPE_IMPROVEMENT_BOOSTER:String = "CALLER_TYPE_IMPROVEMENT_BOOSTER";
      
      public static const CALLER_TYPE_PFI:String = "CALLER_TYPE_PFI";
      
      private var _cid:Number;
      
      private var _callerType:String;
      
      public function UIInfolayerDispatcherEvent(param1:String, param2:String = "", param3:Number = -1, param4:Boolean = true, param5:Boolean = false)
      {
         this._cid = param3;
         this._callerType = param2;
         super(param1,param4,param5);
      }
      
      public function get cid() : Number
      {
         return this._cid;
      }
      
      public function get callerType() : String
      {
         return this._callerType;
      }
   }
}

