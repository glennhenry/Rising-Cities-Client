package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.NextLevelMiniLayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_NextLevelMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_NextLevelMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NextLevelMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_NextLevelMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

