package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.events.IEventDispatcher;
   
   public interface IInteraction extends IEventDispatcher
   {
      
      function prepareHighlightManager() : void;
      
      function invalidateHighlightManager(param1:String, param2:Boolean = true) : void;
   }
}

