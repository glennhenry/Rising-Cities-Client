package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.DropDownAmountListItemRenderer;
   
   public class _net_bigpoint_cityrama_view_residentialBook_ui_components_DropDownAmountListItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_residentialBook_ui_components_DropDownAmountListItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DropDownAmountListItemRenderer.watcherSetupUtil = new _net_bigpoint_cityrama_view_residentialBook_ui_components_DropDownAmountListItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

