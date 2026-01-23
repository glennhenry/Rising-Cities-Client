package net.bigpoint.cityrama.controller.urbies.walker
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathPausedCommand extends SimpleCommand
   {
      
      public function WalkerPathPausedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:SimpleWalker = param1.getBody() as SimpleWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:UrbieObject = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc4_)
         {
            if(!(_loc5_ && Boolean(param1)))
            {
               _loc4_.framesetStrategy.pauseCurrentFrameset();
            }
         }
      }
   }
}

