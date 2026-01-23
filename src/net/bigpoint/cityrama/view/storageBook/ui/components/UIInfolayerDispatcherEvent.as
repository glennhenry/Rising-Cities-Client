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
      
      public static const CALLER_TYPE_PFI:String = "CALLER_TYPE_PFI";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && UIInfolayerDispatcherEvent))
      {
         SHOW_UI_INFOLAYER = "SHOW_UI_INFOLAYER";
         if(_loc1_)
         {
            HIDE_UI_INFOLAYER = "HIDE_UI_INFOLAYER";
            if(_loc1_)
            {
               CALLER_TYPE_GOOD = "good";
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr0079);
            }
            §§goto(addr00a6);
         }
         addr0059:
         CALLER_TYPE_BOOSTER = "booster";
         if(_loc1_ || _loc2_)
         {
            addr0079:
            CALLER_TYPE_IMPROVEMENT = "improv";
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr0090);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0090);
      }
      addr0090:
      
      public static const CALLER_TYPE_IMPROVEMENT_BOOSTER:String = "CALLER_TYPE_IMPROVEMENT_BOOSTER";
      
      if(_loc1_ || _loc1_)
      {
         addr00a6:
         CALLER_TYPE_PFI = "CALLER_TYPE_PFI";
      }
      
      private var _cid:Number;
      
      private var _callerType:String;
      
      public function UIInfolayerDispatcherEvent(param1:String, param2:String = "", param3:Number = -1, param4:Boolean = true, param5:Boolean = false)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            this._cid = param3;
            if(_loc6_ || Boolean(param1))
            {
               this._callerType = param2;
               if(!(_loc7_ && Boolean(param2)))
               {
                  addr004e:
                  super(param1,param4,param5);
               }
               §§goto(addr0056);
            }
            §§goto(addr004e);
         }
         addr0056:
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

