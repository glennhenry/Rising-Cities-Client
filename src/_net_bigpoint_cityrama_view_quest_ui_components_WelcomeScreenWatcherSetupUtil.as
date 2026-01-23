package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.quest.ui.components.WelcomeScreen;
   
   public class _net_bigpoint_cityrama_view_quest_ui_components_WelcomeScreenWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_quest_ui_components_WelcomeScreenWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WelcomeScreen.watcherSetupUtil = new _net_bigpoint_cityrama_view_quest_ui_components_WelcomeScreenWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

