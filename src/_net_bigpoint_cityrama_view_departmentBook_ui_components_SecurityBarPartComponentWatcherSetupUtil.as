package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityBarPartComponent;
   
   public class _net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityBarPartComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityBarPartComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SecurityBarPartComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityBarPartComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("staticPreviewBarMask",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("width",{"widthChanged":true},[param4[0],param4[1]],null);
         param5[2] = new PropertyWatcher("staticBarMask",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[2],param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

