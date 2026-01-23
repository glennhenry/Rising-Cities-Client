package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.ProgressThresholdIndicator;
   
   public class _net_bigpoint_cityrama_view_emergencyBook_ui_components_ProgressThresholdIndicatorWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_emergencyBook_ui_components_ProgressThresholdIndicatorWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProgressThresholdIndicator.watcherSetupUtil = new _net_bigpoint_cityrama_view_emergencyBook_ui_components_ProgressThresholdIndicatorWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("mockProgressBarMaskGroup",{"propertyChange":true},[param4[1],param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1],param4[2]],null);
         param5[0] = new PropertyWatcher("bgGroup",{"propertyChange":true},[param4[0],param4[4]],param2);
         param5[1] = new PropertyWatcher("width",{"widthChanged":true},[param4[0],param4[4]],null);
         param5[4] = new PropertyWatcher("realProgressBarMaskGroup",{"propertyChange":true},[param4[5],param4[6],param4[7]],param2);
         param5[5] = new PropertyWatcher("width",{"widthChanged":true},[param4[5],param4[6]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}

