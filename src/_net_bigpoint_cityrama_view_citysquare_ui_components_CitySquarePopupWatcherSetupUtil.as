package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquarePopup;
   
   public class _net_bigpoint_cityrama_view_citysquare_ui_components_CitySquarePopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_citysquare_ui_components_CitySquarePopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CitySquarePopup.watcherSetupUtil = new _net_bigpoint_cityrama_view_citysquare_ui_components_CitySquarePopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

