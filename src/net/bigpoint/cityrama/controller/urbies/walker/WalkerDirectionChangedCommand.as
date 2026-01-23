package net.bigpoint.cityrama.controller.urbies.walker
{
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerDirectionChangedCommand extends SimpleCommand
   {
      
      public function WalkerDirectionChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:IWalker = param1.getBody() as IWalker;
         var _loc4_:UrbieObject = _loc2_.urbieObjectDictionary[_loc3_.id];
         if(_loc4_)
         {
            var _loc5_:Point = new Point(_loc3_.currentCell.x,_loc3_.currentCell.y);
            _loc5_ = _loc5_.subtract(new Point(_loc3_.nextCell.x,_loc3_.nextCell.y));
            _loc4_.directionStrategy.playDirectionAnimation(null);
         }
      }
   }
}

