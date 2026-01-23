package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.citysquare.ui.components.ChallengeBarComponent;
   
   public class _net_bigpoint_cityrama_view_citysquare_ui_components_ChallengeBarComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_citysquare_ui_components_ChallengeBarComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ChallengeBarComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_citysquare_ui_components_ChallengeBarComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

