package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.ImprovementUiInfolayerContent;
   
   public class _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_ImprovementUiInfolayerContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_ImprovementUiInfolayerContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovementUiInfolayerContent.watcherSetupUtil = new _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_ImprovementUiInfolayerContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("maxWidth",{"explicitMaxWidthChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

