package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.PlayfieldItemUiInfolayerContent;
   
   public class _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_PlayfieldItemUiInfolayerContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_PlayfieldItemUiInfolayerContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PlayfieldItemUiInfolayerContent.watcherSetupUtil = new _net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_PlayfieldItemUiInfolayerContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("policebadge",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[2]],null);
         param5[5] = new PropertyWatcher("hospitalbadge",{"propertyChange":true},[param4[3]],param2);
         param5[6] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[3]],null);
         param5[1] = new PropertyWatcher("firebadge",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[1]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
      }
   }
}

