package com.greensock.loading
{
   import flash.events.Event;
   import flash.text.StyleSheet;
   
   public class CSSLoader extends DataLoader
   {
      
      private static var _classActivated:Boolean;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && CSSLoader))
      {
         _classActivated = _activateClass("CSSLoader",CSSLoader,"css");
      }
      
      public function CSSLoader(param1:*, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               addr0039:
               _loader.dataFormat = "text";
               if(_loc3_)
               {
                  _type = "CSSLoader";
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      override protected function _receiveDataHandler(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:StyleSheet = _content = new StyleSheet();
         if(_loc4_)
         {
            _loc2_.parseCSS(_loader.data);
            if(!(_loc5_ && Boolean(param1)))
            {
               super._completeHandler(param1);
            }
         }
      }
   }
}

