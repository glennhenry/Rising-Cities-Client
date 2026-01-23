package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.shopBook.ui.components.ShopItemProgress;
   
   public class _net_bigpoint_cityrama_view_shopBook_ui_components_ShopItemProgressWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_shopBook_ui_components_ShopItemProgressWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShopItemProgress.watcherSetupUtil = new _net_bigpoint_cityrama_view_shopBook_ui_components_ShopItemProgressWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

