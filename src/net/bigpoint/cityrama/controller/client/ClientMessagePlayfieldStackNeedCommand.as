package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldStackNeedCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldStackNeedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:ConfigNeedDTO = null;
         var _loc9_:MessageVo = null;
         var _loc10_:ConfigNeedStackDTO = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = param1.getBody();
         var _loc5_:ShopDetailViewVo = _loc4_.building;
         var _loc6_:ShopFieldObject = ShopFieldObject(_loc2_.getBillboardById(Number(_loc5_.buildingID)));
         var _loc7_:Object = new Object();
         for each(_loc8_ in _loc6_.shopFieldObjectVo.configPlayfieldItemVo.needShopConfigs)
         {
            for each(_loc10_ in _loc8_.requiredGoods)
            {
               if(_loc10_.configOutout.goodConfig != null)
               {
                  if(GoodObjectVo(_loc4_.good).config.id == _loc10_.configOutout.goodConfig.id)
                  {
                     _loc7_.s = _loc10_.id;
                  }
               }
            }
         }
         _loc7_.bid = _loc5_.buildingID;
         _loc7_.a = _loc4_.amount;
         _loc9_ = _loc3_.createMessage(_loc7_,ServerMessageConstants.PLAYFIELD_STACK_NEED);
         _loc3_.sendMessage(_loc9_);
      }
   }
}

