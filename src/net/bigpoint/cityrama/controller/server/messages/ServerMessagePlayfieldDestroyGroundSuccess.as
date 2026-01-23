package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDestroyGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldDestroyGroundSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:IPlaneObject = _loc3_.getPlaneObjectById(_loc2_.json.g.id);
         if(_loc4_ != null)
         {
            _loc3_.removeGameObjectVofromMatrix(_loc4_.objectVo);
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc4_);
            return;
         }
         throw new RamaCityError("PlaneObject to remove NULL!!");
      }
   }
}

