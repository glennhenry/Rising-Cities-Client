package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.ConfirmationInfoLayer;
   
   public class _net_bigpoint_cityrama_view_common_components_ConfirmationInfoLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_components_ConfirmationInfoLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ConfirmationInfoLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_components_ConfirmationInfoLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("header",{"propertyChange":true},[param4[9]],param2);
         param5[4] = new PropertyWatcher("width",{"widthChanged":true},[param4[9]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

