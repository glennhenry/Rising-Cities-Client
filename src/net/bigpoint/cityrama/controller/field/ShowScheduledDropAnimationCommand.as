package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowScheduledDropAnimationCommand extends SimpleCommand
   {
      
      public function ShowScheduledDropAnimationCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:ScheduledDropFieldObject = _loc2_.getBillboardById(param1.getBody().buildingId as Number) as ScheduledDropFieldObject;
         if((Boolean(_loc4_)) && _loc4_ is IAnimationSlot)
         {
            _loc4_.scheduledDropFieldObjectVo.playAnimation = true;
            _loc4_.invalidateIconStateManager();
            _loc4_.invalidateAnimationSlotManager();
            switch(_loc4_.scheduledDropFieldObjectVo.tagType)
            {
               case ServerTagConstants.CHRISTMAS_TREE:
                  _loc3_.playChristmasTreeUnwrap();
                  break;
               case ServerTagConstants.CLIENT_OLYMPIC_STADIUM:
                  _loc3_.playOlympicTorchDrop();
                  break;
               default:
                  _loc3_.playChristmasTreeUnwrap();
            }
         }
      }
   }
}

