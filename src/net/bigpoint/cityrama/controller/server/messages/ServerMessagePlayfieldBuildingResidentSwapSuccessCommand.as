package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingResidentSwapSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingResidentSwapSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:BuildingDTO = new BuildingDTO(_loc2_.json.b,_loc4_.getConfigPlayfieldItemById(_loc2_.json.b.c));
         var _loc6_:BillboardObjectVo = _loc3_.getBillboardById(_loc5_.id).billboardObjectVo;
         if(_loc6_)
         {
            _loc6_.buildingDTO = _loc5_;
         }
      }
   }
}

