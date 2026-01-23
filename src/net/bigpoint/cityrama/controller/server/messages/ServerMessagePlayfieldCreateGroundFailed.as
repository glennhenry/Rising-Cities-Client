package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldCreateGroundFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldCreateGroundFailed()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         var _loc6_:IPlaneObjectVo = _loc3_.getGameObjectByCuboid(new Cuboid(_loc2_.json.g.x,_loc2_.json.g.y,0,1,1,0)) as IPlaneObjectVo;
         if(_loc6_ != null)
         {
            var _loc8_:IPlaneObject = _loc3_.getObjectByVo(_loc6_) as IPlaneObject;
            if(_loc8_ != null)
            {
               _loc3_.removeGameObjectVofromMatrix(_loc6_);
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,null);
               if(_loc2_.json.g.c != 0)
               {
                  var _loc7_:GroundDTO = new GroundDTO(_loc2_.json.g,_loc4_.getConfigPlayfieldItemById(_loc2_.json.g.c));
               }
               _loc5_.mode = ApplicationModeProxy.MODE_NORMAL;
               return;
            }
            throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: PlaneObject NULL!!");
         }
         throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: PlaneObjectVo NULL!!");
      }
   }
}

