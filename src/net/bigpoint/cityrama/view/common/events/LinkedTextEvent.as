package net.bigpoint.cityrama.view.common.events
{
   import flash.events.Event;
   
   public class LinkedTextEvent extends Event
   {
      
      public static const LINK_CLICKED:String = "LINK_CLICKED";
      
      public static const LINK_OVER:String = "LINK_OVER";
      
      public static const LINK_OUT:String = "LINK_OVER";
      
      public static const LINK_TYPE_PLAYFIELDITEM:String = "LINK_TYPE_PLAYFIELDITEM";
      
      private var _linkType:String;
      
      private var _linkParams:Array;
      
      public function LinkedTextEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "LINK_TYPE_PLAYFIELDITEM", param5:Array = null)
      {
         super(param1,param2,param3);
         this._linkType = param4;
         this._linkParams = param5;
      }
      
      public function get linkType() : String
      {
         return this._linkType;
      }
      
      public function get linkParams() : Array
      {
         return this._linkParams;
      }
   }
}

