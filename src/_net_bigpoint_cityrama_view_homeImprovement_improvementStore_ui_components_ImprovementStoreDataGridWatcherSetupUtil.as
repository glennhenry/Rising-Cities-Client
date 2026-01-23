package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreDataGrid;
   
   public class _net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreDataGridWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreDataGridWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovementStoreDataGrid.watcherSetupUtil = new _net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreDataGridWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

