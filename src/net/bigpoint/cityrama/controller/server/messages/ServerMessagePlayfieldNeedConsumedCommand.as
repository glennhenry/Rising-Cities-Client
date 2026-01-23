package net.bigpoint.cityrama.controller.server.messages
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldNeedConsumedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldNeedConsumedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:NeedStackDTO = null;
         var _loc9_:NeedMatrixProxy = null;
         var _loc10_:ConfigNeedDTO = null;
         var _loc11_:ConfigNeedStackDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         var _loc5_:ShopFieldObject = ShopFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         for each(_loc8_ in _loc5_.shopFieldObjectVo.sellableNeedStack)
         {
            for each(_loc10_ in _loc5_.shopFieldObjectVo.configPlayfieldItemVo.needShopConfigs)
            {
               for each(_loc11_ in _loc10_.requiredGoods)
               {
                  if(_loc8_.configId == _loc11_.id)
                  {
                     var _loc7_:Number = Math.abs(_loc11_.configOutout.outputAmount * _loc4_.happinessOutputModifier);
                     _loc7_ = Math.ceil(0);
                  }
               }
            }
            _loc8_.amount -= 0;
         }
         _loc5_.shopFieldObjectVo.informationFloaterCustomText = ResourceManager.getInstance().getString("rcl.misc.infieldfloaterCustomText" + "","rcl.misc.infieldfloaterCustomText.needBuildingOperation" + "");
         _loc5_.shopFieldObjectVo.informationFloaterPhase = null;
         _loc5_.invalidateIconStateManager();
         _loc5_.invalidateInformationFloaterManager();
         _loc9_ = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         _loc9_.updateShop((_loc5_ as ShopFieldObject).shopFieldObjectVo);
      }
   }
}

