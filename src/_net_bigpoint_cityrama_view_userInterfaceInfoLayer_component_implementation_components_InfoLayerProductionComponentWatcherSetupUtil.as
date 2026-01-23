package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   
   public class _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerProductionComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerProductionComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InfoLayerProductionComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerProductionComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

