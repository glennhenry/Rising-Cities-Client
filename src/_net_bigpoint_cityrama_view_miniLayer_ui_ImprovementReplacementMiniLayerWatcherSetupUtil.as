package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementReplacementMiniLayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_ImprovementReplacementMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_ImprovementReplacementMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ImprovementReplacementMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_ImprovementReplacementMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

