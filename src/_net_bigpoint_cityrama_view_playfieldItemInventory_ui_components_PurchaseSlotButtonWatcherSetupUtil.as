package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PurchaseSlotButton;
   
   public class _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PurchaseSlotButtonWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PurchaseSlotButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PurchaseSlotButton.watcherSetupUtil = new _net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PurchaseSlotButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("enabled",{"enabledChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

