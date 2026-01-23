package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackSublevelAnimationLayer;
   
   public class _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackSublevelAnimationLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackSublevelAnimationLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BoosterpackSublevelAnimationLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackSublevelAnimationLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("animationLayerStars",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("x",{"xChanged":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("y",{"yChanged":true},[param4[3]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[4]);
      }
   }
}

