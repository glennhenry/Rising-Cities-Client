package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import spark.components.Button;
   
   public class VScrollTrackButton extends Button
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _skinParts = {
            "bottomImageContainer":false,
            "centerImageContainer":false,
            "topImageContainer":false,
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      public var topImageContainer:BriskImageDynaLib;
      
      public var centerImageContainer:BriskImageDynaLib;
      
      public var bottomImageContainer:BriskImageDynaLib;
      
      public function VScrollTrackButton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               this.addEventListener(MouseEvent.CLICK,this.handleClick);
            }
         }
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SoundProxy = ApplicationFacade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || Boolean(param1))
               {
                  _loc2_.playButtonClick();
               }
            }
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super.setCurrentState(param1,param2);
         }
      }
   }
}

