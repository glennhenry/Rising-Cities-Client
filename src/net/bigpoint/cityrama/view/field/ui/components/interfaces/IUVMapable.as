package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.view.field.ui.components.strategy.event.UVMapStrategyEvent;
   
   public interface IUVMapable
   {
      
      function handlePreloadingComplete(param1:Object) : void;
      
      function handleMappingComplete(param1:UVMapStrategyEvent = null) : void;
   }
}

