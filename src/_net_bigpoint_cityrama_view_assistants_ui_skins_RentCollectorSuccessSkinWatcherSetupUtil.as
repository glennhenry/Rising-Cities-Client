package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorSuccessSkin;
   
   public class _net_bigpoint_cityrama_view_assistants_ui_skins_RentCollectorSuccessSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_assistants_ui_skins_RentCollectorSuccessSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RentCollectorSuccessSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_assistants_ui_skins_RentCollectorSuccessSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("ppAmount",{"propertyChange":true},[param4[4],param4[5],param4[6],param4[7]],param2);
         param5[4] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[4],param4[6]],null);
         param5[5] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[5],param4[7]],null);
         param5[0] = new PropertyWatcher("vcAmount",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[1] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[0],param4[2]],null);
         param5[2] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[1],param4[3]],null);
         param5[6] = new PropertyWatcher("epAmount",{"propertyChange":true},[param4[8],param4[9],param4[10],param4[11]],param2);
         param5[7] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[8],param4[10]],null);
         param5[8] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[9],param4[11]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[3].addChild(param5[5]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[6].addChild(param5[8]);
      }
   }
}

