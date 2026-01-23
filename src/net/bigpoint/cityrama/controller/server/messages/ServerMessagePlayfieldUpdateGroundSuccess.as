package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldUpdateGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldUpdateGroundSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:GroundDTO = new GroundDTO(_loc2_.json.g,_loc4_.getConfigPlayfieldItemById(_loc2_.json.g.c));
         var _loc6_:Cuboid = new Cuboid(_loc5_.posX,_loc5_.posY,0,_loc5_.config.sizeX,_loc5_.config.sizeY,_loc5_.config.zLevels.length);
         var _loc7_:IGameObjectVo = _loc3_.getGameObjectByCuboid(_loc6_);
         var _loc8_:PlaneProxy = facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         if(_loc7_)
         {
            if(_loc7_ is IPlaneObjectVo)
            {
               (_loc7_ as IPlaneObjectVo).groundDTO = _loc5_;
               _loc8_.addIPlaneObjectByData(_loc7_ as IPlaneObjectVo);
            }
         }
      }
   }
}

