package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDetailview;
   
   public class _net_bigpoint_cityrama_view_friendBook_ui_components_tabsContent_FriendTemplateDetailviewWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_friendBook_ui_components_tabsContent_FriendTemplateDetailviewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FriendTemplateDetailview.watcherSetupUtil = new _net_bigpoint_cityrama_view_friendBook_ui_components_tabsContent_FriendTemplateDetailviewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

