package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackAnimationLayer;
   
   public class _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackAnimationLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackAnimationLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BoosterpackAnimationLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackAnimationLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("boosterpackImage",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("x",{"xChanged":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("y",{"yChanged":true},[param4[1]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
      }
   }
}

