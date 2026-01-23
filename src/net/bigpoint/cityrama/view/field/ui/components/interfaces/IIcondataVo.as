package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.events.IEventDispatcher;
   
   public interface IIcondataVo extends IEventDispatcher
   {
      
      function get currentMode() : String;
      
      function get hideIconsForMoveMode() : Boolean;
      
      function get useIcons() : Boolean;
      
      function get userInteractionLocked() : Boolean;
   }
}

