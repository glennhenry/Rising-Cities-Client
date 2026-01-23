package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionPopup;
   
   public class _net_bigpoint_cityrama_view_productionBook_ui_components_ProductionPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_productionBook_ui_components_ProductionPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProductionPopup.watcherSetupUtil = new _net_bigpoint_cityrama_view_productionBook_ui_components_ProductionPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

