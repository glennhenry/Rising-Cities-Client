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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ExpansionFieldObject = ExpansionFieldObject(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_ || Boolean(param1))
         {
            _loc3_.modal = true;
            if(_loc4_)
            {
               _loc3_.viewClass = FriendMiniLayer;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_.mediatorClass = FriendInviteMiniLayerMediator;
                  if(_loc4_)
                  {
                     addr0084:
                     _loc3_.mediatorName = FriendInviteMiniLayerMediator.NAME;
                     if(!_loc5_)
                     {
                        addr0093:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0093);
               }
            }
            addr009e:
            return;
         }
         §§goto(addr0084);
      }
   }
}

