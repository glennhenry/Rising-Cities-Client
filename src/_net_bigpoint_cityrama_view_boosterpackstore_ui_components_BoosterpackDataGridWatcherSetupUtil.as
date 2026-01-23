package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackDataGrid;
   
   public class _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackDataGridWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackDataGridWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BoosterpackDataGrid.watcherSetupUtil = new _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackDataGridWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

