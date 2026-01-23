package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.skins.StepMarkerBarSkin;
   
   public class _net_bigpoint_cityrama_view_common_skins_StepMarkerBarSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_skins_StepMarkerBarSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StepMarkerBarSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_skins_StepMarkerBarSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

