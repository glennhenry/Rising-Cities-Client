package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageCreateBuildingFailedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageCreateBuildingFailedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObjectVo = _loc3_.getGameObjectByCuboid(new Cuboid(_loc2_.json.x,_loc2_.json.y,0,1,1,0)) as BillboardObjectVo;
         if(_loc4_ != null)
         {
            var _loc5_:BillboardObject = _loc3_.getObjectByVo(_loc4_) as BillboardObject;
            if(_loc5_ != null)
            {
               _loc3_.removeGameObjectVofromMatrix(_loc4_);
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,null);
               return;
            }
            throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: Billboard NULL!!");
         }
         throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: BillboardObjectVo NULL!!");
      }
   }
}

