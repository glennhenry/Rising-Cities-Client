package net.bigpoint.cityrama.controller.friend
{
   import flash.display.StageDisplayState;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFriendBookCommand extends SimpleCommand
   {
      
      public function OpenFriendBookCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:PopupSettingsVo = null;
         var _loc2_:String = "messages";
         if(param1.getBody() != null)
         {
            if(param1.getBody() is String)
            {
               _loc2_ = param1.getBody() as String;
            }
         }
         var _loc3_:MainMenuMediator = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
         var _loc4_:LayoutProxy = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
         if(_loc4_.displayState == StageDisplayState.FULL_SCREEN)
         {
            _loc4_.inFullScreenBeforeOpenFriendBook = true;
            _loc4_.changeDisplayState();
         }
         var _loc5_:FriendPopupMediator = facade.retrieveMediator(FriendPopupMediator.NAME) as FriendPopupMediator;
         if(!_loc5_)
         {
            _loc6_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc6_.modal = true;
            _loc6_.viewClass = FriendBook;
            _loc6_.mediatorClass = FriendPopupMediator;
            _loc6_.mediatorName = FriendPopupMediator.NAME;
            _loc6_.data = _loc2_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
         }
         else
         {
            _loc5_.setData(_loc2_);
         }
         if(!_loc3_.component.friends.selected)
         {
            _loc3_.component.friends.dispatchChangeFlag = false;
            _loc3_.component.friends.selected = true;
         }
      }
   }
}

