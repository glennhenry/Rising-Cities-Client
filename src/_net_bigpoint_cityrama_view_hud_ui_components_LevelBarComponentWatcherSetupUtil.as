package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.hud.ui.components.LevelBarComponent;
   
   public class _net_bigpoint_cityrama_view_hud_ui_components_LevelBarComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_hud_ui_components_LevelBarComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LevelBarComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_hud_ui_components_LevelBarComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

