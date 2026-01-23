package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import spark.components.Button;
   import spark.primitives.Rect;
   
   public class VScrollThumbButton extends Button
   {
      
      private static var _skinParts:Object = {
         "labelDisplay":false,
         "thumpContainer":false,
         "iconDisplay":false
      };
      
      public var thumpContainer:Rect;
      
      public function VScrollThumbButton()
      {
         super();
         this.addEventListener(MouseEvent.CLICK,this.handleClick);
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         var _loc2_:SoundProxy = ApplicationFacade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc2_)
         {
            _loc2_.playButtonClick();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         super.setCurrentState(param1,param2);
      }
   }
}

