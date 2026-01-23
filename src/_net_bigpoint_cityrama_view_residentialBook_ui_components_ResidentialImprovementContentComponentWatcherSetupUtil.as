package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialImprovementContentComponent;
   
   public class _net_bigpoint_cityrama_view_residentialBook_ui_components_ResidentialImprovementContentComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_residentialBook_ui_components_ResidentialImprovementContentComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ResidentialImprovementContentComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_residentialBook_ui_components_ResidentialImprovementContentComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

