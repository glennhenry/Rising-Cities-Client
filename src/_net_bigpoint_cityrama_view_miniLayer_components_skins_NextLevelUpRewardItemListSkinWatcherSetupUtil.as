package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.NextLevelUpRewardItemListSkin;
   
   public class _net_bigpoint_cityrama_view_miniLayer_components_skins_NextLevelUpRewardItemListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_components_skins_NextLevelUpRewardItemListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NextLevelUpRewardItemListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_components_skins_NextLevelUpRewardItemListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("dataGroup",{"propertyChange":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

