package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PauseAllWalkersCommand extends SimpleCommand
   {
      
      public function PauseAllWalkersCommand()
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
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:SimpleWalker = null;
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(!(_loc10_ && Boolean(_loc3_)))
         {
            if(_loc3_)
            {
               if(_loc9_ || Boolean(param1))
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        _loc4_ = §§pop();
                        if(_loc9_)
                        {
                           §§goto(addr00c8);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00a4);
                  }
                  addr00c8:
                  §§push(0);
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     addr00a4:
                     _loc5_ = §§pop();
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        _loc3_.allPaused = true;
                        addr00b4:
                     }
                     addr00c6:
                     §§push(0);
                  }
                  for each(_loc6_ in _loc3_.pathwalkManager.walkerContainer.walkers)
                  {
                     _loc6_.pausePath();
                  }
                  §§goto(addr00f6);
               }
               §§goto(addr00b4);
            }
            addr00f6:
            return;
         }
         §§goto(addr00c6);
      }
   }
}

