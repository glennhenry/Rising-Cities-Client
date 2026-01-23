package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.ProfessionalDetailTabComponent;
   
   public class _net_bigpoint_cityrama_view_departmentBook_ui_components_ProfessionalDetailTabComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_departmentBook_ui_components_ProfessionalDetailTabComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProfessionalDetailTabComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_departmentBook_ui_components_ProfessionalDetailTabComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

