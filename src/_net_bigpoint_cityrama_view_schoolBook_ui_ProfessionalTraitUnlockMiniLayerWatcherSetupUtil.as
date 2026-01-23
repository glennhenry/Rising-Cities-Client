package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.schoolBook.ui.ProfessionalTraitUnlockMiniLayer;
   
   public class _net_bigpoint_cityrama_view_schoolBook_ui_ProfessionalTraitUnlockMiniLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_schoolBook_ui_ProfessionalTraitUnlockMiniLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProfessionalTraitUnlockMiniLayer.watcherSetupUtil = new _net_bigpoint_cityrama_view_schoolBook_ui_ProfessionalTraitUnlockMiniLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

