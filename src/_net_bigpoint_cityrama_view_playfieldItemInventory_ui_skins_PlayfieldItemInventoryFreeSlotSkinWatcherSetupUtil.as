package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryFreeSlotSkin;
   
   public class _net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryFreeSlotSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryFreeSlotSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PlayfieldItemInventoryFreeSlotSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryFreeSlotSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("improvementGroup",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

