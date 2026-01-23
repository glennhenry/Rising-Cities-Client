package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySuccessBarSkin;
   
   public class _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySuccessBarSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySuccessBarSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EmergencySuccessBarSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySuccessBarSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[0] = new PropertyWatcher("capBarMask",{"propertyChange":true},[param4[0]],param2);
         param5[2].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}

