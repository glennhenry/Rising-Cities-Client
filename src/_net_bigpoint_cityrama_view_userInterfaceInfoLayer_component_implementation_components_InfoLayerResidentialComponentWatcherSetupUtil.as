package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   
   public class _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerResidentialComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerResidentialComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InfoLayerResidentialComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerResidentialComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

