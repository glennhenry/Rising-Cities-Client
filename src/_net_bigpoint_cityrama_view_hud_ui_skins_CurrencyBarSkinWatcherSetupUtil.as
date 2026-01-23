package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.hud.ui.skins.CurrencyBarSkin;
   
   public class _net_bigpoint_cityrama_view_hud_ui_skins_CurrencyBarSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_hud_ui_skins_CurrencyBarSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CurrencyBarSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_hud_ui_skins_CurrencyBarSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

