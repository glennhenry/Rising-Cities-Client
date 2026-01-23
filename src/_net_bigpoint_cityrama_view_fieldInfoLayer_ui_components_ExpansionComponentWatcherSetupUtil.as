package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ExpansionComponent;
   
   public class _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_ExpansionComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_ExpansionComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ExpansionComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_ExpansionComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("saleGroup",{"propertyChange":true},[param4[3],param4[4]],param2);
         param5[1] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[3]],null);
         param5[2] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[4]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
      }
   }
}

