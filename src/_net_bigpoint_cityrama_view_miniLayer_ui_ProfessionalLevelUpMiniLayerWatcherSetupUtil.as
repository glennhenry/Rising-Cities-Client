package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalLevelUpMiniLayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_ProfessionalLevelUpMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_ProfessionalLevelUpMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProfessionalLevelUpMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_ProfessionalLevelUpMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

