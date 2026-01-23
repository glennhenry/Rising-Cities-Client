package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class TerrainChangedCommand extends SimpleCommand
   {
      
      private var _pathWalkProxy:PathWalkProxy;
      
      public function TerrainChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
      }
   }
}

