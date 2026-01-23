package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoLayerMasteryComponent;
   
   public class _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_FieldInfoLayerMasteryComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_FieldInfoLayerMasteryComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FieldInfoLayerMasteryComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_FieldInfoLayerMasteryComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("starGroup",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("width",{"widthChanged":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

