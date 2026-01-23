package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowProductionAnimation extends SimpleCommand
   {
      
      public function ShowProductionAnimation()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:IAnimationSlot = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:ProductionFieldObject = _loc2_.getBillboardById(param1.getBody().buildingId as Number) as ProductionFieldObject;
         _loc4_.productionFieldObjectVo.playProductionAinimation = true;
         _loc4_.productionFieldObjectVo.playEventAnimation = param1.getBody().isEvent;
         if(_loc4_ is IAnimationSlot)
         {
            _loc5_ = _loc4_ as IAnimationSlot;
            if(_loc4_.productionFieldObjectVo.produceAbleGoods[0].groupType)
            {
               switch(_loc4_.productionFieldObjectVo.produceAbleGoods[0].groupType)
               {
                  case ServerTagConstants.GOOD_NORMAL:
                     _loc3_.playProductionBox();
               }
            }
            _loc5_.invalidateAnimationSlotManager();
         }
      }
   }
}

