package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins.ImprovementInventorySkinClass;
   
   public class _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_ImprovementInventorySkinClassWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_ImprovementInventorySkinClassWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovementInventorySkinClass.watcherSetupUtil = new _net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_ImprovementInventorySkinClassWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

