package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyRehireProfessionalMiniLayer;
   
   public class _net_bigpoint_cityrama_view_miniLayer_ui_EmergencyRehireProfessionalMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_miniLayer_ui_EmergencyRehireProfessionalMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EmergencyRehireProfessionalMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_miniLayer_ui_EmergencyRehireProfessionalMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

