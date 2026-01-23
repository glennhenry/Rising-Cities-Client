package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.optionsmenu.ui.skins.VerticalBgScrollListSkin;
   
   public class _net_bigpoint_cityrama_view_optionsmenu_ui_skins_VerticalBgScrollListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_optionsmenu_ui_skins_VerticalBgScrollListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         VerticalBgScrollListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_optionsmenu_ui_skins_VerticalBgScrollListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("mainGroup",{"propertyChange":true},[param4[1]],param2);
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("contentHeight",{"propertyChange":true},[param4[0]],null);
         param5[2].updateParent(param1);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

