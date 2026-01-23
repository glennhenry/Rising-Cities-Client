package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BoulderClickedCommand extends SimpleCommand implements ICommand
   {
      
      public function BoulderClickedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PlayerResourceProxy = null;
         var _loc4_:SoundProxy = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc2_:BoulderFieldObject = param1.getBody() as BoulderFieldObject;
         if(Boolean(_loc2_) && !_loc2_.boulderObjectVo.isInDemolitionMode)
         {
            _loc3_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            _loc4_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(_loc3_.ingameCurrency >= _loc2_.boulderObjectVo.demolitionCosts)
            {
               _loc4_.playBoulderDemolition(_loc2_.boulderObjectVo.boulderType);
               _loc2_.billboardObjectVo.userInteractionLocked = true;
               if(_loc2_.boulderObjectVo.configPlayfieldItemVo.destructionPhases.length)
               {
                  _loc5_ = _loc2_.boulderObjectVo.configPlayfieldItemVo.destructionPhases[0];
                  if(_loc5_)
                  {
                     _loc2_.boulderObjectVo.informationFloaterPhase = _loc5_;
                     _loc2_.boulderObjectVo.phaseJustStarted = true;
                     _loc2_.invalidateInformationFloaterManager();
                  }
               }
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BOULDER_PROCESSPHASE,_loc2_.boulderObjectVo);
            }
            else
            {
               _loc2_.billboardObjectVo.userInteractionLocked = false;
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
            }
         }
      }
   }
}

