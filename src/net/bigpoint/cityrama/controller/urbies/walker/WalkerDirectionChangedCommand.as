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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:Point = null;
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:IWalker = param1.getBody() as IWalker;
         var _loc4_:UrbieObject = _loc2_.urbieObjectDictionary[_loc3_.id];
         if(_loc4_)
         {
            var _temp_2:* = new Point(_loc3_.currentCell.x,_loc3_.currentCell.y);
            _loc5_ = new Point(_loc3_.currentCell.x,_loc3_.currentCell.y);
            _loc5_ = _loc5_.subtract(new Point(_loc3_.nextCell.x,_loc3_.nextCell.y));
            if(_loc6_ || Boolean(_loc2_))
            {
               _loc4_.directionStrategy.playDirectionAnimation(_loc5_);
            }
         }
      }
   }
}

