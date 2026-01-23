package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.friends.FriendTabProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGlobalFeatureDTO;
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageSwitchFeatureActionCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageSwitchFeatureActionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ConfigGlobalFeatureDTO = new ConfigGlobalFeatureDTO(_loc2_.json.feat);
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         _loc4_.marketPlaceMaintenance = !_loc3_.marketIsInMaintenance;
         var _loc5_:FriendTabProxy = facade.retrieveProxy(FriendTabProxy.NAME) as FriendTabProxy;
         var _loc6_:FriendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         _loc6_.pmsEnabled = _loc3_.pmsEnabled;
         _loc5_.updateTabInfo(2,"","",_loc3_.pmsEnabled,null);
         var _loc7_:FriendPopupMediator = facade.retrieveMediator(FriendPopupMediator.NAME) as FriendPopupMediator;
         if(_loc7_)
         {
            _loc7_.component.tabBar.selectedIndex = _loc5_.selectedIndex;
         }
         var _loc8_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         _loc8_.inMaintenance = _loc3_.cinemaIsInMaintenance;
         var _loc9_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         _loc9_.upsellEnabled = _loc3_.upsellingEnabled;
      }
   }
}

