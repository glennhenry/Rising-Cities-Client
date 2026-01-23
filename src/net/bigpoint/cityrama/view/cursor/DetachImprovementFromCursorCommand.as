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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ImprovementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         _loc2_.currentSelectedImprovementCid = -1;
         facade.removeMediator(MouseAttachLayerMediator.NAME);
         sendNotification(ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR);
      }
   }
}

