package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldMoveGroundFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldMoveGroundFailed()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         var _loc5_:IPlaneObject = _loc3_.getPlaneObjectById(_loc2_.json.gid);
         if(_loc5_ == null)
         {
            throw new RamaCityError("ServerMessagePlayfieldMoveGroundFailed: moved Plane NULL!!");
         }
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc5_.objectVo.matrix3dCoordinates = new Cuboid(_loc2_.json.x,_loc2_.json.y,0,_loc5_.objectVo.configPlayfieldItemVo.sizeX,_loc5_.objectVo.configPlayfieldItemVo.sizeY,_loc5_.objectVo.configPlayfieldItemVo.zLevels.length);
            if(!_loc6_)
            {
               sendNotification(ApplicationNotificationConstants.GROUND_MOVE_GROUND,_loc5_);
               if(_loc7_ || Boolean(this))
               {
                  _loc3_.reAddGameObjVoToMatrix(_loc5_.objectVo,_loc5_ as IInteraction);
                  addr00e0:
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     addr0121:
                     _loc4_.mode = ApplicationModeProxy.MODE_NORMAL;
                  }
                  §§goto(addr012c);
               }
               §§goto(addr0121);
            }
            addr012c:
            return;
         }
         §§goto(addr00e0);
      }
   }
}

