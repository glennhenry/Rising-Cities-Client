package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareDepositMinilayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_CitysquareDepositMinilayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_CitysquareDepositMinilayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CitysquareDepositMinilayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_CitysquareDepositMinilayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

