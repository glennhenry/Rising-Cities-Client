package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   
   public class _net_bigpoint_cityrama_view_common_skins_DynamicPlusButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_skins_DynamicPlusButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DynamicPlusButtonSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_skins_DynamicPlusButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("iconLibName",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("iconImageName",{"propertyChange":true},[param4[1]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
      }
   }
}

