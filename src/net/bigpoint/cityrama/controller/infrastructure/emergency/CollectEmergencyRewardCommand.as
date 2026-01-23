package net.bigpoint.cityrama.controller.infrastructure.emergency
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CollectEmergencyRewardCommand extends SimpleCommand implements ICommand
   {
      
      public function CollectEmergencyRewardCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ConfigPhaseDTO = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(_loc2_)
         {
            _loc2_.invalidateIconStateManager(true);
            _loc3_ = new ConfigPhaseDTO(null);
            _loc3_.listEntryOutputs = _loc2_.billboardObjectVo.buildingDTO.emergencyDTO.rewardOrCosts;
            _loc2_.billboardObjectVo.informationFloaterPhase = _loc3_;
            if(OptionsGlobalVariables.getInstance().showFloater)
            {
               _loc2_.invalidateInformationFloaterManager();
            }
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":_loc2_,
                  "cP":_loc3_
               });
            }
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_COLLECT_EMERGENCY,{"bid":_loc2_.billboardObjectVo.buildingDTO.id});
         }
      }
   }
}

