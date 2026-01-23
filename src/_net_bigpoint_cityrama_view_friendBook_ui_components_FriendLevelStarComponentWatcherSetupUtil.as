package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   
   public class _net_bigpoint_cityrama_view_friendBook_ui_components_FriendLevelStarComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_friendBook_ui_components_FriendLevelStarComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FriendLevelStarComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_friendBook_ui_components_FriendLevelStarComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

