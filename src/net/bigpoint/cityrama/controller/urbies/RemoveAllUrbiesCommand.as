package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.StaticWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class RemoveAllUrbiesCommand extends SimpleCommand
   {
      
      public function RemoveAllUrbiesCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:SimpleWalker = null;
         var _loc2_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:Vector.<IWalker> = _loc2_.pathwalkManager.walkerContainer.walkers;
         var _loc5_:int = int(_loc4_.length - 1);
         while(_loc5_ >= 0)
         {
            if(!(_loc4_[_loc5_] is StaticWalker))
            {
               facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc3_.urbieObjectDictionary[_loc4_[_loc5_].id]);
            }
            _loc6_ = _loc4_[_loc5_] as SimpleWalker;
            _loc6_.resumePath();
            _loc6_.pathComplete();
            _loc2_.pathwalkManager.walkerContainer.killWalker(_loc6_);
            _loc5_--;
         }
      }
   }
}

