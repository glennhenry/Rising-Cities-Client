package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorOffersItemRenderer;
   
   public class _net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorOffersItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorOffersItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RentCollectorOffersItemRenderer.watcherSetupUtil = new _net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorOffersItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

