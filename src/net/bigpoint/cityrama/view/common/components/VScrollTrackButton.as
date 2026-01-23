package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import spark.components.Button;
   
   public class VScrollTrackButton extends Button
   {
      
      private static var _skinParts:Object = {
         "bottomImageContainer":false,
         "centerImageContainer":false,
         "topImageContainer":false,
         "labelDisplay":false,
         "iconDisplay":false
      };
      
      public var topImageContainer:BriskImageDynaLib;
      
      public var centerImageContainer:BriskImageDynaLib;
      
      public var bottomImageContainer:BriskImageDynaLib;
      
      public function VScrollTrackButton()
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

