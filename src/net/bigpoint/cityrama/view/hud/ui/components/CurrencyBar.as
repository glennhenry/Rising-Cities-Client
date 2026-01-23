package net.bigpoint.cityrama.view.hud.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   
   public class CurrencyBar extends SimpleTextBar
   {
      
      private static var _skinParts:Object = {
         "plusButton":false,
         "labelDisplay":true
      };
      
      public var plusButton:DynamicImageButton;
      
      public function CurrencyBar()
      {
         super();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.plusButton)
         {
            this.plusButton.addEventListener(MouseEvent.CLICK,this.onPlusClick);
         }
      }
      
      private function onPlusClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("plusClick",true,true));
      }
   }
}

