package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldBuildingSwapResident extends SimpleCommand
   {
      
      public function ClientMessagePlayfieldBuildingSwapResident()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc8_:GoodObjectVo = null;
         var _loc12_:ConfigOutputDTO = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:BillboardObjectVo = _loc2_.billboard;
         var _loc4_:String = _loc2_.popType;
         for each(_loc6_ in _loc3_.configPlayfieldItemVo.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
         {
            for each(_loc12_ in _loc6_.listEntryOutputs)
            {
               if(_loc12_.resourceConfig.type == _loc4_)
               {
                  _loc5_ = _loc6_.phaseId;
                  break;
               }
            }
         }
         if(isNaN(_loc5_))
         {
            throw new Error("Resident id is NaN");
         }
         var _loc7_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         for each(_loc8_ in _loc7_.getAllGoodsByTag(ServerTagConstants.GOOD_KEY))
         {
         }
         if(_loc8_ == null)
         {
            throw new Error("Good is null");
         }
         var _loc9_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc10_:Object = new Object();
         _loc10_.bid = _loc3_.buildingDTO.id;
         _loc10_.pop = _loc5_;
         _loc10_.kgi = _loc8_.config.id;
         var _loc11_:MessageVo = _loc9_.createMessage(_loc10_,ServerMessageConstants.PLAYFIELD_BUILDING_SWAP_RESIDENT);
         _loc9_.sendMessage(_loc11_);
      }
   }
}

