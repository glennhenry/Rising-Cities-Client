package net.bigpoint.cityrama.model.friends
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FriendTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FriendTabProxy";
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      public function FriendTabProxy(param1:Object = null)
      {
         var _loc3_:TabsVo = null;
         super(NAME,param1);
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._tabs = new ArrayCollection();
         if(!_loc2_.friendInviteDisabled)
         {
            _loc3_ = new TabsVo();
            _loc3_.styleName = "";
            _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteFriendsTab");
            _loc3_.enabled = true;
            _loc3_.hasNews = false;
            this._tabs.addItem(_loc3_);
            _loc3_ = new TabsVo();
            _loc3_.styleName = "invite";
            _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteTab");
            _loc3_.enabled = true;
            _loc3_.hasNews = false;
            this._tabs.addItem(_loc3_);
         }
         _loc3_ = new TabsVo();
         _loc3_.styleName = "messages";
         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.friendMessageTab");
         _loc3_.enabled = !_loc2_.pmsMaintenance;
         _loc3_.hasNews = false;
         this._tabs.addItem(_loc3_);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         this._tabs = param1;
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         this._selectedIndex = param1;
      }
      
      public function updateTabInfo(param1:int, param2:String = "", param3:String = "", param4:Boolean = true, param5:* = null) : void
      {
         var _loc6_:TabsVo = this._tabs.removeItemAt(param1) as TabsVo;
         _loc6_.styleName = param2 ? param2 : _loc6_.styleName;
         _loc6_.tabLabel = param3 ? param3 : _loc6_.tabLabel;
         _loc6_.enabled = param4;
         _loc6_.hasNews = param5 != null ? param5 as Boolean : _loc6_.hasNews;
         this._tabs.addItemAt(_loc6_,param1);
         facade.sendNotification(ApplicationNotificationConstants.FRIEND_TAB_UPDATE);
      }
   }
}

