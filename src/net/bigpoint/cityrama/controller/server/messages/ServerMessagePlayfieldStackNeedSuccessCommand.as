package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldStackNeedSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldStackNeedSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Boolean = false;
         var _loc7_:NeedStackDTO = null;
         var _loc8_:ConfigNeedDTO = null;
         var _loc9_:ConfigNeedStackDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ShopFieldObject = ShopFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc6_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         for each(_loc7_ in _loc4_.shopFieldObjectVo.sellableNeedStack)
         {
            if(_loc7_.configId == _loc2_.json.s)
            {
               _loc7_.amount = _loc2_.json.a;
               _loc5_ = true;
            }
         }
         if(!_loc5_)
         {
            for each(_loc8_ in _loc4_.shopFieldObjectVo.possibleNeedSatisfier)
            {
               for each(_loc9_ in _loc8_.requiredGoods)
               {
                  if(_loc9_.id == _loc2_.json.s)
                  {
                     _loc4_.shopFieldObjectVo.sellableNeedStack.push(new NeedStackDTO({
                        "cid":_loc9_.id,
                        "a":_loc2_.json.a
                     }));
                     _loc5_ = true;
                  }
               }
            }
         }
         if(!_loc5_)
         {
            throw new RamaCityError("ServerMessagePlayfieldStackNeedSuccessCommand Need Stack not found");
         }
         _loc4_.invalidateIconStateManager();
         sendNotification(ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED);
         _loc6_.updateShop((_loc4_ as ShopFieldObject).shopFieldObjectVo);
      }
   }
}

