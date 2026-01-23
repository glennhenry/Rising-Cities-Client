package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookItemRenderer;
   
   public class _net_bigpoint_cityrama_view_friendBook_ui_components_FriendBookItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_friendBook_ui_components_FriendBookItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FriendBookItemRenderer.watcherSetupUtil = new _net_bigpoint_cityrama_view_friendBook_ui_components_FriendBookItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("itemIndex",{"itemIndexChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

