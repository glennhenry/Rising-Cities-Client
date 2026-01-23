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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:SimpleWalker = null;
         var _loc2_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:Vector.<IWalker> = _loc2_.pathwalkManager.walkerContainer.walkers;
         var _loc5_:* = int(_loc4_.length - 1);
         while(_loc5_ >= 0)
         {
            if(!(_loc4_[_loc5_] is StaticWalker))
            {
               if(_loc7_ && Boolean(_loc2_))
               {
                  break;
               }
               facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc3_.urbieObjectDictionary[_loc4_[_loc5_].id]);
               if(_loc7_ && Boolean(_loc2_))
               {
                  break;
               }
            }
            _loc6_ = _loc4_[_loc5_] as SimpleWalker;
            _loc6_.resumePath();
            if(_loc8_)
            {
               _loc6_.pathComplete();
               if(!_loc7_)
               {
                  _loc2_.pathwalkManager.walkerContainer.killWalker(_loc6_);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(_loc8_ || Boolean(param1))
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
            }
         }
      }
   }
}

