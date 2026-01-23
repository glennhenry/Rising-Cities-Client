package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.DropDownAmountListSkin;
   
   public class _net_bigpoint_cityrama_view_residentialBook_ui_skins_DropDownAmountListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_residentialBook_ui_skins_DropDownAmountListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DropDownAmountListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_residentialBook_ui_skins_DropDownAmountListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

