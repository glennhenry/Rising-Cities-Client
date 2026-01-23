package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.skin.AbstractUIInfolayerComponentSkin;
   
   public class _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_skin_AbstractUIInfolayerComponentSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_skin_AbstractUIInfolayerComponentSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AbstractUIInfolayerComponentSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_skin_AbstractUIInfolayerComponentSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("topInformation",{"propertyChange":true},[param4[17]],param2);
         param5[5] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[17]],null);
         param5[6] = new PropertyWatcher("header",{"propertyChange":true},[param4[18]],param2);
         param5[7] = new PropertyWatcher("y",{"yChanged":true},[param4[18]],null);
         param5[8] = new PropertyWatcher("height",{"heightChanged":true},[param4[18]],null);
         param5[9] = new PropertyWatcher("headerIcon",{"propertyChange":true},[param4[18]],param2);
         param5[10] = new PropertyWatcher("height",{"heightChanged":true},[param4[18]],null);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[6].addChild(param5[8]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
      }
   }
}

