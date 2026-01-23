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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         }
      }
   }
}

