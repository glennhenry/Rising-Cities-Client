package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   
   public class _net_bigpoint_cityrama_view_popup_ui_components_FeatureLockedScreenWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_popup_ui_components_FeatureLockedScreenWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FeatureLockedScreen.watcherSetupUtil = new _net_bigpoint_cityrama_view_popup_ui_components_FeatureLockedScreenWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

