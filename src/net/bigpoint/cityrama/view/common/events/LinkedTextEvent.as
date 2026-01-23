package net.bigpoint.cityrama.view.common.events
{
   import flash.events.Event;
   
   public class LinkedTextEvent extends Event
   {
      
      public static const LINK_CLICKED:String = "LINK_CLICKED";
      
      public static const LINK_OVER:String = "LINK_OVER";
      
      public static const LINK_OUT:String = "LINK_OVER";
      
      public static const LINK_TYPE_PLAYFIELDITEM:String = "LINK_TYPE_PLAYFIELDITEM";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         LINK_CLICKED = "LINK_CLICKED";
         if(_loc1_)
         {
            LINK_OVER = "LINK_OVER";
            if(_loc1_ || LinkedTextEvent)
            {
               addr0045:
               LINK_OUT = "LINK_OVER";
               if(_loc1_)
               {
                  LINK_TYPE_PLAYFIELDITEM = "LINK_TYPE_PLAYFIELDITEM";
               }
            }
            §§goto(addr005e);
         }
         §§goto(addr0045);
      }
      addr005e:
      
      private var _linkType:String;
      
      private var _linkParams:Array;
      
      public function LinkedTextEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "LINK_TYPE_PLAYFIELDITEM", param5:Array = null)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || param3)
         {
            super(param1,param2,param3);
            if(_loc7_ || Boolean(param1))
            {
               addr0043:
               this._linkType = param4;
               if(!_loc6_)
               {
                  this._linkParams = param5;
               }
            }
            return;
         }
         §§goto(addr0043);
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

