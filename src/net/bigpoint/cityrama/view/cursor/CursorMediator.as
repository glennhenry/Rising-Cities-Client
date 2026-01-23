package net.bigpoint.cityrama.view.cursor
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CursorMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CursorMediator";
      
      private var _fieldCursorProxy:FieldCursorProxy;
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      public function CursorMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._fieldCursorProxy = FieldCursorProxy(facade.retrieveProxy(FieldCursorProxy.NAME));
         this._applicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,ApplicationNotificationConstants.APPLICATION_CURSOR_INIT,ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR,ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR:
            case ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR:
               if(param1.getBody() is String && param1.getBody() != "")
               {
                  this.setCursorByMode(param1.getBody() as String);
                  break;
               }
               this.setCursorByMode(this._applicationModeProxy.mode);
               break;
            case ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_ATTACHED_ITEM);
               break;
            case ApplicationNotificationConstants.APPLICATION_CURSOR_INIT:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_NORMAL);
         }
      }
      
      private function setCursorByMode(param1:String) : void
      {
         switch(param1)
         {
            case FieldCursorProxy.CURSOR_RESET:
               this._fieldCursorProxy.resetCursor();
               break;
            case ApplicationModeProxy.MODE_NORMAL:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_NORMAL);
               break;
            case ApplicationModeProxy.MODE_DESTROY:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_DEMOLISH);
               break;
            case ApplicationModeProxy.MODE_MOVE:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_MOVE);
               break;
            case ApplicationModeProxy.MODE_BUILD:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_NORMAL);
               break;
            case ApplicationModeProxy.MODE_IMPROVEMENT:
               this._fieldCursorProxy.invokeCursor(FieldCursorProxy.CURSOR_IMPROVEMENT);
         }
      }
   }
}

