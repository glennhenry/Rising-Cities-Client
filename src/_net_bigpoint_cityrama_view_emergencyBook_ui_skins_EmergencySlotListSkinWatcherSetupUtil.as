package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySlotListSkin;
   
   public class _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySlotListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySlotListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EmergencySlotListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySlotListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

