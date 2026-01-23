package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.ImprovementInventoryView;
   
   public class _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_ImprovementInventoryViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_ImprovementInventoryViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovementInventoryView.watcherSetupUtil = new _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_ImprovementInventoryViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

