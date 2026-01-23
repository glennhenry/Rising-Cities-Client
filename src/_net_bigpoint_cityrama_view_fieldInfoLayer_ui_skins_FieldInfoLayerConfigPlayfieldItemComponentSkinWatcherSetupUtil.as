package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins.FieldInfoLayerConfigPlayfieldItemComponentSkin;
   
   public class _net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoLayerConfigPlayfieldItemComponentSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoLayerConfigPlayfieldItemComponentSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FieldInfoLayerConfigPlayfieldItemComponentSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoLayerConfigPlayfieldItemComponentSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("productionComponent",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[3] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[0]],null);
         param5[7] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[1]],null);
         param5[4] = new PropertyWatcher("shopComponent",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[5] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[0]],null);
         param5[8] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[1]],null);
         param5[9] = new PropertyWatcher("moodEnergyComponent",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[10] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[2]],null);
         param5[11] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[3]],null);
         param5[0] = new PropertyWatcher("residentialComponent",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[0]],null);
         param5[6] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[7]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[4].addChild(param5[8]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
         param5[9].addChild(param5[11]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[6]);
      }
   }
}

