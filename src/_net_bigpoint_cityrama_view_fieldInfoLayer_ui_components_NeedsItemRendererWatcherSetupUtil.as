package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.NeedsItemRenderer;
   
   public class _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_NeedsItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_NeedsItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NeedsItemRenderer.watcherSetupUtil = new _net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_NeedsItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("showSeparator",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[0].updateParent(param1);
      }
   }
}

