package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StorageCategoryItemRenderer;
   
   public class _net_bigpoint_cityrama_view_storageBook_ui_components_StorageCategoryItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_storageBook_ui_components_StorageCategoryItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StorageCategoryItemRenderer.watcherSetupUtil = new _net_bigpoint_cityrama_view_storageBook_ui_components_StorageCategoryItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("offsets",{"propertyChange":true},[param4[0],param4[1],param4[2]],param2);
         param5[0].updateParent(param1);
      }
   }
}

