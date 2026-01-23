package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.MainMenuComponent;
   
   public class _net_bigpoint_cityrama_view_mainMenu_ui_components_MainMenuComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_mainMenu_ui_components_MainMenuComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MainMenuComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_mainMenu_ui_components_MainMenuComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("cursor",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[2] = new PropertyWatcher("options",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("selected",{"propertyChange":true},[param4[2],param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

