package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OnResidentSelected extends SimpleCommand implements ICommand
   {
      
      public function OnResidentSelected()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:Number = NaN;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:CitizensProxy = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc2_:String = param1.getBody().type;
         var _loc3_:ResidentialFieldObject = param1.getBody().resident as ResidentialFieldObject;
         var _loc5_:ConfigOutputDTO = null;
         if(_loc3_ != null)
         {
            _loc3_.billboardObjectVo.userInteractionLocked = true;
            for each(_loc6_ in _loc3_.billboardObjectVo.configPlayfieldItemVo.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
            {
               for each(_loc9_ in _loc6_.listEntryOutputs)
               {
                  if(_loc9_.resourceConfig.type == _loc2_)
                  {
                     _loc4_ = _loc6_.phaseId;
                     _loc5_ = _loc9_;
                     break;
                  }
               }
            }
            _loc7_ = _loc3_.billboardObjectVo.inaugurationPhase;
            _loc3_.residentialFieldObjectVo.currentResidents = _loc2_;
            if(_loc5_ != null)
            {
               _loc10_ = _loc7_.clone();
               _loc10_.listEntryOutputs.push(_loc5_);
               _loc7_ = _loc10_;
            }
            _loc3_.billboardObjectVo.informationFloaterPhase = _loc7_;
            _loc3_.invalidateInformationFloaterManager();
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               if(_loc7_ != null)
               {
                  facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                     "tO":_loc3_,
                     "cP":_loc7_
                  });
               }
            }
            _loc8_ = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
            _loc8_.scanForPfoTags();
            _loc8_.resetSpawnedList();
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,{
               "vo":_loc3_.billboardObjectVo,
               "pop":_loc4_
            });
            sendNotification(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,_loc3_.billboardObjectVo);
            sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,_loc3_.billboardObjectVo);
            return;
         }
         throw Error(new Error("no residentialfieldObj!!"));
      }
   }
}

