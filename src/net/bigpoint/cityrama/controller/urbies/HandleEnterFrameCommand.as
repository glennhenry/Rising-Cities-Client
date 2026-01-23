package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HandleEnterFrameCommand extends SimpleCommand
   {
      
      public function HandleEnterFrameCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:SimpleWalker = null;
         var _loc7_:UrbieObject = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(_loc3_)
         {
            for each(_loc6_ in _loc3_.pathwalkManager.walkerContainer.walkers)
            {
               if(!_loc6_.paused)
               {
                  if(_loc3_.allPaused)
                  {
                     _loc6_.pausePath();
                  }
                  else
                  {
                     _loc7_ = _loc2_.urbieObjectDictionary[_loc6_.id];
                     if(_loc7_)
                     {
                        _loc8_ = _loc7_.width / 2;
                        _loc9_ = _loc7_.length / 2;
                        if(_loc7_.urbieLifeVo.config.id.split("_bottom").length >= 2)
                        {
                           _loc4_ = -2 + _loc3_.pathwalkManager.terrain.tileSize - _loc7_.isoBounds.width / 2;
                           _loc5_ = -2 + _loc3_.pathwalkManager.terrain.tileSize - _loc7_.isoBounds.length / 2;
                        }
                        else if(_loc7_.urbieLifeVo.config.id.split("_top").length >= 2)
                        {
                           _loc4_ = 2 - _loc7_.isoBounds.width / 2;
                           _loc5_ = 2 - _loc7_.isoBounds.length / 2;
                        }
                        else
                        {
                           _loc4_ = _loc8_ - _loc3_.pathwalkManager.terrain.tileSize / 2;
                           _loc5_ = _loc9_ - _loc3_.pathwalkManager.terrain.tileSize / 2;
                        }
                        _loc7_.moveTo(_loc6_.x + _loc4_,_loc6_.y + _loc5_,0);
                        _loc7_.invalidatePosition();
                     }
                  }
               }
            }
         }
      }
   }
}

