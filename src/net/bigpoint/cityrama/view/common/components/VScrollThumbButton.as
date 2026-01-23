package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import spark.components.Button;
   import spark.primitives.Rect;
   
   public class VScrollThumbButton extends Button
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         _skinParts = {
            "labelDisplay":false,
            "thumpContainer":false,
            "iconDisplay":false
         };
      }
      
      public var thumpContainer:Rect;
      
      public function VScrollThumbButton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this.addEventListener(MouseEvent.CLICK,this.handleClick);
            }
         }
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SoundProxy = ApplicationFacade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && Boolean(param1)))
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
         if(!(_loc3_ && param2))
         {
            super.setCurrentState(param1,param2);
         }
      }
   }
}

