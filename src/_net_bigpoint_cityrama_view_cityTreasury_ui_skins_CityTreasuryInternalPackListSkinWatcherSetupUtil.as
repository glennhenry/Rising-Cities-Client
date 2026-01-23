package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryInternalPackListSkin;
   
   public class _net_bigpoint_cityrama_view_cityTreasury_ui_skins_CityTreasuryInternalPackListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_cityTreasury_ui_skins_CityTreasuryInternalPackListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CityTreasuryInternalPackListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_cityTreasury_ui_skins_CityTreasuryInternalPackListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

