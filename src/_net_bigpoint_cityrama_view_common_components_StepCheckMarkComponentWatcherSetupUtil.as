package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.StepCheckMarkComponent;
   
   public class _net_bigpoint_cityrama_view_common_components_StepCheckMarkComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_components_StepCheckMarkComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StepCheckMarkComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_components_StepCheckMarkComponentWatcherSetupUtil();
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
            return ["iconName"];
         },null,[bindings[1]],propertyGetter,true);
         watchers[0] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconLib"];
         },null,[bindings[0]],propertyGetter,true);
         watchers[1].updateParent(target);
         watchers[0].updateParent(target);
      }
   }
}

