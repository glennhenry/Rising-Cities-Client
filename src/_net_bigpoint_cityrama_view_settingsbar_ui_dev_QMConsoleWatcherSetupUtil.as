package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.settingsbar.ui.dev.QMConsole;
   
   public class _net_bigpoint_cityrama_view_settingsbar_ui_dev_QMConsoleWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_settingsbar_ui_dev_QMConsoleWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         QMConsole.watcherSetupUtil = new _net_bigpoint_cityrama_view_settingsbar_ui_dev_QMConsoleWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("inventorySnapshot",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0]],null);
         param5[6] = new PropertyWatcher("showwheel",{"propertyChange":true},[param4[5],param4[6]],param2);
         param5[7] = new PropertyWatcher("selected",{"propertyChange":true},[param4[5],param4[6]],null);
         param5[4] = new PropertyWatcher("showFeatrueDebug",{"propertyChange":true},[param4[3],param4[4]],param2);
         param5[5] = new PropertyWatcher("selected",{"propertyChange":true},[param4[3],param4[4]],null);
         param5[8] = new PropertyWatcher("wheelspins",{"propertyChange":true},[param4[7],param4[8],param4[9]],param2);
         param5[9] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[7],param4[8],param4[9]],null);
         param5[10] = new PropertyWatcher("length",null,[param4[7],param4[8],param4[9]],null);
         param5[2] = new PropertyWatcher("showmacros",{"propertyChange":true},[param4[1],param4[2]],param2);
         param5[3] = new PropertyWatcher("selected",{"propertyChange":true},[param4[1],param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[9].addChild(param5[10]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

