package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.settingsbar.ui.components.SettingsBarView;
   
   public class _net_bigpoint_cityrama_view_settingsbar_ui_components_SettingsBarViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_settingsbar_ui_components_SettingsBarViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsBarView.watcherSetupUtil = new _net_bigpoint_cityrama_view_settingsbar_ui_components_SettingsBarViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("renderToggleButton",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

