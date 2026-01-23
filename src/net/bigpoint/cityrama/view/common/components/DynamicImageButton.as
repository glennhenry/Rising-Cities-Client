package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import spark.components.Button;
   
   public class DynamicImageButton extends Button
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "runtimeImageContainer":false,
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      public var runtimeImageContainer:BriskImageDynaLib;
      
      public function DynamicImageButton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr002f:
               this.addEventListener(MouseEvent.CLICK,this.handleClick);
               if(!(_loc2_ && _loc1_))
               {
                  this.focusEnabled = false;
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SoundProxy = ApplicationFacade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc2_.playButtonClick();
               }
            }
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super.setCurrentState(param1,param2);
         }
      }
   }
}

