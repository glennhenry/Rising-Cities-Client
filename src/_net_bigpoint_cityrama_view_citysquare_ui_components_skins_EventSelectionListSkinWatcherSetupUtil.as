package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.EventSelectionListSkin;
   
   public class _net_bigpoint_cityrama_view_citysquare_ui_components_skins_EventSelectionListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_citysquare_ui_components_skins_EventSelectionListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EventSelectionListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_citysquare_ui_components_skins_EventSelectionListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

