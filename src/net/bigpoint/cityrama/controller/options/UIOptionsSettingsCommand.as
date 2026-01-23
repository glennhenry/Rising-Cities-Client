package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class UIOptionsSettingsCommand extends SimpleCommand implements ICommand
   {
      
      public function UIOptionsSettingsCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         var _loc3_:* = !_loc2_.uiDataDTO.lowTraffic;
         var _loc4_:* = !_loc2_.uiDataDTO.lowGraphicsQuality;
         var _loc5_:Boolean = _loc2_.uiDataDTO.increasingTips;
         var _loc6_:Boolean = _loc2_.uiDataDTO.increasingSimbols;
         var _loc7_:Boolean = _loc2_.uiDataDTO.soundActive;
         var _loc8_:Boolean = _loc2_.uiDataDTO.rcVerification;
         var _loc9_:Boolean = _loc2_.uiDataDTO.fasterNotification;
         var _loc10_:Boolean = _loc2_.uiDataDTO.fullscreenActive;
         OptionsGlobalVariables.getInstance().showFloater = _loc5_;
         OptionsGlobalVariables.getInstance().showDropIcons = _loc6_;
         OptionsGlobalVariables.getInstance().normalCitizenAmount = _loc3_;
         OptionsGlobalVariables.getInstance().highQuality = _loc4_;
         OptionsGlobalVariables.getInstance().showRCVerification = _loc8_;
         OptionsGlobalVariables.getInstance().fasterNotification = _loc9_;
         OptionsGlobalVariables.getInstance().fullscreenActive = _loc10_;
         OptionsGlobalVariables.getInstance().soundActive = _loc7_;
         OptionsGlobalVariables.getInstance().viewedPlayfieldItemConfigIds = _loc2_.uiDataDTO.viewedPlayfieldItemConfigIds;
         OptionsGlobalVariables.getInstance().viewedQuests = _loc2_.uiDataDTO.viewedQuest;
      }
   }
}

