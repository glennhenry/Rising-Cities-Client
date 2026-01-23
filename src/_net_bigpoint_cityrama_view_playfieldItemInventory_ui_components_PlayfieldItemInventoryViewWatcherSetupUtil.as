package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryView;
   
   public class _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PlayfieldItemInventoryViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PlayfieldItemInventoryViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PlayfieldItemInventoryView.watcherSetupUtil = new _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PlayfieldItemInventoryViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

