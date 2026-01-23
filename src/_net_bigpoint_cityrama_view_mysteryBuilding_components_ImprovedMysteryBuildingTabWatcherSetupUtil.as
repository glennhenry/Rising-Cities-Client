package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.mysteryBuilding.components.ImprovedMysteryBuildingTab;
   
   public class _net_bigpoint_cityrama_view_mysteryBuilding_components_ImprovedMysteryBuildingTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_mysteryBuilding_components_ImprovedMysteryBuildingTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovedMysteryBuildingTab.watcherSetupUtil = new _net_bigpoint_cityrama_view_mysteryBuilding_components_ImprovedMysteryBuildingTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

