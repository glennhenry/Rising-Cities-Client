package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBoulderDeletedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBoulderDeletedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:Object = MessageVo(param1.getBody());
         var _loc4_:BillboardObject = _loc2_.getBillboardById(_loc3_.json.bid);
         if(_loc4_ is BoulderFieldObject)
         {
            sendNotification(ApplicationNotificationConstants.SHOW_BOULDER_FLOATER_AND_REMOVE,_loc4_ as BoulderFieldObject);
         }
      }
   }
}

