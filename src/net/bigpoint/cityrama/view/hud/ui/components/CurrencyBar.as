package net.bigpoint.cityrama.view.hud.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   
   public class CurrencyBar extends SimpleTextBar
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "plusButton":false,
            "labelDisplay":true
         };
      }
      
      public var plusButton:DynamicImageButton;
      
      public function CurrencyBar()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.partAdded(param1,param2);
            if(!_loc4_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0048);
         }
         addr0031:
         if(param2 == this.plusButton)
         {
            if(!(_loc4_ && Boolean(param2)))
            {
               addr0048:
               this.plusButton.addEventListener(MouseEvent.CLICK,this.onPlusClick);
            }
         }
      }
      
      private function onPlusClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new Event("plusClick",true,true));
         }
      }
   }
}

