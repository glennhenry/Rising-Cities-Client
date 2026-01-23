package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.FriendInviteMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.FriendMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFriendInviteMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenFriendInviteMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ExpansionFieldObject = ExpansionFieldObject(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = FriendMiniLayer;
         _loc3_.mediatorClass = FriendInviteMiniLayerMediator;
         _loc3_.mediatorName = FriendInviteMiniLayerMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

