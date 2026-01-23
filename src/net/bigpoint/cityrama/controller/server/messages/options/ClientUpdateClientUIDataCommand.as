package net.bigpoint.cityrama.controller.server.messages.options
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientUpdateClientUIDataCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientUpdateClientUIDataCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         var _loc3_:Object = new Object();
         _loc3_.dat = new Object();
         _loc3_.dat.lowTrf = !OptionsGlobalVariables.getInstance().normalCitizenAmount;
         _loc3_.dat.lowGq = !OptionsGlobalVariables.getInstance().highQuality;
         _loc3_.dat.hTips = OptionsGlobalVariables.getInstance().showFloater;
         _loc3_.dat.hFloater = OptionsGlobalVariables.getInstance().showDropIcons;
         _loc3_.dat.rc = OptionsGlobalVariables.getInstance().showRCVerification;
         _loc3_.dat.fastIlayer = OptionsGlobalVariables.getInstance().fasterNotification;
         _loc3_.dat.fsOn = OptionsGlobalVariables.getInstance().fullscreenActive;
         _loc3_.dat.soundOn = OptionsGlobalVariables.getInstance().soundActive;
         _loc3_.dat.vpi = OptionsGlobalVariables.getInstance().viewedPlayfieldItemConfigIds;
         _loc3_.dat.vq = OptionsGlobalVariables.getInstance().viewedQuests;
         var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.UPDATE_CLIENT_UI_DATA);
         _loc2_.sendMessage(_loc4_);
      }
   }
}

