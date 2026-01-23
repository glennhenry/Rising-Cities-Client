package net.bigpoint.cityrama.view.cursor
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DetachImprovementFromCursorCommand extends SimpleCommand
   {
      
      public function DetachImprovementFromCursorCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ImprovementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.currentSelectedImprovementCid = -1;
            if(_loc3_)
            {
               §§goto(addr0055);
            }
            §§goto(addr006e);
         }
         addr0055:
         facade.removeMediator(MouseAttachLayerMediator.NAME);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            addr006e:
            sendNotification(ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR);
         }
      }
   }
}

