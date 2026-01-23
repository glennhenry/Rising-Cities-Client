package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
   
   public class _net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectNeedsSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectNeedsSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ArchitectNeedsSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectNeedsSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[1] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tooltipRight"];
         },null,[bindings[1]],propertyGetter,true);
         watchers[0] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tooltipLeft"];
         },null,[bindings[0]],propertyGetter,true);
         watchers[1].updateParent(target);
         watchers[0].updateParent(target);
      }
   }
}

