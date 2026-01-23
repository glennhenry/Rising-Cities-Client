package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   
   public class _net_bigpoint_cityrama_view_application_ui_components_MainViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_application_ui_components_MainViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MainView.watcherSetupUtil = new _net_bigpoint_cityrama_view_application_ui_components_MainViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("fieldlayer",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5]],param2);
         param5[0].updateParent(param1);
      }
   }
}

