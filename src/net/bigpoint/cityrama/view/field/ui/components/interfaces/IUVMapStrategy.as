package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.events.IEventDispatcher;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   
   public interface IUVMapStrategy extends IEventDispatcher
   {
      
      function handlePreloadingComplete(param1:Object) : void;
      
      function startMapping(param1:PreloadableUVObject) : void;
   }
}

