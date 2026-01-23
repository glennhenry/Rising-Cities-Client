package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.rewardLayer.ui.RewardLayerPopup;
   
   public class _net_bigpoint_cityrama_view_rewardLayer_ui_RewardLayerPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_rewardLayer_ui_RewardLayerPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RewardLayerPopup.watcherSetupUtil = new _net_bigpoint_cityrama_view_rewardLayer_ui_RewardLayerPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

