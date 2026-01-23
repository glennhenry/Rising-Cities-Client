package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.hud.ui.components.EnergyHappinessComponent;
   
   public class _net_bigpoint_cityrama_view_hud_ui_components_EnergyHappinessComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_hud_ui_components_EnergyHappinessComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EnergyHappinessComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_hud_ui_components_EnergyHappinessComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("energyBar",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("toolTip",{"toolTipChanged":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("happinessBar",{"propertyChange":true},[param4[3]],param2);
         param5[5] = new PropertyWatcher("toolTip",{"toolTipChanged":true},[param4[3]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}

