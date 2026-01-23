package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.FlashUpgradePromotionMiniLayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_FlashUpgradePromotionMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_FlashUpgradePromotionMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FlashUpgradePromotionMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_FlashUpgradePromotionMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

