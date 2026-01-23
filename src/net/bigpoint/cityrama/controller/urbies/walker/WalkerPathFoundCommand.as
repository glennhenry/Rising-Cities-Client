package net.bigpoint.cityrama.controller.urbies.walker
{
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathFoundCommand extends SimpleCommand
   {
      
      public function WalkerPathFoundCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:UrbieObject = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(!_loc3_.urbieObjectDictionary[_loc2_.id])
         {
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc4_);
         }
         _loc6_ = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc6_)
         {
            var _loc7_:Point = new Point(_loc2_.path[0].x,_loc2_.path[0].y);
            _loc7_ = _loc7_.subtract(new Point(_loc2_.path[1].x,_loc2_.path[1].y));
            _loc8_ = 0;
            _loc9_ = 0;
            if(_loc6_.urbieLifeVo.config.id.split("_bottom").length >= 2)
            {
               _loc8_ = _loc5_.pathwalkManager.terrain.tileSize - _loc6_.isoBounds.width / 2;
               _loc9_ = _loc5_.pathwalkManager.terrain.tileSize - _loc6_.isoBounds.length / 2;
            }
            else if(_loc6_.urbieLifeVo.config.id.split("_top").length >= 2)
            {
               _loc8_ = -_loc6_.isoBounds.width / 2;
               _loc9_ = -_loc6_.isoBounds.length / 2;
            }
            else
            {
               _loc8_ = 0;
               _loc9_ = 0;
            }
            _loc6_.moveTo(_loc2_.x + _loc8_,_loc2_.y + _loc9_,0);
            _loc6_.container.visible = false;
            _loc6_.invalidatePosition();
            _loc6_.directionStrategy.playDirectionAnimation(null);
         }
      }
   }
}

