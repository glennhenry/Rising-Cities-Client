package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelTab;
   
   public class _net_bigpoint_cityrama_view_cityWheel_ui_components_CityWheelTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_cityWheel_ui_components_CityWheelTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CityWheelTab.watcherSetupUtil = new _net_bigpoint_cityrama_view_cityWheel_ui_components_CityWheelTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

